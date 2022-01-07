; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnMove.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOOWNERZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOSENDCHANGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @Ghost_OnMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ghost_OnMove(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @Ghost_GetTarget(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GetWindowRect(i32 %11, %struct.TYPE_3__* %7)
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SWP_NOSIZE, align 4
  %19 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SWP_NOACTIVATE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SWP_NOSENDCHANGING, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @SetWindowPos(i32 %13, i32* null, i32 %15, i32 %17, i32 0, i32 0, i32 %24)
  ret void
}

declare dso_local i32 @Ghost_GetTarget(i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
