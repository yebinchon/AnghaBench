; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnClose.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GHOST_TIMER_ID = common dso_local global i32 0, align 4
@User32Instance = common dso_local global i32 0, align 4
@IDS_ASK_TERMINATE = common dso_local global i32 0, align 4
@IDS_HUNG_UP_TITLE = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@IDYES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GHOST_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Ghost_OnClose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ghost_OnClose(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [128 x i32], align 16
  %5 = alloca [128 x i32], align 16
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GHOST_TIMER_ID, align 4
  %8 = call i32 @KillTimer(i32 %6, i32 %7)
  %9 = load i32, i32* @User32Instance, align 4
  %10 = load i32, i32* @IDS_ASK_TERMINATE, align 4
  %11 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %13 = call i32 @ARRAYSIZE(i32* %12)
  %14 = call i32 @LoadStringW(i32 %9, i32 %10, i32* %11, i32 %13)
  %15 = load i32, i32* @User32Instance, align 4
  %16 = load i32, i32* @IDS_HUNG_UP_TITLE, align 4
  %17 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %18 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %19 = call i32 @ARRAYSIZE(i32* %18)
  %20 = call i32 @LoadStringW(i32 %15, i32 %16, i32* %17, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* @MB_ICONINFORMATION, align 4
  %25 = load i32, i32* @MB_YESNO, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @MessageBoxW(i32 %21, i32* %22, i32* %23, i32 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @IDYES, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @Ghost_Unenchant(i32 %32, i32 %33)
  br label %40

35:                                               ; preds = %1
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @GHOST_TIMER_ID, align 4
  %38 = load i32, i32* @GHOST_INTERVAL, align 4
  %39 = call i32 @SetTimer(i32 %36, i32 %37, i32 %38, i32* null)
  br label %40

40:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @KillTimer(i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i64 @MessageBoxW(i32, i32*, i32*, i32) #1

declare dso_local i32 @Ghost_Unenchant(i32, i32) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
