; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_split_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_split_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, %struct.TYPE_2__, %struct.view* }
%struct.TYPE_2__ = type { i64, i64 }

@stdscr = common dso_local global i32 0, align 4
@opt_vertical_split = common dso_local global i32 0, align 4
@display = common dso_local global %struct.view** null, align 8
@opt_focus_child = common dso_local global i64 0, align 8
@current_view = common dso_local global i32 0, align 4
@VIEW_FLEX_WIDTH = common dso_local global i32 0, align 4
@OPEN_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @split_view(%struct.view* %0, %struct.view* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.view* %1, %struct.view** %4, align 8
  %10 = call i32 (...) @displayed_views()
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @stdscr, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @getmaxyx(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @opt_vertical_split, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vertical_split_is_enabled(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.view*, %struct.view** %4, align 8
  %20 = load %struct.view**, %struct.view*** @display, align 8
  %21 = getelementptr inbounds %struct.view*, %struct.view** %20, i64 1
  store %struct.view* %19, %struct.view** %21, align 8
  %22 = load i64, i64* @opt_focus_child, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* @current_view, align 4
  %26 = load %struct.view*, %struct.view** %3, align 8
  %27 = load %struct.view*, %struct.view** %4, align 8
  %28 = getelementptr inbounds %struct.view, %struct.view* %27, i32 0, i32 2
  store %struct.view* %26, %struct.view** %28, align 8
  %29 = call i32 (...) @resize_display()
  %30 = load %struct.view*, %struct.view** %3, align 8
  %31 = getelementptr inbounds %struct.view, %struct.view* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.view*, %struct.view** %3, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %33, %37
  %39 = load %struct.view*, %struct.view** %3, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %2
  %44 = load %struct.view*, %struct.view** %3, align 8
  %45 = getelementptr inbounds %struct.view, %struct.view* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.view*, %struct.view** %3, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %47, %51
  %53 = load %struct.view*, %struct.view** %3, align 8
  %54 = getelementptr inbounds %struct.view, %struct.view* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load %struct.view*, %struct.view** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @do_scroll_view(%struct.view* %59, i32 %60)
  br label %62

62:                                               ; preds = %43, %2
  %63 = load %struct.view*, %struct.view** %4, align 8
  %64 = load %struct.view*, %struct.view** %3, align 8
  %65 = icmp ne %struct.view* %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.view*, %struct.view** %3, align 8
  %68 = call i64 @view_is_displayed(%struct.view* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.view*, %struct.view** %3, align 8
  %72 = call i32 @update_view_title(%struct.view* %71)
  br label %73

73:                                               ; preds = %70, %66, %62
  %74 = load %struct.view*, %struct.view** %3, align 8
  %75 = load i32, i32* @VIEW_FLEX_WIDTH, align 4
  %76 = call i64 @view_has_flags(%struct.view* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.view*, %struct.view** %3, align 8
  %86 = load i32, i32* @OPEN_RELOAD, align 4
  %87 = call i32 @load_view(%struct.view* %85, i32* null, i32 %86)
  br label %88

88:                                               ; preds = %84, %81, %78, %73
  ret void
}

declare dso_local i32 @displayed_views(...) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @vertical_split_is_enabled(i32, i32, i32) #1

declare dso_local i32 @resize_display(...) #1

declare dso_local i32 @do_scroll_view(%struct.view*, i32) #1

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @update_view_title(%struct.view*) #1

declare dso_local i64 @view_has_flags(%struct.view*, i32) #1

declare dso_local i32 @load_view(%struct.view*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
