; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wffile.c_wfProgressYield.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wffile.c_wfProgressYield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_REMOVE = common dso_local global i32 0, align 4
@hDlgProgress = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@hAccel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfProgressYield() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %30, %0
  %4 = load i32, i32* @PM_REMOVE, align 4
  %5 = call i64 @PeekMessage(i32* %2, i32* null, i32 0, i32 0, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = load i32, i32* @hDlgProgress, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @hDlgProgress, align 4
  %12 = call i32 @IsDialogMessage(i32 %11, i32* %2)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10, %7
  %15 = load i32, i32* @hwndMDIClient, align 4
  %16 = call i32 @TranslateMDISysAccel(i32 %15, i32* %2)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @hwndFrame, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @hwndFrame, align 4
  %23 = load i32, i32* @hAccel, align 4
  %24 = call i32 @TranslateAccelerator(i32 %22, i32 %23, i32* %2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %18
  %27 = call i32 @TranslateMessage(i32* %2)
  %28 = call i32 @DispatchMessage(i32* %2)
  br label %29

29:                                               ; preds = %26, %21, %14
  br label %30

30:                                               ; preds = %29, %10
  br label %3

31:                                               ; preds = %3
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i64 @PeekMessage(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @IsDialogMessage(i32, i32*) #1

declare dso_local i32 @TranslateMDISysAccel(i32, i32*) #1

declare dso_local i32 @TranslateAccelerator(i32, i32, i32*) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
