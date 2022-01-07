; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_write_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_write_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i64, i32, i64, i32, i32*, i32, i32, %struct.screen }
%struct.screen = type { i64, i64 }
%struct.window_pane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.options* }
%struct.options = type { i32 }
%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"mode-style\00", align 1
@GRID_FLAG_NOPALETTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"[%u/%u]\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"(%u results) [%d/%u]\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"(%u/%u results) [%d/%u]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@grid_default_cell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, %struct.screen_write_ctx*, i64)* @window_copy_write_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_write_line(%struct.window_mode_entry* %0, %struct.screen_write_ctx* %1, i64 %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.screen_write_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window_copy_mode_data*, align 8
  %9 = alloca %struct.screen*, align 8
  %10 = alloca %struct.options*, align 8
  %11 = alloca %struct.grid_cell, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store %struct.screen_write_ctx* %1, %struct.screen_write_ctx** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %15 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %14, i32 0, i32 1
  %16 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  store %struct.window_pane* %16, %struct.window_pane** %7, align 8
  %17 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %18 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %17, i32 0, i32 0
  %19 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %18, align 8
  store %struct.window_copy_mode_data* %19, %struct.window_copy_mode_data** %8, align 8
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %21 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %20, i32 0, i32 7
  store %struct.screen* %21, %struct.screen** %9, align 8
  %22 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %23 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.options*, %struct.options** %25, align 8
  store %struct.options* %26, %struct.options** %10, align 8
  store i64 0, i64* %13, align 8
  %27 = load %struct.options*, %struct.options** %10, align 8
  %28 = call i32 @style_apply(%struct.grid_cell* %11, %struct.options* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @GRID_FLAG_NOPALETTE, align 4
  %30 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %117

35:                                               ; preds = %3
  %36 = load %struct.screen*, %struct.screen** %9, align 8
  %37 = getelementptr inbounds %struct.screen, %struct.screen* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.screen*, %struct.screen** %9, align 8
  %40 = getelementptr inbounds %struct.screen, %struct.screen* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %117

43:                                               ; preds = %35
  %44 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %45 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %55 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @screen_hsize(i32 %56)
  %58 = call i64 (i8*, i32, i8*, i32, i64, ...) @xsnprintf(i8* %49, i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %57)
  store i64 %58, i64* %13, align 8
  br label %95

59:                                               ; preds = %43
  %60 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %61 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %66 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %67 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %73 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @screen_hsize(i32 %74)
  %76 = call i64 (i8*, i32, i8*, i32, i64, ...) @xsnprintf(i8* %65, i32 512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %68, i64 %71, i64 %75)
  store i64 %76, i64* %13, align 8
  br label %94

77:                                               ; preds = %59
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %79 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %80 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %83 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %87 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %90 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @screen_hsize(i32 %91)
  %93 = call i64 (i8*, i32, i8*, i32, i64, ...) @xsnprintf(i8* %78, i32 512, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %81, i64 %85, i64 %88, i64 %92)
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %77, %64
  br label %95

95:                                               ; preds = %94, %48
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.screen*, %struct.screen** %9, align 8
  %98 = call i32 @screen_size_x(%struct.screen* %97)
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.screen*, %struct.screen** %9, align 8
  %103 = call i32 @screen_size_x(%struct.screen* %102)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %13, align 8
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %107 = load %struct.screen*, %struct.screen** %9, align 8
  %108 = call i32 @screen_size_x(%struct.screen* %107)
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %13, align 8
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %106, i32 %112, i64 0, i32 0)
  %114 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %116 = call i32 @screen_write_puts(%struct.screen_write_ctx* %114, %struct.grid_cell* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  br label %118

117:                                              ; preds = %35, %3
  store i64 0, i64* %13, align 8
  br label %118

118:                                              ; preds = %117, %105
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.screen*, %struct.screen** %9, align 8
  %121 = call i32 @screen_size_x(%struct.screen* %120)
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %119, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %118
  %125 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %125, i32 0, i64 %126, i32 0)
  %128 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %129 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %130 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %133 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @screen_hsize(i32 %134)
  %136 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %137 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  %140 = load i64, i64* %6, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.screen*, %struct.screen** %9, align 8
  %143 = call i32 @screen_size_x(%struct.screen* %142)
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %13, align 8
  %146 = sub i64 %144, %145
  %147 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %148 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @screen_write_copy(%struct.screen_write_ctx* %128, i32 %131, i32 0, i64 %141, i64 %146, i32 1, i32* %149, %struct.grid_cell* %11)
  br label %151

151:                                              ; preds = %124, %118
  %152 = load i64, i64* %6, align 8
  %153 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %154 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %151
  %158 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %159 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.screen*, %struct.screen** %9, align 8
  %162 = call i32 @screen_size_x(%struct.screen* %161)
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %157
  %165 = call i32 @memcpy(%struct.grid_cell* %11, i32* @grid_default_cell, i32 4)
  %166 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %167 = load %struct.screen*, %struct.screen** %9, align 8
  %168 = call i32 @screen_size_x(%struct.screen* %167)
  %169 = sub nsw i32 %168, 1
  %170 = load i64, i64* %6, align 8
  %171 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %166, i32 %169, i64 %170, i32 0)
  %172 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %173 = call i32 @screen_write_putc(%struct.screen_write_ctx* %172, %struct.grid_cell* %11, i8 signext 36)
  br label %174

174:                                              ; preds = %164, %157, %151
  ret void
}

declare dso_local i32 @style_apply(%struct.grid_cell*, %struct.options*, i8*) #1

declare dso_local i64 @xsnprintf(i8*, i32, i8*, i32, i64, ...) #1

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i64, i32) #1

declare dso_local i32 @screen_write_puts(%struct.screen_write_ctx*, %struct.grid_cell*, i8*, i8*) #1

declare dso_local i32 @screen_write_copy(%struct.screen_write_ctx*, i32, i32, i64, i64, i32, i32*, %struct.grid_cell*) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.grid_cell*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
