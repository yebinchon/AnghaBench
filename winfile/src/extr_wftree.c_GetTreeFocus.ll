; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wftree.c_GetTreeFocus.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wftree.c_GetTreeFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bDriveBar = common dso_local global i64 0, align 8
@hwndDriveBar = common dso_local global i64 0, align 8
@GWL_LASTFOCUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetTreeFocus(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* @bDriveBar, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call i64 (...) @GetFocus()
  %10 = load i64, i64* @hwndDriveBar, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* @hwndDriveBar, align 8
  store i64 %13, i64* %2, align 8
  br label %33

14:                                               ; preds = %8, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @GWL_LASTFOCUS, align 4
  %17 = call i64 @GetWindowLongPtr(i64 %15, i32 %16)
  store i64 %17, i64* %4, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %27, %14
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @GetParent(i64 %29)
  store i64 %30, i64* %4, align 8
  br label %18

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %31, %12
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @GetFocus(...) #1

declare dso_local i64 @GetWindowLongPtr(i64, i32) #1

declare dso_local i64 @GetParent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
