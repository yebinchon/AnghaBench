; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_treectl.c_wfYield.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_treectl.c_wfYield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_REMOVE = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@hAccel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfYield() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* @PM_REMOVE, align 4
  %5 = call i64 @PeekMessage(i32* %2, i32* null, i32 0, i32 0, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load i32, i32* @hwndMDIClient, align 4
  %9 = call i32 @TranslateMDISysAccel(i32 %8, i32* %2)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @hwndFrame, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @hwndFrame, align 4
  %16 = load i32, i32* @hAccel, align 4
  %17 = call i32 @TranslateAccelerator(i32 %15, i32 %16, i32* %2)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %11
  %20 = call i32 @TranslateMessage(i32* %2)
  %21 = call i32 @DispatchMessage(i32* %2)
  br label %22

22:                                               ; preds = %19, %14, %7
  br label %3

23:                                               ; preds = %3
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i64 @PeekMessage(i32*, i32*, i32, i32, i32) #1

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
