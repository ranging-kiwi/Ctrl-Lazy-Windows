#SingleInstance Force
#MaxThreadsPerHotkey 1
^!Esc::ExitApp()

stretchStep := 16
fastStep := 64
stretchInterval := 20

HoldAction(funcName,keyName){
    SetTimer(funcName,stretchInterval)
    KeyWait(keyName)
    SetTimer(funcName,0)
}

^!Up::HoldAction(StretchUp,"Up")
^!Down::HoldAction(StretchDown,"Down")
^!Right::HoldAction(StretchRight,"Right")
^!Left::HoldAction(StretchLeft,"Left")

^!i::HoldAction(MoveUp,"i")
^!k::HoldAction(MoveDown,"k")
^!j::HoldAction(MoveLeft,"j")
^!l::HoldAction(MoveRight,"l")

StretchUp(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    CenterY := Y + H // 2
    H += step
    Y := CenterY - H // 2
    WinMove(X, Y, W, H, "A")
}

StretchDown(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    CenterY := Y + H // 2
    H -= step
    Y := CenterY - H // 2
    WinMove(X, Y, W, H, "A")
}

StretchRight(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    CenterX := X + W // 2
    W += step
    X := CenterX - W // 2
    WinMove(X, Y, W, H, "A")
}

StretchLeft(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    CenterX := X + W // 2
    W -= step
    X := CenterX - W // 2
    WinMove(X, Y, W, H, "A")
}

MoveUp(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    Y -= step
    WinMove(X, Y, W, H, "A")
}

MoveDown(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    Y += step
    WinMove(X, Y, W, H, "A")
}

MoveLeft(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    X -= step
    WinMove(X, Y, W, H, "A")
}

MoveRight(){
    step := GetStep()
    WinGetPos(&X, &Y, &W, &H, "A")
    X += step
    WinMove(X, Y, W, H, "A")
}

GetStep(){
    global stretchStep, fastStep
    return GetKeyState("Shift","P") ? fastStep : stretchStep
}
