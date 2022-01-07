; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-clock.c_window_clock_draw_screen.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-clock.c_window_clock_draw_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_clock_mode_data*, %struct.window_pane* }
%struct.window_clock_mode_data = type { %struct.screen }
%struct.screen = type { i32 }
%struct.window_pane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i32, i32, i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"clock-mode-colour\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"clock-mode-style\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%l:%M \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@grid_default_cell = common dso_local global i32 0, align 4
@GRID_FLAG_NOPALETTE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@window_clock_table = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_clock_draw_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_clock_draw_screen(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.window_clock_mode_data*, align 8
  %5 = alloca %struct.screen_write_ctx, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.screen*, align 8
  %9 = alloca %struct.grid_cell, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %19 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %20 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %19, i32 0, i32 1
  %21 = load %struct.window_pane*, %struct.window_pane** %20, align 8
  store %struct.window_pane* %21, %struct.window_pane** %3, align 8
  %22 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %23 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %22, i32 0, i32 0
  %24 = load %struct.window_clock_mode_data*, %struct.window_clock_mode_data** %23, align 8
  store %struct.window_clock_mode_data* %24, %struct.window_clock_mode_data** %4, align 8
  %25 = load %struct.window_clock_mode_data*, %struct.window_clock_mode_data** %4, align 8
  %26 = getelementptr inbounds %struct.window_clock_mode_data, %struct.window_clock_mode_data* %25, i32 0, i32 0
  store %struct.screen* %26, %struct.screen** %8, align 8
  %27 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %28 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @options_get_number(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %34 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @options_get_number(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %7, align 4
  %39 = load %struct.screen*, %struct.screen** %8, align 8
  %40 = call i32 @screen_write_start(%struct.screen_write_ctx* %5, i32* null, %struct.screen* %39)
  %41 = call i32 @time(i32* null)
  store i32 %41, i32* %12, align 4
  %42 = call %struct.tm* @localtime(i32* %12)
  store %struct.tm* %42, %struct.tm** %13, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %1
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %47 = call %struct.tm* @localtime(i32* %12)
  %48 = call i32 @strftime(i8* %46, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %47)
  %49 = load %struct.tm*, %struct.tm** %13, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 12
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %55 = call i32 @strlcat(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 64)
  br label %59

56:                                               ; preds = %45
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %58 = call i32 @strlcat(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 64)
  br label %59

59:                                               ; preds = %56, %53
  br label %64

60:                                               ; preds = %1
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %62 = load %struct.tm*, %struct.tm** %13, align 8
  %63 = call i32 @strftime(i8* %61, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %62)
  br label %64

64:                                               ; preds = %60, %59
  %65 = call i32 @screen_write_clearscreen(%struct.screen_write_ctx* %5, i32 8)
  %66 = load %struct.screen*, %struct.screen** %8, align 8
  %67 = call i32 @screen_size_x(%struct.screen* %66)
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = mul nsw i32 6, %69
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load %struct.screen*, %struct.screen** %8, align 8
  %74 = call i32 @screen_size_y(%struct.screen* %73)
  %75 = icmp slt i32 %74, 6
  br i1 %75, label %76, label %111

76:                                               ; preds = %72, %64
  %77 = load %struct.screen*, %struct.screen** %8, align 8
  %78 = call i32 @screen_size_x(%struct.screen* %77)
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %80 = call i32 @strlen(i8* %79)
  %81 = icmp sge i32 %78, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %76
  %83 = load %struct.screen*, %struct.screen** %8, align 8
  %84 = call i32 @screen_size_y(%struct.screen* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load %struct.screen*, %struct.screen** %8, align 8
  %88 = call i32 @screen_size_x(%struct.screen* %87)
  %89 = sdiv i32 %88, 2
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %91 = call i32 @strlen(i8* %90)
  %92 = sdiv i32 %91, 2
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %16, align 4
  %94 = load %struct.screen*, %struct.screen** %8, align 8
  %95 = call i32 @screen_size_y(%struct.screen* %94)
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %5, i32 %97, i32 %98, i32 0)
  %100 = call i32 @memcpy(%struct.grid_cell* %9, i32* @grid_default_cell, i32 12)
  %101 = load i32, i32* @GRID_FLAG_NOPALETTE, align 4
  %102 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %6, align 4
  %106 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %108 = call i32 @screen_write_puts(%struct.screen_write_ctx* %5, %struct.grid_cell* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %86, %82, %76
  %110 = call i32 @screen_write_stop(%struct.screen_write_ctx* %5)
  br label %230

111:                                              ; preds = %72
  %112 = load %struct.screen*, %struct.screen** %8, align 8
  %113 = call i32 @screen_size_x(%struct.screen* %112)
  %114 = sdiv i32 %113, 2
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %116 = call i32 @strlen(i8* %115)
  %117 = mul nsw i32 3, %116
  %118 = sub nsw i32 %114, %117
  store i32 %118, i32* %16, align 4
  %119 = load %struct.screen*, %struct.screen** %8, align 8
  %120 = call i32 @screen_size_y(%struct.screen* %119)
  %121 = sdiv i32 %120, 2
  %122 = sub nsw i32 %121, 3
  store i32 %122, i32* %17, align 4
  %123 = call i32 @memcpy(%struct.grid_cell* %9, i32* @grid_default_cell, i32 12)
  %124 = load i32, i32* @GRID_FLAG_NOPALETTE, align 4
  %125 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %6, align 4
  %129 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %130, i8** %11, align 8
  br label %131

131:                                              ; preds = %225, %111
  %132 = load i8*, i8** %11, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %228

136:                                              ; preds = %131
  %137 = load i8*, i8** %11, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sge i32 %139, 48
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i8*, i8** %11, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sle i32 %144, 57
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i8*, i8** %11, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = sub nsw i32 %149, 48
  store i32 %150, i32* %18, align 4
  br label %182

151:                                              ; preds = %141, %136
  %152 = load i8*, i8** %11, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 58
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 10, i32* %18, align 4
  br label %181

157:                                              ; preds = %151
  %158 = load i8*, i8** %11, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 65
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 11, i32* %18, align 4
  br label %180

163:                                              ; preds = %157
  %164 = load i8*, i8** %11, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 80
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 12, i32* %18, align 4
  br label %179

169:                                              ; preds = %163
  %170 = load i8*, i8** %11, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 77
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 13, i32* %18, align 4
  br label %178

175:                                              ; preds = %169
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 6
  store i32 %177, i32* %16, align 4
  br label %225

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %168
  br label %180

180:                                              ; preds = %179, %162
  br label %181

181:                                              ; preds = %180, %156
  br label %182

182:                                              ; preds = %181, %146
  store i32 0, i32* %15, align 4
  br label %183

183:                                              ; preds = %219, %182
  %184 = load i32, i32* %15, align 4
  %185 = icmp slt i32 %184, 5
  br i1 %185, label %186, label %222

186:                                              ; preds = %183
  store i32 0, i32* %14, align 4
  br label %187

187:                                              ; preds = %215, %186
  %188 = load i32, i32* %14, align 4
  %189 = icmp slt i32 %188, 5
  br i1 %189, label %190, label %218

190:                                              ; preds = %187
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %191, %192
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %194, %195
  %197 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %5, i32 %193, i32 %196, i32 0)
  %198 = load i64***, i64**** @window_clock_table, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64**, i64*** %198, i64 %200
  %202 = load i64**, i64*** %201, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64*, i64** %202, i64 %204
  %206 = load i64*, i64** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %190
  %213 = call i32 @screen_write_putc(%struct.screen_write_ctx* %5, %struct.grid_cell* %9, i8 signext 32)
  br label %214

214:                                              ; preds = %212, %190
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  br label %187

218:                                              ; preds = %187
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %15, align 4
  br label %183

222:                                              ; preds = %183
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 6
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %222, %175
  %226 = load i8*, i8** %11, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %11, align 8
  br label %131

228:                                              ; preds = %131
  %229 = call i32 @screen_write_stop(%struct.screen_write_ctx* %5)
  br label %230

230:                                              ; preds = %228, %109
  ret void
}

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @screen_write_clearscreen(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @screen_write_puts(%struct.screen_write_ctx*, %struct.grid_cell*, i8*, i8*) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.grid_cell*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
