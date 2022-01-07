; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_popupmnu.c_pum_redraw.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_popupmnu.c_pum_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i64 }

@pum_row = common dso_local global i32 0, align 4
@highlight_attr = common dso_local global i32* null, align 8
@HLF_PNI = common dso_local global i64 0, align 8
@HLF_PSI = common dso_local global i64 0, align 8
@HLF_PSB = common dso_local global i64 0, align 8
@HLF_PST = common dso_local global i64 0, align 8
@pum_first = common dso_local global i32 0, align 4
@pum_size = common dso_local global i32 0, align 4
@pum_height = common dso_local global i32 0, align 4
@pum_scrollbar = common dso_local global i64 0, align 8
@pum_selected = common dso_local global i32 0, align 4
@pum_col = common dso_local global i32 0, align 4
@pum_array = common dso_local global %struct.TYPE_5__* null, align 8
@NUL = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@pum_width = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@pum_kind_width = common dso_local global i32 0, align 4
@pum_base_width = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_6__* null, align 8
@has_mbyte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pum_redraw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = load i32, i32* @pum_row, align 4
  store i32 %21, i32* %1, align 4
  %22 = load i32*, i32** @highlight_attr, align 8
  %23 = load i64, i64* @HLF_PNI, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32*, i32** @highlight_attr, align 8
  %27 = load i64, i64* @HLF_PSI, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32*, i32** @highlight_attr, align 8
  %31 = load i64, i64* @HLF_PSB, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** @highlight_attr, align 8
  %35 = load i64, i64* @HLF_PST, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %38 = load i32, i32* @pum_first, align 4
  %39 = load i32, i32* @pum_size, align 4
  %40 = load i32, i32* @pum_height, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %0
  %44 = load i32, i32* @pum_size, align 4
  %45 = load i32, i32* @pum_height, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* @pum_first, align 4
  br label %47

47:                                               ; preds = %43, %0
  %48 = load i64, i64* @pum_scrollbar, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32, i32* @pum_height, align 4
  %52 = load i32, i32* @pum_height, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* @pum_size, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32, i32* @pum_first, align 4
  %61 = load i32, i32* @pum_height, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 %61, %62
  %64 = mul nsw i32 %60, %63
  %65 = load i32, i32* @pum_size, align 4
  %66 = load i32, i32* @pum_height, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sdiv i32 %67, 2
  %69 = add nsw i32 %64, %68
  %70 = load i32, i32* @pum_size, align 4
  %71 = load i32, i32* @pum_height, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sdiv i32 %69, %72
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %59, %47
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %310, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @pum_height, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %313

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @pum_first, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @pum_selected, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %4, align 4
  br label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @pum_col, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @pum_col, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @screen_putchar(i8 signext 32, i32 %95, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i32, i32* @pum_col, align 4
  store i32 %101, i32* %2, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %17, align 4
  br label %102

102:                                              ; preds = %271, %100
  %103 = load i32, i32* %17, align 4
  %104 = icmp sle i32 %103, 3
  br i1 %104, label %105, label %274

105:                                              ; preds = %102
  store i32 0, i32* %13, align 4
  store i32* null, i32** %10, align 8
  %106 = load i32, i32* %17, align 4
  switch i32 %106, label %128 [
    i32 1, label %107
    i32 2, label %114
    i32 3, label %121
  ]

107:                                              ; preds = %105
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pum_array, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %11, align 8
  br label %128

114:                                              ; preds = %105
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pum_array, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %11, align 8
  br label %128

121:                                              ; preds = %105
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pum_array, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %11, align 8
  br label %128

128:                                              ; preds = %105, %121, %114, %107
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %204

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %200, %131
  %133 = load i32*, i32** %10, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32*, i32** %11, align 8
  store i32* %136, i32** %10, align 8
  br label %137

137:                                              ; preds = %135, %132
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @ptr2cells(i32* %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NUL, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %155, label %144

144:                                              ; preds = %137
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @TAB, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* @pum_width, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %195

155:                                              ; preds = %149, %144, %137
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* @NUL, align 4
  %159 = load i32*, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = call i32* @transstr(i32* %160)
  store i32* %161, i32** %19, align 8
  %162 = load i32, i32* %20, align 4
  %163 = load i32*, i32** %11, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32*, i32** %19, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %155
  %167 = load i32*, i32** %19, align 8
  %168 = load i32*, i32** %19, align 8
  %169 = call i64 @STRLEN(i32* %168)
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* %1, align 4
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @screen_puts_len(i32* %167, i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = load i32*, i32** %19, align 8
  %176 = call i32 @vim_free(i32* %175)
  br label %177

177:                                              ; preds = %166, %155
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %2, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %2, align 4
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TAB, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %203

186:                                              ; preds = %177
  %187 = load i32, i32* %1, align 4
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @screen_puts_len(i32* bitcast ([3 x i8]* @.str to i32*), i32 2, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %2, align 4
  %192 = add nsw i32 %191, 2
  store i32 %192, i32* %2, align 4
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %12, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %199

195:                                              ; preds = %149
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %13, align 4
  br label %199

199:                                              ; preds = %195, %186
  br label %200

200:                                              ; preds = %199
  %201 = load i32*, i32** %11, align 8
  %202 = call i32 @mb_ptr_adv(i32* %201)
  br label %132

203:                                              ; preds = %185
  br label %204

204:                                              ; preds = %203, %128
  %205 = load i32, i32* %17, align 4
  %206 = icmp sgt i32 %205, 1
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* @pum_kind_width, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %18, align 4
  br label %211

210:                                              ; preds = %204
  store i32 1, i32* %18, align 4
  br label %211

211:                                              ; preds = %210, %207
  %212 = load i32, i32* %17, align 4
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %250, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* %17, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %225

217:                                              ; preds = %214
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pum_array, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %250, label %225

225:                                              ; preds = %217, %214
  %226 = load i32, i32* %17, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %244

228:                                              ; preds = %225
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pum_array, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %244

236:                                              ; preds = %228
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pum_array, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = icmp eq i32* %242, null
  br i1 %243, label %250, label %244

244:                                              ; preds = %236, %228, %225
  %245 = load i32, i32* @pum_base_width, align 4
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* @pum_width, align 4
  %249 = icmp sge i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %244, %236, %217, %211
  br label %274

251:                                              ; preds = %244
  %252 = load i32, i32* %1, align 4
  %253 = load i32, i32* %1, align 4
  %254 = add nsw i32 %253, 1
  %255 = load i32, i32* %2, align 4
  %256 = load i32, i32* @pum_col, align 4
  %257 = load i32, i32* @pum_base_width, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* %18, align 4
  %260 = add nsw i32 %258, %259
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @screen_fill(i32 %252, i32 %254, i32 %255, i32 %260, i8 signext 32, i8 signext 32, i32 %261)
  %263 = load i32, i32* @pum_col, align 4
  %264 = load i32, i32* @pum_base_width, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* %18, align 4
  %267 = add nsw i32 %265, %266
  store i32 %267, i32* %2, align 4
  %268 = load i32, i32* @pum_base_width, align 4
  %269 = load i32, i32* %18, align 4
  %270 = add nsw i32 %268, %269
  store i32 %270, i32* %12, align 4
  br label %271

271:                                              ; preds = %251
  %272 = load i32, i32* %17, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %17, align 4
  br label %102

274:                                              ; preds = %250, %102
  %275 = load i32, i32* %1, align 4
  %276 = load i32, i32* %1, align 4
  %277 = add nsw i32 %276, 1
  %278 = load i32, i32* %2, align 4
  %279 = load i32, i32* @pum_col, align 4
  %280 = load i32, i32* @pum_width, align 4
  %281 = add nsw i32 %279, %280
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @screen_fill(i32 %275, i32 %277, i32 %278, i32 %281, i8 signext 32, i8 signext 32, i32 %282)
  %284 = load i64, i64* @pum_scrollbar, align 8
  %285 = icmp sgt i64 %284, 0
  br i1 %285, label %286, label %307

286:                                              ; preds = %274
  %287 = load i32, i32* %1, align 4
  %288 = load i32, i32* @pum_col, align 4
  %289 = load i32, i32* @pum_width, align 4
  %290 = add nsw i32 %288, %289
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %15, align 4
  %293 = icmp sge i32 %291, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %286
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %296, %297
  %299 = icmp slt i32 %295, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %294
  %301 = load i32, i32* %6, align 4
  br label %304

302:                                              ; preds = %294, %286
  %303 = load i32, i32* %5, align 4
  br label %304

304:                                              ; preds = %302, %300
  %305 = phi i32 [ %301, %300 ], [ %303, %302 ]
  %306 = call i32 @screen_putchar(i8 signext 32, i32 %287, i32 %290, i32 %305)
  br label %307

307:                                              ; preds = %304, %274
  %308 = load i32, i32* %1, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %1, align 4
  br label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %8, align 4
  br label %75

313:                                              ; preds = %75
  ret void
}

declare dso_local i32 @screen_putchar(i8 signext, i32, i32, i32) #1

declare dso_local i32 @ptr2cells(i32*) #1

declare dso_local i32* @transstr(i32*) #1

declare dso_local i32 @screen_puts_len(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32 @mb_ptr_adv(i32*) #1

declare dso_local i32 @screen_fill(i32, i32, i32, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
