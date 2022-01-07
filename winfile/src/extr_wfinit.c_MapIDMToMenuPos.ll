; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_MapIDMToMenuPos.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_MapIDMToMenuPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndMDIClient = common dso_local global i32 0, align 4
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_MAXIMIZE = common dso_local global i32 0, align 4
@IDM_EXTENSIONS = common dso_local global i32 0, align 4
@bSecMenuDeleted = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MapIDMToMenuPos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %3, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = sdiv i32 %10, 100
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %7
  %14 = load i32, i32* @hwndMDIClient, align 4
  %15 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %16 = call i64 @SendMessage(i32 %14, i32 %15, i32 0, i64 0)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @GWL_STYLE, align 4
  %22 = call i32 @GetWindowLongPtr(i64 %20, i32 %21)
  %23 = load i32, i32* @WS_MAXIMIZE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %19, %13
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IDM_EXTENSIONS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* @bSecMenuDeleted, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @SendMessage(i32, i32, i32, i64) #1

declare dso_local i32 @GetWindowLongPtr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
