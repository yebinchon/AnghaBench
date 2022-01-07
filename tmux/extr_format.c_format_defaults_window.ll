; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_window.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.window* }
%struct.window = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"window_activity\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"window_id\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"@%u\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"window_name\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"window_width\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"window_height\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"window_layout\00", align 1
@format_cb_window_layout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"window_visible_layout\00", align 1
@format_cb_window_visible_layout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"window_panes\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"window_zoomed_flag\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@WINDOW_ZOOMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_defaults_window(%struct.format_tree* %0, %struct.window* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.window*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.window* %1, %struct.window** %4, align 8
  %5 = load %struct.window*, %struct.window** %4, align 8
  %6 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %7 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %6, i32 0, i32 0
  store %struct.window* %5, %struct.window** %7, align 8
  %8 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %9 = load %struct.window*, %struct.window** %4, align 8
  %10 = getelementptr inbounds %struct.window, %struct.window* %9, i32 0, i32 5
  %11 = call i32 @format_add_tv(%struct.format_tree* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %13 = load %struct.window*, %struct.window** %4, align 8
  %14 = getelementptr inbounds %struct.window, %struct.window* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @format_add(%struct.format_tree* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %18 = load %struct.window*, %struct.window** %4, align 8
  %19 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @format_add(%struct.format_tree* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %23 = load %struct.window*, %struct.window** %4, align 8
  %24 = getelementptr inbounds %struct.window, %struct.window* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @format_add(%struct.format_tree* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %28 = load %struct.window*, %struct.window** %4, align 8
  %29 = getelementptr inbounds %struct.window, %struct.window* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @format_add(%struct.format_tree* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %33 = load i32, i32* @format_cb_window_layout, align 4
  %34 = call i32 @format_add_cb(%struct.format_tree* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %33)
  %35 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %36 = load i32, i32* @format_cb_window_visible_layout, align 4
  %37 = call i32 @format_add_cb(%struct.format_tree* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %36)
  %38 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %39 = load %struct.window*, %struct.window** %4, align 8
  %40 = call i32 @window_count_panes(%struct.window* %39)
  %41 = call i32 @format_add(%struct.format_tree* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %43 = load %struct.window*, %struct.window** %4, align 8
  %44 = getelementptr inbounds %struct.window, %struct.window* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WINDOW_ZOOMED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @format_add(%struct.format_tree* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local i32 @format_add_tv(%struct.format_tree*, i8*, i32*) #1

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, i32) #1

declare dso_local i32 @format_add_cb(%struct.format_tree*, i8*, i32) #1

declare dso_local i32 @window_count_panes(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
