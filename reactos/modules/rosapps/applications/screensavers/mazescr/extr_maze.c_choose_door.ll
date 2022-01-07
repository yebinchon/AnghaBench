; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_choose_door.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_choose_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maze = common dso_local global i32** null, align 8
@cur_sq_x = common dso_local global i64 0, align 8
@cur_sq_y = common dso_local global i64 0, align 8
@DOOR_IN_TOP = common dso_local global i32 0, align 4
@DOOR_OUT_TOP = common dso_local global i32 0, align 4
@WALL_TOP = common dso_local global i32 0, align 4
@DOOR_IN_ANY = common dso_local global i32 0, align 4
@WALL_BOTTOM = common dso_local global i32 0, align 4
@DOOR_IN_RIGHT = common dso_local global i32 0, align 4
@DOOR_OUT_RIGHT = common dso_local global i32 0, align 4
@WALL_RIGHT = common dso_local global i32 0, align 4
@WALL_LEFT = common dso_local global i32 0, align 4
@DOOR_IN_BOTTOM = common dso_local global i32 0, align 4
@DOOR_OUT_BOTTOM = common dso_local global i32 0, align 4
@DOOR_IN_LEFT = common dso_local global i32 0, align 4
@DOOR_OUT_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @choose_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_door(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32**, i32*** @maze, align 8
  %7 = load i64, i64* @cur_sq_x, align 8
  %8 = getelementptr inbounds i32*, i32** %6, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @cur_sq_y, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DOOR_IN_TOP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %82

17:                                               ; preds = %1
  %18 = load i32**, i32*** @maze, align 8
  %19 = load i64, i64* @cur_sq_x, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @cur_sq_y, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DOOR_OUT_TOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %82

29:                                               ; preds = %17
  %30 = load i32**, i32*** @maze, align 8
  %31 = load i64, i64* @cur_sq_x, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @cur_sq_y, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @WALL_TOP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %82

41:                                               ; preds = %29
  %42 = load i32**, i32*** @maze, align 8
  %43 = load i64, i64* @cur_sq_x, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @cur_sq_y, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DOOR_IN_ANY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %41
  %54 = load i32, i32* @WALL_TOP, align 4
  %55 = load i32**, i32*** @maze, align 8
  %56 = load i64, i64* @cur_sq_x, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @cur_sq_y, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %54
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @WALL_BOTTOM, align 4
  %64 = load i32**, i32*** @maze, align 8
  %65 = load i64, i64* @cur_sq_x, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @cur_sq_y, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %63
  store i32 %72, i32* %70, align 4
  %73 = load i64, i64* @cur_sq_x, align 8
  %74 = load i64, i64* @cur_sq_y, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @draw_wall(i64 %73, i64 %74, i32 0, i32 %75)
  br label %82

77:                                               ; preds = %41
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %80
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %53, %40, %28, %16
  %83 = load i32**, i32*** @maze, align 8
  %84 = load i64, i64* @cur_sq_x, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @cur_sq_y, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DOOR_IN_RIGHT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %159

94:                                               ; preds = %82
  %95 = load i32**, i32*** @maze, align 8
  %96 = load i64, i64* @cur_sq_x, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @cur_sq_y, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DOOR_OUT_RIGHT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %159

106:                                              ; preds = %94
  %107 = load i32**, i32*** @maze, align 8
  %108 = load i64, i64* @cur_sq_x, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @cur_sq_y, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @WALL_RIGHT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %159

118:                                              ; preds = %106
  %119 = load i32**, i32*** @maze, align 8
  %120 = load i64, i64* @cur_sq_x, align 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @cur_sq_y, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DOOR_IN_ANY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %118
  %131 = load i32, i32* @WALL_RIGHT, align 4
  %132 = load i32**, i32*** @maze, align 8
  %133 = load i64, i64* @cur_sq_x, align 8
  %134 = getelementptr inbounds i32*, i32** %132, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @cur_sq_y, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %131
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @WALL_LEFT, align 4
  %141 = load i32**, i32*** @maze, align 8
  %142 = load i64, i64* @cur_sq_x, align 8
  %143 = add i64 %142, 1
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @cur_sq_y, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %140
  store i32 %149, i32* %147, align 4
  %150 = load i64, i64* @cur_sq_x, align 8
  %151 = load i64, i64* @cur_sq_y, align 8
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @draw_wall(i64 %150, i64 %151, i32 1, i32 %152)
  br label %159

154:                                              ; preds = %118
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %157
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %154, %130, %117, %105, %93
  %160 = load i32**, i32*** @maze, align 8
  %161 = load i64, i64* @cur_sq_x, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @cur_sq_y, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DOOR_IN_BOTTOM, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  br label %236

171:                                              ; preds = %159
  %172 = load i32**, i32*** @maze, align 8
  %173 = load i64, i64* @cur_sq_x, align 8
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @cur_sq_y, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @DOOR_OUT_BOTTOM, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %236

183:                                              ; preds = %171
  %184 = load i32**, i32*** @maze, align 8
  %185 = load i64, i64* @cur_sq_x, align 8
  %186 = getelementptr inbounds i32*, i32** %184, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @cur_sq_y, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @WALL_BOTTOM, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %183
  br label %236

195:                                              ; preds = %183
  %196 = load i32**, i32*** @maze, align 8
  %197 = load i64, i64* @cur_sq_x, align 8
  %198 = getelementptr inbounds i32*, i32** %196, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @cur_sq_y, align 8
  %201 = add i64 %200, 1
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @DOOR_IN_ANY, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %231

207:                                              ; preds = %195
  %208 = load i32, i32* @WALL_BOTTOM, align 4
  %209 = load i32**, i32*** @maze, align 8
  %210 = load i64, i64* @cur_sq_x, align 8
  %211 = getelementptr inbounds i32*, i32** %209, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @cur_sq_y, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %208
  store i32 %216, i32* %214, align 4
  %217 = load i32, i32* @WALL_TOP, align 4
  %218 = load i32**, i32*** @maze, align 8
  %219 = load i64, i64* @cur_sq_x, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @cur_sq_y, align 8
  %223 = add i64 %222, 1
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %217
  store i32 %226, i32* %224, align 4
  %227 = load i64, i64* @cur_sq_x, align 8
  %228 = load i64, i64* @cur_sq_y, align 8
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @draw_wall(i64 %227, i64 %228, i32 2, i32 %229)
  br label %236

231:                                              ; preds = %195
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %234
  store i32 2, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %207, %194, %182, %170
  %237 = load i32**, i32*** @maze, align 8
  %238 = load i64, i64* @cur_sq_x, align 8
  %239 = getelementptr inbounds i32*, i32** %237, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @cur_sq_y, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @DOOR_IN_LEFT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  br label %313

248:                                              ; preds = %236
  %249 = load i32**, i32*** @maze, align 8
  %250 = load i64, i64* @cur_sq_x, align 8
  %251 = getelementptr inbounds i32*, i32** %249, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* @cur_sq_y, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @DOOR_OUT_LEFT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %248
  br label %313

260:                                              ; preds = %248
  %261 = load i32**, i32*** @maze, align 8
  %262 = load i64, i64* @cur_sq_x, align 8
  %263 = getelementptr inbounds i32*, i32** %261, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = load i64, i64* @cur_sq_y, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @WALL_LEFT, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %260
  br label %313

272:                                              ; preds = %260
  %273 = load i32**, i32*** @maze, align 8
  %274 = load i64, i64* @cur_sq_x, align 8
  %275 = sub i64 %274, 1
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @cur_sq_y, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @DOOR_IN_ANY, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %308

284:                                              ; preds = %272
  %285 = load i32, i32* @WALL_LEFT, align 4
  %286 = load i32**, i32*** @maze, align 8
  %287 = load i64, i64* @cur_sq_x, align 8
  %288 = getelementptr inbounds i32*, i32** %286, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @cur_sq_y, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %285
  store i32 %293, i32* %291, align 4
  %294 = load i32, i32* @WALL_RIGHT, align 4
  %295 = load i32**, i32*** @maze, align 8
  %296 = load i64, i64* @cur_sq_x, align 8
  %297 = sub i64 %296, 1
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* @cur_sq_y, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %294
  store i32 %303, i32* %301, align 4
  %304 = load i64, i64* @cur_sq_x, align 8
  %305 = load i64, i64* @cur_sq_y, align 8
  %306 = load i32, i32* %3, align 4
  %307 = call i32 @draw_wall(i64 %304, i64 %305, i32 3, i32 %306)
  br label %313

308:                                              ; preds = %272
  %309 = load i32, i32* %5, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %5, align 4
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %311
  store i32 3, i32* %312, align 4
  br label %313

313:                                              ; preds = %308, %284, %271, %259, %247
  %314 = load i32, i32* %5, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  store i32 -1, i32* %2, align 4
  br label %328

317:                                              ; preds = %313
  %318 = load i32, i32* %5, align 4
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %2, align 4
  br label %328

323:                                              ; preds = %317
  %324 = load i32, i32* %5, align 4
  %325 = call i64 @get_random(i32 %324)
  %326 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %325
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %2, align 4
  br label %328

328:                                              ; preds = %323, %320, %316
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i32 @draw_wall(i64, i64, i32, i32) #1

declare dso_local i64 @get_random(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
