; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_....consolevideo.c_VgaGetDoubleVisionState.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_....consolevideo.c_VgaGetDoubleVisionState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GraphicsConsoleBuffer = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@DoubleWidth = common dso_local global i32 0, align 4
@DoubleHeight = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VgaGetDoubleVisionState(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** @GraphicsConsoleBuffer, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  br label %24

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @DoubleWidth, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @DoubleHeight, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
