; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph_Priority.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph_Priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREAD_PRIORITY_BELOW_NORMAL = common dso_local global i32 0, align 4
@THREAD_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@THREAD_PRIORITY_ABOVE_NORMAL = common dso_local global i32 0, align 4
@THREAD_PRIORITY_LOWEST = common dso_local global i32 0, align 4
@THREAD_PRIORITY_HIGHEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbwingraph_Priority(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %11 [
    i32 -1, label %5
    i32 0, label %7
    i32 1, label %9
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @THREAD_PRIORITY_BELOW_NORMAL, align 4
  store i32 %6, i32* %3, align 4
  br label %19

7:                                                ; preds = %1
  %8 = load i32, i32* @THREAD_PRIORITY_NORMAL, align 4
  store i32 %8, i32* %3, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @THREAD_PRIORITY_ABOVE_NORMAL, align 4
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @THREAD_PRIORITY_LOWEST, align 4
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @THREAD_PRIORITY_HIGHEST, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %18, %9, %7, %5
  %20 = call i32 (...) @GetCurrentThread()
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SetThreadPriority(i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @SetThreadPriority(i32, i32) #1

declare dso_local i32 @GetCurrentThread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
