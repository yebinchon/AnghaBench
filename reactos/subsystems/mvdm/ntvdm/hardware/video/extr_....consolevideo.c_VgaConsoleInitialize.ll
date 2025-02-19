; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_....consolevideo.c_VgaConsoleInitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_....consolevideo.c_VgaConsoleInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TextConsoleBuffer = common dso_local global i32* null, align 8
@OrgConsoleCursorInfo = common dso_local global i32 0, align 4
@OrgConsoleBufferInfo = common dso_local global i32 0, align 4
@ConsoleInfo = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VgaConsoleInitialize(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @IsConsoleHandle(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  store i32* %10, i32** @TextConsoleBuffer, align 8
  %11 = load i32*, i32** @TextConsoleBuffer, align 8
  %12 = call i32 @GetConsoleCursorInfo(i32* %11, i32* @OrgConsoleCursorInfo)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32*, i32** @TextConsoleBuffer, align 8
  %16 = call i32 @GetConsoleScreenBufferInfo(i32* %15, i32* @OrgConsoleBufferInfo)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %9
  store i32* null, i32** @TextConsoleBuffer, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @OrgConsoleBufferInfo, align 4
  store i32 %21, i32* @ConsoleInfo, align 4
  %22 = load i32*, i32** @TextConsoleBuffer, align 8
  %23 = call i32 @SetActiveScreenBuffer(i32* %22)
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %18, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @IsConsoleHandle(i32*) #1

declare dso_local i32 @GetConsoleCursorInfo(i32*, i32*) #1

declare dso_local i32 @GetConsoleScreenBufferInfo(i32*, i32*) #1

declare dso_local i32 @SetActiveScreenBuffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
