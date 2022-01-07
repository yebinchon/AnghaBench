; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_formats.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.format_tree = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"scroll_position\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rectangle_toggle\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"copy_cursor_x\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"copy_cursor_y\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"selection_present\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"selection_start_x\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"selection_start_y\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"selection_end_x\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"selection_end_y\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"copy_cursor_word\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"copy_cursor_line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, %struct.format_tree*)* @window_copy_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_formats(%struct.window_mode_entry* %0, %struct.format_tree* %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.format_tree*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca i8*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store %struct.format_tree* %1, %struct.format_tree** %4, align 8
  %7 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %8 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %7, i32 0, i32 0
  %9 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  store %struct.window_copy_mode_data* %9, %struct.window_copy_mode_data** %5, align 8
  %10 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %12 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @format_add(%struct.format_tree* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @format_add(%struct.format_tree* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @format_add(%struct.format_tree* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %26 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %27 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @format_add(%struct.format_tree* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @format_add(%struct.format_tree* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %41 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %2
  %46 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %47 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %48 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @format_add(%struct.format_tree* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %52 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %53 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @format_add(%struct.format_tree* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %57 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %58 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %57, i32 0, i32 6
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @format_add(%struct.format_tree* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %62 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %63 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %62, i32 0, i32 7
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @format_add(%struct.format_tree* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %45, %2
  %67 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %68 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %72 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %75 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @format_grid_word(i32 %70, i8* %73, i8* %76)
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %66
  %81 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @format_add(%struct.format_tree* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %80, %66
  %87 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %88 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %92 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @format_grid_line(i32 %90, i8* %93)
  store i8* %94, i8** %6, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @format_add(%struct.format_tree* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %99)
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %97, %86
  ret void
}

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, i8*) #1

declare dso_local i8* @format_grid_word(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @format_grid_line(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
