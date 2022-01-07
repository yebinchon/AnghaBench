; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfloc.c_MainWindowExStyle.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfloc.c_MainWindowExStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_EX_LAYOUTRTL = common dso_local global i64 0, align 8
@bMirrorContent = common dso_local global i64 0, align 8
@WS_EX_NOINHERITLAYOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MainWindowExStyle() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = call i64 (...) @DefaultLayoutRTL()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i64, i64* @WS_EX_LAYOUTRTL, align 8
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* @bMirrorContent, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load i64, i64* @WS_EX_NOINHERITLAYOUT, align 8
  %10 = load i64, i64* %1, align 8
  %11 = or i64 %10, %9
  store i64 %11, i64* %1, align 8
  br label %12

12:                                               ; preds = %8, %4
  br label %21

13:                                               ; preds = %0
  %14 = load i64, i64* @bMirrorContent, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i64, i64* @WS_EX_LAYOUTRTL, align 8
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i64 [ %17, %16 ], [ 0, %18 ]
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare dso_local i64 @DefaultLayoutRTL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
