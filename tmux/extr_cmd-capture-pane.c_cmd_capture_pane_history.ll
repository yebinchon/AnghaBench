; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-capture-pane.c_cmd_capture_pane_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-capture-pane.c_cmd_capture_pane_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.window_pane = type { %struct.TYPE_2__, %struct.grid* }
%struct.TYPE_2__ = type { %struct.grid* }
%struct.grid = type { i32, i32 }
%struct.grid_line = type { i32 }
%struct.grid_cell = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no alternate screen\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.args*, %struct.cmdq_item*, %struct.window_pane*, i64*)* @cmd_capture_pane_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_capture_pane_history(%struct.args* %0, %struct.cmdq_item* %1, %struct.window_pane* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmdq_item*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.grid*, align 8
  %11 = alloca %struct.grid_line*, align 8
  %12 = alloca %struct.grid_cell*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store %struct.args* %0, %struct.args** %6, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %7, align 8
  store %struct.window_pane* %2, %struct.window_pane** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.grid_cell* null, %struct.grid_cell** %12, align 8
  %29 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %30 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %29, i32 0, i32 0
  %31 = call i32 @screen_size_x(%struct.TYPE_2__* %30)
  store i32 %31, i32* %19, align 4
  %32 = load %struct.args*, %struct.args** %6, align 8
  %33 = call i32 @args_has(%struct.args* %32, i8 signext 97)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %4
  %36 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %37 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %36, i32 0, i32 1
  %38 = load %struct.grid*, %struct.grid** %37, align 8
  store %struct.grid* %38, %struct.grid** %10, align 8
  %39 = load %struct.grid*, %struct.grid** %10, align 8
  %40 = icmp eq %struct.grid* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.args*, %struct.args** %6, align 8
  %43 = call i32 @args_has(%struct.args* %42, i8 signext 113)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %47 = call i32 @cmdq_error(%struct.cmdq_item* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %264

48:                                               ; preds = %41
  %49 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** %5, align 8
  br label %264

50:                                               ; preds = %35
  br label %56

51:                                               ; preds = %4
  %52 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %53 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.grid*, %struct.grid** %54, align 8
  store %struct.grid* %55, %struct.grid** %10, align 8
  br label %56

56:                                               ; preds = %51, %50
  %57 = load %struct.args*, %struct.args** %6, align 8
  %58 = call i8* @args_get(%struct.args* %57, i8 signext 83)
  store i8* %58, i8** %26, align 8
  %59 = load i8*, i8** %26, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %26, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %20, align 4
  br label %118

66:                                               ; preds = %61, %56
  %67 = load %struct.args*, %struct.args** %6, align 8
  %68 = load i32, i32* @INT_MIN, align 4
  %69 = load i32, i32* @SHRT_MAX, align 4
  %70 = call i32 @args_strtonum(%struct.args* %67, i8 signext 83, i32 %68, i32 %69, i8** %23)
  store i32 %70, i32* %13, align 4
  %71 = load i8*, i8** %23, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.grid*, %struct.grid** %10, align 8
  %75 = getelementptr inbounds %struct.grid, %struct.grid* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %20, align 4
  %77 = load i8*, i8** %23, align 8
  %78 = call i32 @free(i8* %77)
  br label %97

79:                                               ; preds = %66
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 0, %83
  %85 = load %struct.grid*, %struct.grid** %10, align 8
  %86 = getelementptr inbounds %struct.grid, %struct.grid* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %20, align 4
  br label %96

90:                                               ; preds = %82, %79
  %91 = load %struct.grid*, %struct.grid** %10, align 8
  %92 = getelementptr inbounds %struct.grid, %struct.grid* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %20, align 4
  br label %96

96:                                               ; preds = %90, %89
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i32, i32* %20, align 4
  %99 = load %struct.grid*, %struct.grid** %10, align 8
  %100 = getelementptr inbounds %struct.grid, %struct.grid* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.grid*, %struct.grid** %10, align 8
  %103 = getelementptr inbounds %struct.grid, %struct.grid* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = sub nsw i32 %105, 1
  %107 = icmp sgt i32 %98, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %97
  %109 = load %struct.grid*, %struct.grid** %10, align 8
  %110 = getelementptr inbounds %struct.grid, %struct.grid* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.grid*, %struct.grid** %10, align 8
  %113 = getelementptr inbounds %struct.grid, %struct.grid* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %20, align 4
  br label %117

117:                                              ; preds = %108, %97
  br label %118

118:                                              ; preds = %117, %65
  %119 = load %struct.args*, %struct.args** %6, align 8
  %120 = call i8* @args_get(%struct.args* %119, i8 signext 69)
  store i8* %120, i8** %27, align 8
  %121 = load i8*, i8** %27, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %118
  %124 = load i8*, i8** %27, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load %struct.grid*, %struct.grid** %10, align 8
  %129 = getelementptr inbounds %struct.grid, %struct.grid* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.grid*, %struct.grid** %10, align 8
  %132 = getelementptr inbounds %struct.grid, %struct.grid* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %130, %133
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %21, align 4
  br label %193

136:                                              ; preds = %123, %118
  %137 = load %struct.args*, %struct.args** %6, align 8
  %138 = load i32, i32* @INT_MIN, align 4
  %139 = load i32, i32* @SHRT_MAX, align 4
  %140 = call i32 @args_strtonum(%struct.args* %137, i8 signext 69, i32 %138, i32 %139, i8** %23)
  store i32 %140, i32* %13, align 4
  %141 = load i8*, i8** %23, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load %struct.grid*, %struct.grid** %10, align 8
  %145 = getelementptr inbounds %struct.grid, %struct.grid* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.grid*, %struct.grid** %10, align 8
  %148 = getelementptr inbounds %struct.grid, %struct.grid* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %21, align 4
  %152 = load i8*, i8** %23, align 8
  %153 = call i32 @free(i8* %152)
  br label %172

154:                                              ; preds = %136
  %155 = load i32, i32* %13, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i32, i32* %13, align 4
  %159 = sub nsw i32 0, %158
  %160 = load %struct.grid*, %struct.grid** %10, align 8
  %161 = getelementptr inbounds %struct.grid, %struct.grid* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %159, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 0, i32* %21, align 4
  br label %171

165:                                              ; preds = %157, %154
  %166 = load %struct.grid*, %struct.grid** %10, align 8
  %167 = getelementptr inbounds %struct.grid, %struct.grid* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %21, align 4
  br label %171

171:                                              ; preds = %165, %164
  br label %172

172:                                              ; preds = %171, %143
  %173 = load i32, i32* %21, align 4
  %174 = load %struct.grid*, %struct.grid** %10, align 8
  %175 = getelementptr inbounds %struct.grid, %struct.grid* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.grid*, %struct.grid** %10, align 8
  %178 = getelementptr inbounds %struct.grid, %struct.grid* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %176, %179
  %181 = sub nsw i32 %180, 1
  %182 = icmp sgt i32 %173, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %172
  %184 = load %struct.grid*, %struct.grid** %10, align 8
  %185 = getelementptr inbounds %struct.grid, %struct.grid* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.grid*, %struct.grid** %10, align 8
  %188 = getelementptr inbounds %struct.grid, %struct.grid* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %186, %189
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %21, align 4
  br label %192

192:                                              ; preds = %183, %172
  br label %193

193:                                              ; preds = %192, %127
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %20, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* %21, align 4
  store i32 %198, i32* %22, align 4
  %199 = load i32, i32* %20, align 4
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* %22, align 4
  store i32 %200, i32* %20, align 4
  br label %201

201:                                              ; preds = %197, %193
  %202 = load %struct.args*, %struct.args** %6, align 8
  %203 = call i32 @args_has(%struct.args* %202, i8 signext 101)
  store i32 %203, i32* %14, align 4
  %204 = load %struct.args*, %struct.args** %6, align 8
  %205 = call i32 @args_has(%struct.args* %204, i8 signext 67)
  store i32 %205, i32* %15, align 4
  %206 = load %struct.args*, %struct.args** %6, align 8
  %207 = call i32 @args_has(%struct.args* %206, i8 signext 74)
  store i32 %207, i32* %16, align 4
  %208 = load %struct.args*, %struct.args** %6, align 8
  %209 = call i32 @args_has(%struct.args* %208, i8 signext 78)
  store i32 %209, i32* %17, align 4
  store i8* null, i8** %24, align 8
  %210 = load i32, i32* %20, align 4
  store i32 %210, i32* %18, align 4
  br label %211

211:                                              ; preds = %259, %201
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %21, align 4
  %214 = icmp sle i32 %212, %213
  br i1 %214, label %215, label %262

215:                                              ; preds = %211
  %216 = load %struct.grid*, %struct.grid** %10, align 8
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  br label %227

227:                                              ; preds = %223, %215
  %228 = phi i1 [ false, %215 ], [ %226, %223 ]
  %229 = zext i1 %228 to i32
  %230 = call i8* @grid_string_cells(%struct.grid* %216, i32 0, i32 %217, i32 %218, %struct.grid_cell** %12, i32 %219, i32 %220, i32 %229)
  store i8* %230, i8** %25, align 8
  %231 = load i8*, i8** %25, align 8
  %232 = call i64 @strlen(i8* %231)
  store i64 %232, i64* %28, align 8
  %233 = load i8*, i8** %24, align 8
  %234 = load i64*, i64** %9, align 8
  %235 = load i8*, i8** %25, align 8
  %236 = load i64, i64* %28, align 8
  %237 = call i8* @cmd_capture_pane_append(i8* %233, i64* %234, i8* %235, i64 %236)
  store i8* %237, i8** %24, align 8
  %238 = load %struct.grid*, %struct.grid** %10, align 8
  %239 = load i32, i32* %18, align 4
  %240 = call %struct.grid_line* @grid_peek_line(%struct.grid* %238, i32 %239)
  store %struct.grid_line* %240, %struct.grid_line** %11, align 8
  %241 = load i32, i32* %16, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %227
  %244 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %245 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %243, %227
  %251 = load i8*, i8** %24, align 8
  %252 = load i64*, i64** %9, align 8
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %252, align 8
  %255 = getelementptr inbounds i8, i8* %251, i64 %253
  store i8 10, i8* %255, align 1
  br label %256

256:                                              ; preds = %250, %243
  %257 = load i8*, i8** %25, align 8
  %258 = call i32 @free(i8* %257)
  br label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %18, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %18, align 4
  br label %211

262:                                              ; preds = %211
  %263 = load i8*, i8** %24, align 8
  store i8* %263, i8** %5, align 8
  br label %264

264:                                              ; preds = %262, %48, %45
  %265 = load i8*, i8** %5, align 8
  ret i8* %265
}

declare dso_local i32 @screen_size_x(%struct.TYPE_2__*) #1

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @args_strtonum(%struct.args*, i8 signext, i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @grid_string_cells(%struct.grid*, i32, i32, i32, %struct.grid_cell**, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @cmd_capture_pane_append(i8*, i64*, i8*, i64) #1

declare dso_local %struct.grid_line* @grid_peek_line(%struct.grid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
