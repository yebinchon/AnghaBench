; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_fixup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_fixup.gl_shift = internal global i32 0, align 4
@gl_fixup.off_right = internal global i32 0, align 4
@gl_fixup.off_left = internal global i32 0, align 4
@gl_fixup.last_prompt = internal global [80 x i8] zeroinitializer, align 16
@gl_cnt = common dso_local global i32 0, align 4
@gl_pos = common dso_local global i32 0, align 4
@gl_termw = common dso_local global i32 0, align 4
@gl_width = common dso_local global i32 0, align 4
@gl_buf = common dso_local global i8* null, align 8
@GL_BUF_SIZE = common dso_local global i32 0, align 4
@gl_ellipses_during_completion = common dso_local global i64 0, align 8
@gl_scroll = common dso_local global i32 0, align 4
@gl_extent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @gl_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_fixup(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %14, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -2
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  store i32 0, i32* @gl_fixup.off_left, align 4
  store i32 0, i32* @gl_fixup.off_right, align 4
  store i32 0, i32* @gl_fixup.gl_shift, align 4
  store i32 0, i32* @gl_cnt, align 4
  store i32 0, i32* @gl_pos, align 4
  %20 = call i32 @gl_putc(i8 signext 13)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @gl_puts(i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @gl_fixup.last_prompt, i64 0, i64 0), i8* %23)
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* @gl_termw, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @gl_strlen(i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* @gl_width, align 4
  br label %55

30:                                               ; preds = %3
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @gl_fixup.last_prompt, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = call i64 @gl_strlen(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @gl_fixup.last_prompt, i64 0, i64 0))
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @gl_strlen(i8* %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* @gl_cnt, align 4
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %16, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* @gl_cnt, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @gl_fixup.last_prompt, i64 0, i64 0), i8* %45)
  %47 = call i32 @gl_putc(i8 signext 13)
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @gl_puts(i8* %48)
  %50 = load i32, i32* @gl_fixup.gl_shift, align 4
  store i32 %50, i32* @gl_pos, align 4
  %51 = load i32, i32* @gl_termw, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* @gl_width, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %34, %30
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* @gl_fixup.off_right, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @gl_width, align 4
  %60 = sub nsw i32 %59, 1
  br label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @gl_cnt, align 4
  %63 = load i32, i32* @gl_fixup.gl_shift, align 4
  %64 = sub nsw i32 %62, %63
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i32 [ %60, %58 ], [ %64, %61 ]
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @gl_pos, align 4
  %68 = load i32, i32* @gl_fixup.gl_shift, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i8*, i8** @gl_buf, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* @gl_cnt, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @gl_cnt, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @gl_cnt, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %72
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @gl_cnt, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @GL_BUF_SIZE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i64, i64* @gl_ellipses_during_completion, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 (...) @gl_beep()
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* @gl_cnt, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %82
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (...) @gl_beep()
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* @gl_fixup.off_right, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @gl_fixup.off_left, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @gl_fixup.gl_shift, align 4
  %112 = load i32, i32* @gl_width, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* @gl_scroll, align 4
  %115 = sdiv i32 %114, 2
  %116 = sub nsw i32 %113, %115
  %117 = icmp slt i32 %110, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109, %103
  store i32 2, i32* %12, align 4
  br label %120

119:                                              ; preds = %109, %106
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @gl_scroll, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* @gl_width, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %120
  %131 = load i32, i32* @gl_scroll, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sdiv i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* @gl_scroll, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %138

137:                                              ; preds = %120
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %137, %130
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @gl_fixup.gl_shift, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %138
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* @gl_fixup.gl_shift, align 4
  %144 = load i32, i32* @gl_fixup.gl_shift, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  store i32 %147, i32* @gl_fixup.off_left, align 4
  %148 = load i32, i32* @gl_cnt, align 4
  %149 = load i32, i32* @gl_fixup.gl_shift, align 4
  %150 = load i32, i32* @gl_width, align 4
  %151 = add nsw i32 %149, %150
  %152 = sub nsw i32 %151, 1
  %153 = icmp sgt i32 %148, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  store i32 %155, i32* @gl_fixup.off_right, align 4
  %156 = load i32, i32* @gl_fixup.gl_shift, align 4
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* @gl_fixup.off_right, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %142
  %160 = load i32, i32* @gl_fixup.gl_shift, align 4
  %161 = load i32, i32* @gl_width, align 4
  %162 = add nsw i32 %160, %161
  %163 = sub nsw i32 %162, 2
  br label %166

164:                                              ; preds = %142
  %165 = load i32, i32* @gl_cnt, align 4
  br label %166

166:                                              ; preds = %164, %159
  %167 = phi i32 [ %163, %159 ], [ %165, %164 ]
  store i32 %167, i32* %8, align 4
  store i32 %167, i32* %14, align 4
  br label %221

168:                                              ; preds = %138
  %169 = load i32, i32* %5, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %220

171:                                              ; preds = %168
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @gl_fixup.gl_shift, align 4
  %174 = load i32, i32* @gl_fixup.off_left, align 4
  %175 = add nsw i32 %173, %174
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* @gl_fixup.gl_shift, align 4
  store i32 %178, i32* %7, align 4
  br label %184

179:                                              ; preds = %171
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* @gl_pos, align 4
  %182 = load i32, i32* %5, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %179, %177
  %185 = load i32, i32* @gl_cnt, align 4
  %186 = load i32, i32* @gl_fixup.gl_shift, align 4
  %187 = load i32, i32* @gl_width, align 4
  %188 = add nsw i32 %186, %187
  %189 = sub nsw i32 %188, 1
  %190 = icmp sgt i32 %185, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 1, i32 0
  store i32 %192, i32* @gl_fixup.off_right, align 4
  %193 = load i32, i32* @gl_fixup.off_right, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %184
  %196 = load i32, i32* @gl_fixup.gl_shift, align 4
  %197 = load i32, i32* @gl_width, align 4
  %198 = add nsw i32 %196, %197
  %199 = sub nsw i32 %198, 2
  br label %202

200:                                              ; preds = %184
  %201 = load i32, i32* @gl_cnt, align 4
  br label %202

202:                                              ; preds = %200, %195
  %203 = phi i32 [ %199, %195 ], [ %201, %200 ]
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* @gl_extent, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @gl_extent, align 4
  %210 = add nsw i32 %208, %209
  %211 = icmp sgt i32 %207, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @gl_extent, align 4
  %215 = add nsw i32 %213, %214
  br label %218

216:                                              ; preds = %206, %202
  %217 = load i32, i32* %8, align 4
  br label %218

218:                                              ; preds = %216, %212
  %219 = phi i32 [ %215, %212 ], [ %217, %216 ]
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %218, %168
  br label %221

221:                                              ; preds = %220, %166
  %222 = load i32, i32* @gl_fixup.off_right, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @gl_width, align 4
  %226 = sub nsw i32 %225, 1
  br label %231

227:                                              ; preds = %221
  %228 = load i32, i32* @gl_cnt, align 4
  %229 = load i32, i32* @gl_fixup.gl_shift, align 4
  %230 = sub nsw i32 %228, %229
  br label %231

231:                                              ; preds = %227, %224
  %232 = phi i32 [ %226, %224 ], [ %230, %227 ]
  %233 = load i32, i32* %9, align 4
  %234 = sub nsw i32 %233, %232
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %240

238:                                              ; preds = %231
  %239 = load i32, i32* %9, align 4
  br label %240

240:                                              ; preds = %238, %237
  %241 = phi i32 [ 0, %237 ], [ %239, %238 ]
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp sle i32 %242, %243
  br i1 %244, label %245, label %309

245:                                              ; preds = %240
  store i32 0, i32* %13, align 4
  br label %246

246:                                              ; preds = %252, %245
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = call i32 @gl_putc(i8 signext 8)
  br label %252

252:                                              ; preds = %250
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %13, align 4
  br label %246

255:                                              ; preds = %246
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @gl_fixup.gl_shift, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %255
  %260 = load i32, i32* @gl_fixup.off_left, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = call i32 @gl_putc(i8 signext 36)
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %266

266:                                              ; preds = %262, %259, %255
  %267 = load i32, i32* %7, align 4
  store i32 %267, i32* %13, align 4
  br label %268

268:                                              ; preds = %279, %266
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = load i8*, i8** @gl_buf, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = call i32 @gl_putc(i8 signext %277)
  br label %279

279:                                              ; preds = %272
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  br label %268

282:                                              ; preds = %268
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* @gl_pos, align 4
  %284 = load i32, i32* @gl_fixup.off_right, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %282
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %8, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = call i32 @gl_putc(i8 signext 36)
  %292 = load i32, i32* @gl_pos, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* @gl_pos, align 4
  br label %308

294:                                              ; preds = %286, %282
  store i32 0, i32* %13, align 4
  br label %295

295:                                              ; preds = %301, %294
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %295
  %300 = call i32 @gl_putc(i8 signext 32)
  br label %301

301:                                              ; preds = %299
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %13, align 4
  br label %295

304:                                              ; preds = %295
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* @gl_pos, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* @gl_pos, align 4
  br label %308

308:                                              ; preds = %304, %290
  br label %309

309:                                              ; preds = %308, %240
  %310 = load i32, i32* @gl_pos, align 4
  %311 = load i32, i32* %6, align 4
  %312 = sub nsw i32 %310, %311
  store i32 %312, i32* %13, align 4
  %313 = load i32, i32* %13, align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %309
  br label %316

316:                                              ; preds = %320, %315
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %13, align 4
  %319 = icmp ne i32 %317, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = call i32 @gl_putc(i8 signext 8)
  br label %316

322:                                              ; preds = %316
  br label %340

323:                                              ; preds = %309
  %324 = load i32, i32* @gl_pos, align 4
  store i32 %324, i32* %13, align 4
  br label %325

325:                                              ; preds = %336, %323
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %6, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %339

329:                                              ; preds = %325
  %330 = load i8*, i8** @gl_buf, align 8
  %331 = load i32, i32* %13, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = call i32 @gl_putc(i8 signext %334)
  br label %336

336:                                              ; preds = %329
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %13, align 4
  br label %325

339:                                              ; preds = %325
  br label %340

340:                                              ; preds = %339, %322
  %341 = load i32, i32* %6, align 4
  store i32 %341, i32* @gl_pos, align 4
  ret void
}

declare dso_local i32 @gl_putc(i8 signext) #1

declare dso_local i32 @gl_puts(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @gl_strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gl_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
