; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_set_selection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, i64, i64, i64, i32, %struct.screen }
%struct.screen = type { i32 }
%struct.window_pane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.options* }
%struct.options = type { i32 }
%struct.grid_cell = type { i32 }

@WINDOW_COPY_REL_POS_ON_SCREEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mode-style\00", align 1
@GRID_FLAG_NOPALETTE = common dso_local global i32 0, align 4
@CURSORDRAG_ENDSEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_mode_entry*, i32)* @window_copy_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_set_selection(%struct.window_mode_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca %struct.window_copy_mode_data*, align 8
  %8 = alloca %struct.screen*, align 8
  %9 = alloca %struct.options*, align 8
  %10 = alloca %struct.grid_cell, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %19 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %18, i32 0, i32 1
  %20 = load %struct.window_pane*, %struct.window_pane** %19, align 8
  store %struct.window_pane* %20, %struct.window_pane** %6, align 8
  %21 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %22 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %21, i32 0, i32 0
  %23 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %22, align 8
  store %struct.window_copy_mode_data* %23, %struct.window_copy_mode_data** %7, align 8
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %25 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %24, i32 0, i32 8
  store %struct.screen* %25, %struct.screen** %8, align 8
  %26 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %27 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.options*, %struct.options** %29, align 8
  store %struct.options* %30, %struct.options** %9, align 8
  %31 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %32 = call i32 @window_copy_synchronize_cursor(%struct.window_mode_entry* %31)
  %33 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %34 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %37 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %40 = call i32 @window_copy_adjust_selection(%struct.window_mode_entry* %39, i64* %11, i64* %12)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %45 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  %47 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %48 = call i32 @window_copy_adjust_selection(%struct.window_mode_entry* %47, i64* %14, i64* %15)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %2
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @WINDOW_COPY_REL_POS_ON_SCREEN, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.screen*, %struct.screen** %8, align 8
  %58 = call i32 @screen_hide_selection(%struct.screen* %57)
  store i32 0, i32* %3, align 4
  br label %138

59:                                               ; preds = %52, %2
  %60 = load %struct.options*, %struct.options** %9, align 8
  %61 = call i32 @style_apply(%struct.grid_cell* %10, %struct.options* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @GRID_FLAG_NOPALETTE, align 4
  %63 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load %struct.screen*, %struct.screen** %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %72 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %75 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @screen_set_selection(%struct.screen* %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %73, i32 %76, %struct.grid_cell* %10)
  %78 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %79 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %137

82:                                               ; preds = %59
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %137

85:                                               ; preds = %82
  %86 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %87 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %13, align 8
  %89 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %90 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CURSORDRAG_ENDSEL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %85
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %12, align 8
  %103 = sub nsw i64 %101, %102
  %104 = add nsw i64 %103, 1
  %105 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %99, i64 %100, i64 %104)
  br label %114

106:                                              ; preds = %94
  %107 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = sub nsw i64 %109, %110
  %112 = add nsw i64 %111, 1
  %113 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %107, i64 %108, i64 %112)
  br label %114

114:                                              ; preds = %106, %98
  br label %136

115:                                              ; preds = %85
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %15, align 8
  %124 = sub nsw i64 %122, %123
  %125 = add nsw i64 %124, 1
  %126 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %120, i64 %121, i64 %125)
  br label %135

127:                                              ; preds = %115
  %128 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %13, align 8
  %132 = sub nsw i64 %130, %131
  %133 = add nsw i64 %132, 1
  %134 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %128, i64 %129, i64 %133)
  br label %135

135:                                              ; preds = %127, %119
  br label %136

136:                                              ; preds = %135, %114
  br label %137

137:                                              ; preds = %136, %82, %59
  store i32 1, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %56
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @window_copy_synchronize_cursor(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_adjust_selection(%struct.window_mode_entry*, i64*, i64*) #1

declare dso_local i32 @screen_hide_selection(%struct.screen*) #1

declare dso_local i32 @style_apply(%struct.grid_cell*, %struct.options*, i8*) #1

declare dso_local i32 @screen_set_selection(%struct.screen*, i64, i64, i64, i64, i64, i32, %struct.grid_cell*) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
