; ModuleID = '/home/carl/AnghaBench/tig/src/extr_pager.c_pager_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_pager.c_pager_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i64 }

@REQ_ENTER = common dso_local global i32 0, align 4
@LINE_COMMIT = common dso_local global i64 0, align 8
@VIEW_OPEN_DIFF = common dso_local global i32 0, align 4
@OPEN_SPLIT = common dso_local global i32 0, align 4
@display = common dso_local global %struct.view** null, align 8
@current_view = common dso_local global i64 0, align 8
@REQ_SCROLL_LINE_DOWN = common dso_local global i32 0, align 4
@REQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pager_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @REQ_ENTER, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %4, align 4
  br label %48

14:                                               ; preds = %3
  %15 = load %struct.line*, %struct.line** %7, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LINE_COMMIT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.view*, %struct.view** %5, align 8
  %22 = load i32, i32* @VIEW_OPEN_DIFF, align 4
  %23 = call i64 @view_has_flags(%struct.view* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.view*, %struct.view** %5, align 8
  %27 = load i32, i32* @OPEN_SPLIT, align 4
  %28 = call i32 @open_diff_view(%struct.view* %26, i32 %27)
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %20, %14
  %30 = load %struct.view*, %struct.view** %5, align 8
  %31 = load %struct.view**, %struct.view*** @display, align 8
  %32 = load i64, i64* @current_view, align 8
  %33 = getelementptr inbounds %struct.view*, %struct.view** %31, i64 %32
  %34 = load %struct.view*, %struct.view** %33, align 8
  %35 = icmp eq %struct.view* %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.view*, %struct.view** %5, align 8
  %38 = load i32, i32* @REQ_SCROLL_LINE_DOWN, align 4
  %39 = call i32 @scroll_view(%struct.view* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.view*, %struct.view** %5, align 8
  %45 = call i32 @update_view_title(%struct.view* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @REQ_NONE, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @view_has_flags(%struct.view*, i32) #1

declare dso_local i32 @open_diff_view(%struct.view*, i32) #1

declare dso_local i32 @scroll_view(%struct.view*, i32) #1

declare dso_local i32 @update_view_title(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
