; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i32, i64, i64, %struct.screen*, i64 }
%struct.screen = type { %struct.grid* }
%struct.grid = type { i64, i64 }
%struct.window_pane = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.screen_write_ctx = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@grid_default_cell = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"wrap-search\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_mode_entry*, i32)* @window_copy_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_search(%struct.window_mode_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.window_copy_mode_data*, align 8
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.screen, align 8
  %9 = alloca %struct.screen_write_ctx, align 4
  %10 = alloca %struct.grid*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %18 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %17, i32 0, i32 1
  %19 = load %struct.window_pane*, %struct.window_pane** %18, align 8
  store %struct.window_pane* %19, %struct.window_pane** %5, align 8
  %20 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %21 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %20, i32 0, i32 0
  %22 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %21, align 8
  store %struct.window_copy_mode_data* %22, %struct.window_copy_mode_data** %6, align 8
  %23 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %24 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %23, i32 0, i32 3
  %25 = load %struct.screen*, %struct.screen** %24, align 8
  store %struct.screen* %25, %struct.screen** %7, align 8
  %26 = load %struct.screen*, %struct.screen** %7, align 8
  %27 = getelementptr inbounds %struct.screen, %struct.screen* %26, i32 0, i32 0
  %28 = load %struct.grid*, %struct.grid** %27, align 8
  store %struct.grid* %28, %struct.grid** %10, align 8
  %29 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %30 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @free(i32 %31)
  %33 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %34 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @xstrdup(i32 %35)
  %37 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %38 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %40 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %43 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %42, i32 0, i32 3
  %44 = load %struct.screen*, %struct.screen** %43, align 8
  %45 = call i64 @screen_hsize(%struct.screen* %44)
  %46 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %47 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %12, align 8
  %54 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %55 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @screen_write_strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = call i32 @screen_init(%struct.screen* %8, i32 %57, i32 1, i32 0)
  %59 = call i32 @screen_write_start(%struct.screen_write_ctx* %9, i32* null, %struct.screen* %8)
  %60 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %61 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @screen_write_nputs(%struct.screen_write_ctx* %9, i32 -1, i32* @grid_default_cell, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = call i32 @screen_write_stop(%struct.screen_write_ctx* %9)
  %65 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %66 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @options_get_number(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %70, i32* %14, align 4
  %71 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %72 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @window_copy_is_lowercase(i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %2
  %78 = load %struct.screen*, %struct.screen** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @window_copy_move_right(%struct.screen* %78, i64* %11, i64* %12, i32 %79)
  %81 = load %struct.grid*, %struct.grid** %10, align 8
  %82 = getelementptr inbounds %struct.grid, %struct.grid* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.grid*, %struct.grid** %10, align 8
  %85 = getelementptr inbounds %struct.grid, %struct.grid* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = sub nsw i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %93

89:                                               ; preds = %2
  %90 = load %struct.screen*, %struct.screen** %7, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @window_copy_move_left(%struct.screen* %90, i64* %11, i64* %12, i32 %91)
  store i64 0, i64* %13, align 8
  br label %93

93:                                               ; preds = %89, %77
  %94 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %95 = load %struct.grid*, %struct.grid** %10, align 8
  %96 = getelementptr inbounds %struct.screen, %struct.screen* %8, i32 0, i32 0
  %97 = load %struct.grid*, %struct.grid** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @window_copy_search_jump(%struct.window_mode_entry* %94, %struct.grid* %95, %struct.grid* %97, i64 %98, i64 %99, i64 %100, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %106 = call i64 @window_copy_search_marks(%struct.window_mode_entry* %105, %struct.screen* %8)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %110 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %109)
  br label %111

111:                                              ; preds = %108, %93
  %112 = call i32 @screen_free(%struct.screen* %8)
  %113 = load i32, i32* %16, align 4
  ret i32 %113
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i32 @screen_init(%struct.screen*, i32, i32, i32) #1

declare dso_local i32 @screen_write_strlen(i8*, i32) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @screen_write_nputs(%struct.screen_write_ctx*, i32, i32*, i8*, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @window_copy_is_lowercase(i32) #1

declare dso_local i32 @window_copy_move_right(%struct.screen*, i64*, i64*, i32) #1

declare dso_local i32 @window_copy_move_left(%struct.screen*, i64*, i64*, i32) #1

declare dso_local i32 @window_copy_search_jump(%struct.window_mode_entry*, %struct.grid*, %struct.grid*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i64 @window_copy_search_marks(%struct.window_mode_entry*, %struct.screen*) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

declare dso_local i32 @screen_free(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
