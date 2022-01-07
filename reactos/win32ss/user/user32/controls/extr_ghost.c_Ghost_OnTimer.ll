; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnTimer.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GHOST_TIMER_ID = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GHOST_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @Ghost_OnTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ghost_OnTimer(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_3__* @Ghost_GetData(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @GHOST_TIMER_ID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %39

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @KillTimer(i32 %17, i64 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @IsWindow(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @IsHungAppWindow(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %16
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @Ghost_Unenchant(i32 %31, i32 %32)
  br label %39

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load i64, i64* @GHOST_TIMER_ID, align 8
  %37 = load i32, i32* @GHOST_INTERVAL, align 4
  %38 = call i32 @SetTimer(i32 %35, i64 %36, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %34, %30, %15
  ret void
}

declare dso_local %struct.TYPE_3__* @Ghost_GetData(i32) #1

declare dso_local i32 @KillTimer(i32, i64) #1

declare dso_local i32 @IsWindow(i32) #1

declare dso_local i32 @IsHungAppWindow(i32) #1

declare dso_local i32 @Ghost_Unenchant(i32, i32) #1

declare dso_local i32 @SetTimer(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
