; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_check_selection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_check_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { %struct.screen_sel* }
%struct.screen_sel = type { i64, i64, i64, i64, i64, i64, i64 }

@MODEKEY_EMACS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @screen_check_selection(%struct.screen* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.screen_sel*, align 8
  %9 = alloca i64, align 8
  store %struct.screen* %0, %struct.screen** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.screen*, %struct.screen** %5, align 8
  %11 = getelementptr inbounds %struct.screen, %struct.screen* %10, i32 0, i32 0
  %12 = load %struct.screen_sel*, %struct.screen_sel** %11, align 8
  store %struct.screen_sel* %12, %struct.screen_sel** %8, align 8
  %13 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %14 = icmp eq %struct.screen_sel* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %17 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %334

21:                                               ; preds = %15
  %22 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %23 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %118

26:                                               ; preds = %21
  %27 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %28 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %31 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %37 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %43 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  store i32 0, i32* %4, align 4
  br label %334

47:                                               ; preds = %40
  br label %79

48:                                               ; preds = %26
  %49 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %50 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %53 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %59 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %65 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %56
  store i32 0, i32* %4, align 4
  br label %334

69:                                               ; preds = %62
  br label %78

70:                                               ; preds = %48
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %73 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %334

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %81 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %84 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %79
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %90 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %334

94:                                               ; preds = %87
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %97 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %334

101:                                              ; preds = %94
  br label %117

102:                                              ; preds = %79
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %105 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %334

109:                                              ; preds = %102
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %112 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %334

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %101
  br label %333

118:                                              ; preds = %21
  %119 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %120 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %123 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %121, %124
  br i1 %125, label %126, label %187

126:                                              ; preds = %118
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %129 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %135 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132, %126
  store i32 0, i32* %4, align 4
  br label %334

139:                                              ; preds = %132
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %142 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %140, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i64, i64* %6, align 8
  %147 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %148 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %334

152:                                              ; preds = %145, %139
  %153 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %154 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MODEKEY_EMACS, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %152
  %159 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %160 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %169

164:                                              ; preds = %158
  %165 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %166 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %167, 1
  br label %169

169:                                              ; preds = %164, %163
  %170 = phi i64 [ 0, %163 ], [ %168, %164 ]
  store i64 %170, i64* %9, align 8
  br label %175

171:                                              ; preds = %152
  %172 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %173 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %9, align 8
  br label %175

175:                                              ; preds = %171, %169
  %176 = load i64, i64* %7, align 8
  %177 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %178 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %176, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* %9, align 8
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %334

186:                                              ; preds = %181, %175
  br label %332

187:                                              ; preds = %118
  %188 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %189 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %192 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %190, %193
  br i1 %194, label %195, label %253

195:                                              ; preds = %187
  %196 = load i64, i64* %7, align 8
  %197 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %198 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %196, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %195
  %202 = load i64, i64* %7, align 8
  %203 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %204 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp slt i64 %202, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %201, %195
  store i32 0, i32* %4, align 4
  br label %334

208:                                              ; preds = %201
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %211 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %208
  %215 = load i64, i64* %6, align 8
  %216 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %217 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %334

221:                                              ; preds = %214, %208
  %222 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %223 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @MODEKEY_EMACS, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %229 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %230, 1
  store i64 %231, i64* %9, align 8
  br label %236

232:                                              ; preds = %221
  %233 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %234 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %9, align 8
  br label %236

236:                                              ; preds = %232, %227
  %237 = load i64, i64* %7, align 8
  %238 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %239 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %237, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %236
  %243 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %244 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %242
  %248 = load i64, i64* %6, align 8
  %249 = load i64, i64* %9, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %242
  store i32 0, i32* %4, align 4
  br label %334

252:                                              ; preds = %247, %236
  br label %331

253:                                              ; preds = %187
  %254 = load i64, i64* %7, align 8
  %255 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %256 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %254, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i32 0, i32* %4, align 4
  br label %334

260:                                              ; preds = %253
  %261 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %262 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %265 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp slt i64 %263, %266
  br i1 %267, label %268, label %295

268:                                              ; preds = %260
  %269 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %270 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @MODEKEY_EMACS, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %276 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = sub nsw i64 %277, 1
  store i64 %278, i64* %9, align 8
  br label %283

279:                                              ; preds = %268
  %280 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %281 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %9, align 8
  br label %283

283:                                              ; preds = %279, %274
  %284 = load i64, i64* %6, align 8
  %285 = load i64, i64* %9, align 8
  %286 = icmp sgt i64 %284, %285
  br i1 %286, label %293, label %287

287:                                              ; preds = %283
  %288 = load i64, i64* %6, align 8
  %289 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %290 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %287, %283
  store i32 0, i32* %4, align 4
  br label %334

294:                                              ; preds = %287
  br label %330

295:                                              ; preds = %260
  %296 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %297 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @MODEKEY_EMACS, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %295
  %302 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %303 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  br label %312

307:                                              ; preds = %301
  %308 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %309 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = sub nsw i64 %310, 1
  br label %312

312:                                              ; preds = %307, %306
  %313 = phi i64 [ 0, %306 ], [ %311, %307 ]
  store i64 %313, i64* %9, align 8
  br label %318

314:                                              ; preds = %295
  %315 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %316 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %9, align 8
  br label %318

318:                                              ; preds = %314, %312
  %319 = load i64, i64* %6, align 8
  %320 = load %struct.screen_sel*, %struct.screen_sel** %8, align 8
  %321 = getelementptr inbounds %struct.screen_sel, %struct.screen_sel* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = icmp slt i64 %319, %322
  br i1 %323, label %328, label %324

324:                                              ; preds = %318
  %325 = load i64, i64* %6, align 8
  %326 = load i64, i64* %9, align 8
  %327 = icmp sgt i64 %325, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %324, %318
  store i32 0, i32* %4, align 4
  br label %334

329:                                              ; preds = %324
  br label %330

330:                                              ; preds = %329, %294
  br label %331

331:                                              ; preds = %330, %252
  br label %332

332:                                              ; preds = %331, %186
  br label %333

333:                                              ; preds = %332, %117
  store i32 1, i32* %4, align 4
  br label %334

334:                                              ; preds = %333, %328, %293, %259, %251, %220, %207, %185, %151, %138, %115, %108, %100, %93, %76, %68, %46, %20
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
