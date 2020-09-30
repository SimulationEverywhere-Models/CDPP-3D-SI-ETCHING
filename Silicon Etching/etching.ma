[top]
components : substrate

[substrate]
type : cell
dim : (13, 13, 8)
delay : transport
defaultDelayTime  : 100
border : nowrapped 
neighbors : substrate(-1,-1,1)  substrate(-1,0,1)  substrate(-1,1,1) 
neighbors : substrate(0,-1,1)   substrate(0,0,1)   substrate(0,1,1)
neighbors : substrate(1,-1,1)   substrate(1,0,1)   substrate(1,1,1)
neighbors : substrate(-1,-1,0)  substrate(-1,0,0)  substrate(-1,1,0) 
neighbors : substrate(0,-1,0)   substrate(0,0,0)   substrate(0,1,0)
neighbors : substrate(1,-1,0)   substrate(1,0,0)   substrate(1,1,0)
neighbors : substrate(-1,-1,-1)  substrate(-1,0,-1)  substrate(-1,1,-1) 
neighbors : substrate(0,-1,-1)  substrate(0,0,-1)  substrate(0,1,-1)
neighbors : substrate(1,-1,-1)  substrate(1,0,-1)  substrate(1,1,-1)
initialvalue : 0
initialCellsValue : substrate.val
zone : surface { (4,4,0)..(9,9,0) (4,4,1)..(9,9,1) }
zone : mask { (0,0,0)..(3,12,0) (10,0,0)..(12,12,0) (4,0,0)..(9,4,0) (4,9,0)..(9,12,0) (0,0,1)..(3,12,1) (10,0,1)..(12,12,1) (4,0,1)..(9,4,1) (4,9,1)..(9,12,1) (0,0,1)..(12,0,7) (0,12,1)..(12,12,7) (0,1,1)..(0,11,7) (12,1,1)..(12,11,7) (1,1,7)..(11,11,7) }
zone : etching-rule { (1,1,2)..(11,11,6) }

[etching-rule]
rule : 2 100 { (0,0,0) = 1 and truecount < 5 }
rule : 0 100 { (0,0,0) = 2 and statecount(0) = 24 }
rule : 0 100 { (0,0,0) = 2 and ( statecount(0) = 23 and statecount(2) >= 2 ) }
rule : 1 100 { (0,0,0) = 2 and ( statecount(0) = 23 and statecount(2) = 0 ) }
rule : 1 100 { (0,0,0) = 2 }
rule : 1 100 { (0,0,0) = 1 and truecount = 5 }
rule : 0 100 { t }

[surface]
rule : 0 100 { (0,0,0) = 1 }
rule : 0 100 { t }

[mask]
rule : 1 100 { (0,0,0) = 1 }
rule : 0 100 { t }


