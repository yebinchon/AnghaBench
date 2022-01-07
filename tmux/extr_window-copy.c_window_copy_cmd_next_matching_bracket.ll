; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_next_matching_bracket.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_next_matching_bracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i64, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, %struct.screen* }
%struct.screen = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.grid_cell = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.grid_line = type { i32, i64 }

@__const.window_copy_cmd_next_matching_bracket.open = private unnamed_addr constant [4 x i8] c"{[(\00", align 1
@__const.window_copy_cmd_next_matching_bracket.close = private unnamed_addr constant [4 x i8] c"}])\00", align 1
@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@MODEKEY_VI = common dso_local global i64 0, align 8
@MODEKEY_EMACS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"{[( \00", align 1
@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_next_matching_bracket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_next_matching_bracket(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.grid_cell, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.grid_line*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %23 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %24 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %23, i32 0, i32 0
  %25 = load %struct.window_mode_entry*, %struct.window_mode_entry** %24, align 8
  store %struct.window_mode_entry* %25, %struct.window_mode_entry** %3, align 8
  %26 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %27 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %30 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %29, i32 0, i32 1
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %30, align 8
  store %struct.window_copy_mode_data* %31, %struct.window_copy_mode_data** %5, align 8
  %32 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %33 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %32, i32 0, i32 4
  %34 = load %struct.screen*, %struct.screen** %33, align 8
  store %struct.screen* %34, %struct.screen** %6, align 8
  %35 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.window_copy_cmd_next_matching_bracket.open, i32 0, i32 0), i64 4, i1 false)
  %36 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.window_copy_cmd_next_matching_bracket.close, i32 0, i32 0), i64 4, i1 false)
  br label %37

37:                                               ; preds = %317, %1
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %320

40:                                               ; preds = %37
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load %struct.screen*, %struct.screen** %6, align 8
  %45 = call i64 @screen_hsize(%struct.screen* %44)
  %46 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %47 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  store i64 %53, i64* %14, align 8
  %54 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i64 @window_copy_find_length(%struct.window_mode_entry* %54, i64 %55)
  store i64 %56, i64* %15, align 8
  %57 = load %struct.screen*, %struct.screen** %6, align 8
  %58 = call i64 @screen_hsize(%struct.screen* %57)
  %59 = load %struct.screen*, %struct.screen** %6, align 8
  %60 = call i64 @screen_size_y(%struct.screen* %59)
  %61 = add nsw i64 %58, %60
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %40
  br label %320

66:                                               ; preds = %40
  store i8 0, i8* %9, align 1
  br label %67

67:                                               ; preds = %233, %184, %66
  %68 = load %struct.screen*, %struct.screen** %6, align 8
  %69 = getelementptr inbounds %struct.screen, %struct.screen* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @grid_get_cell(%struct.TYPE_5__* %70, i64 %71, i64 %72, %struct.grid_cell* %20)
  %74 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %84, label %78

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %67
  store i8* null, i8** %12, align 8
  br label %168

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %10, align 1
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %91 = load i8, i8* %10, align 1
  %92 = call i8* @strchr(i8* %90, i8 signext %91)
  store i8* %92, i8** %12, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %164

95:                                               ; preds = %85
  %96 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %97 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MODEKEY_VI, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %164

101:                                              ; preds = %95
  %102 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %103 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %17, align 8
  %105 = load %struct.screen*, %struct.screen** %6, align 8
  %106 = call i64 @screen_hsize(%struct.screen* %105)
  %107 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %108 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %112 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  store i64 %114, i64* %18, align 8
  %115 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call i32 @window_copy_scroll_to(%struct.window_mode_entry* %115, i64 %116, i64 %117)
  %119 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %120 = call i32 @window_copy_cmd_previous_matching_bracket(%struct.window_copy_cmd_state* %119)
  %121 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %122 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %13, align 8
  %124 = load %struct.screen*, %struct.screen** %6, align 8
  %125 = call i64 @screen_hsize(%struct.screen* %124)
  %126 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %127 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %131 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  store i64 %133, i64* %14, align 8
  %134 = load %struct.screen*, %struct.screen** %6, align 8
  %135 = getelementptr inbounds %struct.screen, %struct.screen* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %14, align 8
  %139 = call i32 @grid_get_cell(%struct.TYPE_5__* %136, i64 %137, i64 %138, %struct.grid_cell* %20)
  %140 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %158, label %144

144:                                              ; preds = %101
  %145 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %152 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = call i8* @strchr(i8* %151, i8 signext %155)
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %150, %144, %101
  %159 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %18, align 8
  %162 = call i32 @window_copy_scroll_to(%struct.window_mode_entry* %159, i64 %160, i64 %161)
  br label %163

163:                                              ; preds = %158, %150
  br label %320

164:                                              ; preds = %95, %85
  %165 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %166 = load i8, i8* %10, align 1
  %167 = call i8* @strchr(i8* %165, i8 signext %166)
  store i8* %167, i8** %12, align 8
  br label %168

168:                                              ; preds = %164, %84
  %169 = load i8*, i8** %12, align 8
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %234

171:                                              ; preds = %168
  %172 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %173 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @MODEKEY_EMACS, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %171
  %178 = load i8, i8* %9, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %15, align 8
  %183 = icmp sle i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i64, i64* %13, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %13, align 8
  store i8 1, i8* %9, align 1
  br label %67

187:                                              ; preds = %180, %177
  %188 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %189 = call i32 @window_copy_cursor_next_word_end(%struct.window_mode_entry* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %317

190:                                              ; preds = %171
  %191 = load i64, i64* %13, align 8
  %192 = load i64, i64* %15, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %230

194:                                              ; preds = %190
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %16, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %317

199:                                              ; preds = %194
  %200 = load %struct.screen*, %struct.screen** %6, align 8
  %201 = getelementptr inbounds %struct.screen, %struct.screen* %200, i32 0, i32 0
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = load i64, i64* %14, align 8
  %204 = call %struct.grid_line* @grid_get_line(%struct.TYPE_5__* %202, i64 %203)
  store %struct.grid_line* %204, %struct.grid_line** %22, align 8
  %205 = load %struct.grid_line*, %struct.grid_line** %22, align 8
  %206 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = xor i32 %207, -1
  %209 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %199
  br label %317

213:                                              ; preds = %199
  %214 = load %struct.grid_line*, %struct.grid_line** %22, align 8
  %215 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.screen*, %struct.screen** %6, align 8
  %218 = getelementptr inbounds %struct.screen, %struct.screen* %217, i32 0, i32 0
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %216, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %213
  br label %317

224:                                              ; preds = %213
  store i64 0, i64* %13, align 8
  %225 = load i64, i64* %14, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %14, align 8
  %227 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %228 = load i64, i64* %14, align 8
  %229 = call i64 @window_copy_find_length(%struct.window_mode_entry* %227, i64 %228)
  store i64 %229, i64* %15, align 8
  br label %233

230:                                              ; preds = %190
  %231 = load i64, i64* %13, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %13, align 8
  br label %233

233:                                              ; preds = %230, %224
  br label %67

234:                                              ; preds = %168
  %235 = load i8*, i8** %12, align 8
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %239
  %241 = load i8, i8* %240, align 1
  store i8 %241, i8* %11, align 1
  store i64 1, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %242

242:                                              ; preds = %305, %234
  %243 = load i64, i64* %13, align 8
  %244 = load i64, i64* %15, align 8
  %245 = icmp sgt i64 %243, %244
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = load i64, i64* %14, align 8
  %248 = load i64, i64* %16, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i32 1, i32* %21, align 4
  br label %308

251:                                              ; preds = %246
  store i64 0, i64* %13, align 8
  %252 = load i64, i64* %14, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %14, align 8
  %254 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %255 = load i64, i64* %14, align 8
  %256 = call i64 @window_copy_find_length(%struct.window_mode_entry* %254, i64 %255)
  store i64 %256, i64* %15, align 8
  br label %260

257:                                              ; preds = %242
  %258 = load i64, i64* %13, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %13, align 8
  br label %260

260:                                              ; preds = %257, %251
  %261 = load %struct.screen*, %struct.screen** %6, align 8
  %262 = getelementptr inbounds %struct.screen, %struct.screen* %261, i32 0, i32 0
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = load i64, i64* %13, align 8
  %265 = load i64, i64* %14, align 8
  %266 = call i32 @grid_get_cell(%struct.TYPE_5__* %263, i64 %264, i64 %265, %struct.grid_cell* %20)
  %267 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %304

271:                                              ; preds = %260
  %272 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = xor i32 %273, -1
  %275 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %304

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = load i8, i8* %10, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %283, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %278
  %288 = load i64, i64* %19, align 8
  %289 = add nsw i64 %288, 1
  store i64 %289, i64* %19, align 8
  br label %303

290:                                              ; preds = %278
  %291 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = load i8, i8* %11, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %290
  %300 = load i64, i64* %19, align 8
  %301 = add nsw i64 %300, -1
  store i64 %301, i64* %19, align 8
  br label %302

302:                                              ; preds = %299, %290
  br label %303

303:                                              ; preds = %302, %287
  br label %304

304:                                              ; preds = %303, %271, %260
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %19, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %242, label %308

308:                                              ; preds = %305, %250
  %309 = load i32, i32* %21, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %308
  %312 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %313 = load i64, i64* %13, align 8
  %314 = load i64, i64* %14, align 8
  %315 = call i32 @window_copy_scroll_to(%struct.window_mode_entry* %312, i64 %313, i64 %314)
  br label %316

316:                                              ; preds = %311, %308
  br label %317

317:                                              ; preds = %316, %223, %212, %198, %187
  %318 = load i64, i64* %4, align 8
  %319 = add nsw i64 %318, -1
  store i64 %319, i64* %4, align 8
  br label %37

320:                                              ; preds = %163, %65, %37
  %321 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %321
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @screen_hsize(%struct.screen*) #2

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #2

declare dso_local i64 @screen_size_y(%struct.screen*) #2

declare dso_local i32 @grid_get_cell(%struct.TYPE_5__*, i64, i64, %struct.grid_cell*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @window_copy_scroll_to(%struct.window_mode_entry*, i64, i64) #2

declare dso_local i32 @window_copy_cmd_previous_matching_bracket(%struct.window_copy_cmd_state*) #2

declare dso_local i32 @window_copy_cursor_next_word_end(%struct.window_mode_entry*, i8*) #2

declare dso_local %struct.grid_line* @grid_get_line(%struct.TYPE_5__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
