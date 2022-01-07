; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_make_page_offset_hints.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_make_page_offset_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64*, i32, i64 }

@USE_SHARED = common dso_local global i32 0, align 4
@USE_CATALOGUE = common dso_local global i32 0, align 4
@USE_HINTS = common dso_local global i32 0, align 4
@USE_PARAMS = common dso_local global i32 0, align 4
@USE_PAGE1 = common dso_local global i32 0, align 4
@USE_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*, i32*)* @make_page_offset_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_page_offset_hints(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_7__**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_7__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %18, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 0
  store %struct.TYPE_7__** %44, %struct.TYPE_7__*** %21, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @pdf_xref_len(i32* %45, i32* %46)
  store i32 %47, i32* %26, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @pdf_xref_len(i32* %48, i32* %49)
  store i32 %50, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %276, %4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %26, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %279

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %27, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %58
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %26, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %58
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %28, align 4
  br label %107

86:                                               ; preds = %77, %72
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %26, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %28, align 4
  br label %106

97:                                               ; preds = %86
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %28, align 4
  br label %106

106:                                              ; preds = %97, %91
  br label %107

107:                                              ; preds = %106, %82
  %108 = load i32, i32* %28, align 4
  %109 = load i32, i32* %27, align 4
  %110 = icmp sgt i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @USE_SHARED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %107
  store i32 -1, i32* %29, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %28, align 4
  %138 = load i32, i32* %27, align 4
  %139 = sub nsw i32 %137, %138
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %27, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %19, align 4
  br label %145

145:                                              ; preds = %141, %135
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %28, align 4
  %148 = load i32, i32* %27, align 4
  %149 = sub nsw i32 %147, %148
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* %28, align 4
  %153 = load i32, i32* %27, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %151, %145
  br label %227

156:                                              ; preds = %107
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @USE_CATALOGUE, align 4
  %165 = load i32, i32* @USE_HINTS, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @USE_PARAMS, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %163, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  store i32 -1, i32* %29, align 4
  br label %226

172:                                              ; preds = %156
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @USE_PAGE1, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %172
  store i32 0, i32* %29, align 4
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %28, align 4
  %186 = load i32, i32* %27, align 4
  %187 = sub nsw i32 %185, %186
  %188 = icmp sgt i32 %184, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i32, i32* %28, align 4
  %191 = load i32, i32* %27, align 4
  %192 = sub nsw i32 %190, %191
  store i32 %192, i32* %19, align 4
  br label %193

193:                                              ; preds = %189, %183
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %28, align 4
  %196 = load i32, i32* %27, align 4
  %197 = sub nsw i32 %195, %196
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* %27, align 4
  %202 = sub nsw i32 %200, %201
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %199, %193
  br label %225

204:                                              ; preds = %172
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  store i32 -1, i32* %29, align 4
  br label %224

214:                                              ; preds = %204
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @USE_PAGE_SHIFT, align 4
  %223 = ashr i32 %221, %222
  store i32 %223, i32* %29, align 4
  br label %224

224:                                              ; preds = %214, %213
  br label %225

225:                                              ; preds = %224, %203
  br label %226

226:                                              ; preds = %225, %171
  br label %227

227:                                              ; preds = %226, %155
  %228 = load i32, i32* %29, align 4
  %229 = icmp sge i32 %228, 0
  br i1 %229, label %230, label %275

230:                                              ; preds = %227
  %231 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %232 = load i32, i32* %29, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %231, i64 %233
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  %239 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %240 = load i32, i32* %29, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %239, i64 %241
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %27, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %230
  %249 = load i32, i32* %27, align 4
  %250 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %251 = load i32, i32* %29, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %250, i64 %252
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  store i32 %249, i32* %255, align 4
  br label %256

256:                                              ; preds = %248, %230
  %257 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %258 = load i32, i32* %29, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %257, i64 %259
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %28, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %256
  %267 = load i32, i32* %28, align 4
  %268 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %269 = load i32, i32* %29, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %268, i64 %270
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  store i32 %267, i32* %273, align 8
  br label %274

274:                                              ; preds = %266, %256
  br label %275

275:                                              ; preds = %274, %227
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %54

279:                                              ; preds = %54
  %280 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %280, i64 0
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  store i32 %284, i32* %12, align 4
  store i32 %284, i32* %11, align 4
  %285 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %285, i64 0
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %290, i64 0
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %289, %294
  store i32 %295, i32* %14, align 4
  store i32 %295, i32* %13, align 4
  store i32 1, i32* %9, align 4
  br label %296

296:                                              ; preds = %366, %279
  %297 = load i32, i32* %9, align 4
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 8
  %301 = icmp slt i32 %297, %300
  br i1 %301, label %302, label %369

302:                                              ; preds = %296
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %304, i64 %306
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp sgt i32 %303, %310
  br i1 %311, label %312, label %320

312:                                              ; preds = %302
  %313 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %313, i64 %315
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  store i32 %319, i32* %11, align 4
  br label %320

320:                                              ; preds = %312, %302
  %321 = load i32, i32* %12, align 4
  %322 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %322, i64 %324
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp slt i32 %321, %328
  br i1 %329, label %330, label %338

330:                                              ; preds = %320
  %331 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %331, i64 %333
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  store i32 %337, i32* %12, align 4
  br label %338

338:                                              ; preds = %330, %320
  %339 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %340 = load i32, i32* %9, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %339, i64 %341
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %346, i64 %348
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = sub nsw i32 %345, %352
  store i32 %353, i32* %30, align 4
  %354 = load i32, i32* %30, align 4
  %355 = load i32, i32* %13, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %338
  %358 = load i32, i32* %30, align 4
  store i32 %358, i32* %13, align 4
  br label %359

359:                                              ; preds = %357, %338
  %360 = load i32, i32* %30, align 4
  %361 = load i32, i32* %14, align 4
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = load i32, i32* %30, align 4
  store i32 %364, i32* %14, align 4
  br label %365

365:                                              ; preds = %363, %359
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %9, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %9, align 4
  br label %296

369:                                              ; preds = %296
  store i32 0, i32* %9, align 4
  br label %370

370:                                              ; preds = %454, %369
  %371 = load i32, i32* %9, align 4
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 8
  %375 = icmp slt i32 %371, %374
  br i1 %375, label %376, label %457

376:                                              ; preds = %370
  store i32 0, i32* %31, align 4
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 7
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %380, align 8
  %382 = load i32, i32* %9, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %381, i64 %383
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %384, align 8
  store %struct.TYPE_7__* %385, %struct.TYPE_7__** %32, align 8
  store i32 0, i32* %10, align 4
  br label %386

386:                                              ; preds = %438, %376
  %387 = load i32, i32* %10, align 4
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = icmp slt i32 %387, %390
  br i1 %391, label %392, label %441

392:                                              ; preds = %386
  %393 = load i32, i32* %9, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %414

395:                                              ; preds = %392
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 4
  %398 = load i32*, i32** %397, align 8
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 4
  %401 = load i64*, i64** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds i32, i32* %398, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @USE_PAGE1, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %395
  %412 = load i32, i32* %31, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %31, align 4
  br label %437

414:                                              ; preds = %395, %392
  %415 = load i32, i32* %9, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %436

417:                                              ; preds = %414
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 4
  %420 = load i32*, i32** %419, align 8
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i32 0, i32 4
  %423 = load i64*, i64** %422, align 8
  %424 = load i32, i32* %10, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i64, i64* %423, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds i32, i32* %420, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @USE_SHARED, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %417
  %434 = load i32, i32* %31, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %31, align 4
  br label %436

436:                                              ; preds = %433, %417, %414
  br label %437

437:                                              ; preds = %436, %411
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %10, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %10, align 4
  br label %386

441:                                              ; preds = %386
  %442 = load i32, i32* %31, align 4
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 5
  store i32 %442, i32* %444, align 8
  %445 = load i32, i32* %9, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %441
  %448 = load i32, i32* %31, align 4
  %449 = load i32, i32* %18, align 4
  %450 = icmp sgt i32 %448, %449
  br i1 %450, label %451, label %453

451:                                              ; preds = %447, %441
  %452 = load i32, i32* %31, align 4
  store i32 %452, i32* %18, align 4
  br label %453

453:                                              ; preds = %451, %447
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %9, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %9, align 4
  br label %370

457:                                              ; preds = %370
  %458 = load i32, i32* %16, align 4
  %459 = load i32, i32* %17, align 4
  %460 = icmp sgt i32 %458, %459
  br i1 %460, label %461, label %462

461:                                              ; preds = %457
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %462

462:                                              ; preds = %461, %457
  %463 = load i32*, i32** %5, align 8
  %464 = load i32*, i32** %8, align 8
  %465 = load i32, i32* %11, align 4
  %466 = call i32 @fz_append_bits(i32* %463, i32* %464, i32 %465, i32 32)
  %467 = load i32*, i32** %5, align 8
  %468 = load i32*, i32** %8, align 8
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 1
  %471 = load i32*, i32** %470, align 8
  %472 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %473 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %472, i64 0
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 6
  %476 = load i64, i64* %475, align 8
  %477 = getelementptr inbounds i32, i32* %471, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @fz_append_bits(i32* %467, i32* %468, i32 %478, i32 32)
  %480 = load i32, i32* %12, align 4
  %481 = load i32, i32* %11, align 4
  %482 = sub nsw i32 %480, %481
  %483 = call i32 @my_log2(i32 %482)
  store i32 %483, i32* %15, align 4
  %484 = load i32*, i32** %5, align 8
  %485 = load i32*, i32** %8, align 8
  %486 = load i32, i32* %15, align 4
  %487 = call i32 @fz_append_bits(i32* %484, i32* %485, i32 %486, i32 16)
  %488 = load i32*, i32** %5, align 8
  %489 = load i32*, i32** %8, align 8
  %490 = load i32, i32* %13, align 4
  %491 = call i32 @fz_append_bits(i32* %488, i32* %489, i32 %490, i32 32)
  %492 = load i32, i32* %14, align 4
  %493 = load i32, i32* %13, align 4
  %494 = sub nsw i32 %492, %493
  %495 = call i32 @my_log2(i32 %494)
  store i32 %495, i32* %22, align 4
  %496 = load i32*, i32** %5, align 8
  %497 = load i32*, i32** %8, align 8
  %498 = load i32, i32* %22, align 4
  %499 = call i32 @fz_append_bits(i32* %496, i32* %497, i32 %498, i32 16)
  %500 = load i32*, i32** %5, align 8
  %501 = load i32*, i32** %8, align 8
  %502 = call i32 @fz_append_bits(i32* %500, i32* %501, i32 0, i32 32)
  %503 = load i32*, i32** %5, align 8
  %504 = load i32*, i32** %8, align 8
  %505 = call i32 @fz_append_bits(i32* %503, i32* %504, i32 0, i32 16)
  %506 = load i32*, i32** %5, align 8
  %507 = load i32*, i32** %8, align 8
  %508 = call i32 @fz_append_bits(i32* %506, i32* %507, i32 0, i32 32)
  %509 = load i32*, i32** %5, align 8
  %510 = load i32*, i32** %8, align 8
  %511 = load i32, i32* %22, align 4
  %512 = call i32 @fz_append_bits(i32* %509, i32* %510, i32 %511, i32 16)
  %513 = load i32, i32* %18, align 4
  %514 = call i32 @my_log2(i32 %513)
  store i32 %514, i32* %23, align 4
  %515 = load i32*, i32** %5, align 8
  %516 = load i32*, i32** %8, align 8
  %517 = load i32, i32* %23, align 4
  %518 = call i32 @fz_append_bits(i32* %515, i32* %516, i32 %517, i32 16)
  %519 = load i32, i32* %17, align 4
  %520 = load i32, i32* %16, align 4
  %521 = sub nsw i32 %519, %520
  %522 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %523 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %522, i64 0
  %524 = load %struct.TYPE_7__*, %struct.TYPE_7__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %524, i32 0, i32 5
  %526 = load i32, i32* %525, align 8
  %527 = add nsw i32 %521, %526
  %528 = call i32 @my_log2(i32 %527)
  store i32 %528, i32* %24, align 4
  %529 = load i32*, i32** %5, align 8
  %530 = load i32*, i32** %8, align 8
  %531 = load i32, i32* %24, align 4
  %532 = call i32 @fz_append_bits(i32* %529, i32* %530, i32 %531, i32 16)
  %533 = load i32*, i32** %5, align 8
  %534 = load i32*, i32** %8, align 8
  %535 = call i32 @fz_append_bits(i32* %533, i32* %534, i32 0, i32 16)
  %536 = load i32*, i32** %5, align 8
  %537 = load i32*, i32** %8, align 8
  %538 = call i32 @fz_append_bits(i32* %536, i32* %537, i32 0, i32 16)
  store i32 0, i32* %9, align 4
  br label %539

539:                                              ; preds = %559, %462
  %540 = load i32, i32* %9, align 4
  %541 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 5
  %543 = load i32, i32* %542, align 8
  %544 = icmp slt i32 %540, %543
  br i1 %544, label %545, label %562

545:                                              ; preds = %539
  %546 = load i32*, i32** %5, align 8
  %547 = load i32*, i32** %8, align 8
  %548 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %549 = load i32, i32* %9, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %548, i64 %550
  %552 = load %struct.TYPE_7__*, %struct.TYPE_7__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = load i32, i32* %11, align 4
  %556 = sub nsw i32 %554, %555
  %557 = load i32, i32* %15, align 4
  %558 = call i32 @fz_append_bits(i32* %546, i32* %547, i32 %556, i32 %557)
  br label %559

559:                                              ; preds = %545
  %560 = load i32, i32* %9, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %9, align 4
  br label %539

562:                                              ; preds = %539
  %563 = load i32*, i32** %5, align 8
  %564 = load i32*, i32** %8, align 8
  %565 = call i32 @fz_append_bits_pad(i32* %563, i32* %564)
  store i32 0, i32* %9, align 4
  br label %566

566:                                              ; preds = %594, %562
  %567 = load i32, i32* %9, align 4
  %568 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 5
  %570 = load i32, i32* %569, align 8
  %571 = icmp slt i32 %567, %570
  br i1 %571, label %572, label %597

572:                                              ; preds = %566
  %573 = load i32*, i32** %5, align 8
  %574 = load i32*, i32** %8, align 8
  %575 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %576 = load i32, i32* %9, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %575, i64 %577
  %579 = load %struct.TYPE_7__*, %struct.TYPE_7__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  %582 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %583 = load i32, i32* %9, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %582, i64 %584
  %586 = load %struct.TYPE_7__*, %struct.TYPE_7__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = sub nsw i32 %581, %588
  %590 = load i32, i32* %13, align 4
  %591 = sub nsw i32 %589, %590
  %592 = load i32, i32* %22, align 4
  %593 = call i32 @fz_append_bits(i32* %573, i32* %574, i32 %591, i32 %592)
  br label %594

594:                                              ; preds = %572
  %595 = load i32, i32* %9, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %9, align 4
  br label %566

597:                                              ; preds = %566
  %598 = load i32*, i32** %5, align 8
  %599 = load i32*, i32** %8, align 8
  %600 = call i32 @fz_append_bits_pad(i32* %598, i32* %599)
  store i32 0, i32* %9, align 4
  br label %601

601:                                              ; preds = %619, %597
  %602 = load i32, i32* %9, align 4
  %603 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %604 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %603, i32 0, i32 5
  %605 = load i32, i32* %604, align 8
  %606 = icmp slt i32 %602, %605
  br i1 %606, label %607, label %622

607:                                              ; preds = %601
  %608 = load i32*, i32** %5, align 8
  %609 = load i32*, i32** %8, align 8
  %610 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %611 = load i32, i32* %9, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %610, i64 %612
  %614 = load %struct.TYPE_7__*, %struct.TYPE_7__** %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %614, i32 0, i32 5
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* %23, align 4
  %618 = call i32 @fz_append_bits(i32* %608, i32* %609, i32 %616, i32 %617)
  br label %619

619:                                              ; preds = %607
  %620 = load i32, i32* %9, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %9, align 4
  br label %601

622:                                              ; preds = %601
  %623 = load i32*, i32** %5, align 8
  %624 = load i32*, i32** %8, align 8
  %625 = call i32 @fz_append_bits_pad(i32* %623, i32* %624)
  store i32 0, i32* %9, align 4
  br label %626

626:                                              ; preds = %707, %622
  %627 = load i32, i32* %9, align 4
  %628 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %629 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %628, i32 0, i32 5
  %630 = load i32, i32* %629, align 8
  %631 = icmp slt i32 %627, %630
  br i1 %631, label %632, label %710

632:                                              ; preds = %626
  store i32 0, i32* %10, align 4
  br label %633

633:                                              ; preds = %703, %632
  %634 = load i32, i32* %10, align 4
  %635 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %636 = load i32, i32* %9, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %635, i64 %637
  %639 = load %struct.TYPE_7__*, %struct.TYPE_7__** %638, align 8
  %640 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 4
  %642 = icmp slt i32 %634, %641
  br i1 %642, label %643, label %706

643:                                              ; preds = %633
  %644 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %645 = load i32, i32* %9, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %644, i64 %646
  %648 = load %struct.TYPE_7__*, %struct.TYPE_7__** %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %648, i32 0, i32 4
  %650 = load i64*, i64** %649, align 8
  %651 = load i32, i32* %10, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i64, i64* %650, i64 %652
  %654 = load i64, i64* %653, align 8
  %655 = trunc i64 %654 to i32
  store i32 %655, i32* %33, align 4
  %656 = load i32, i32* %9, align 4
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %674

658:                                              ; preds = %643
  %659 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %660 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %659, i32 0, i32 4
  %661 = load i32*, i32** %660, align 8
  %662 = load i32, i32* %33, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %661, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = load i32, i32* @USE_PAGE1, align 4
  %667 = and i32 %665, %666
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %674

669:                                              ; preds = %658
  %670 = load i32*, i32** %5, align 8
  %671 = load i32*, i32** %8, align 8
  %672 = load i32, i32* %24, align 4
  %673 = call i32 @fz_append_bits(i32* %670, i32* %671, i32 0, i32 %672)
  br label %674

674:                                              ; preds = %669, %658, %643
  %675 = load i32, i32* %9, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %702

677:                                              ; preds = %674
  %678 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %679 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %678, i32 0, i32 4
  %680 = load i32*, i32** %679, align 8
  %681 = load i32, i32* %33, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, i32* %680, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* @USE_SHARED, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %702

688:                                              ; preds = %677
  %689 = load i32*, i32** %5, align 8
  %690 = load i32*, i32** %8, align 8
  %691 = load i32, i32* %33, align 4
  %692 = load i32, i32* %16, align 4
  %693 = sub nsw i32 %691, %692
  %694 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %695 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %694, i64 0
  %696 = load %struct.TYPE_7__*, %struct.TYPE_7__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %696, i32 0, i32 5
  %698 = load i32, i32* %697, align 8
  %699 = add nsw i32 %693, %698
  %700 = load i32, i32* %24, align 4
  %701 = call i32 @fz_append_bits(i32* %689, i32* %690, i32 %699, i32 %700)
  br label %702

702:                                              ; preds = %688, %677, %674
  br label %703

703:                                              ; preds = %702
  %704 = load i32, i32* %10, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %10, align 4
  br label %633

706:                                              ; preds = %633
  br label %707

707:                                              ; preds = %706
  %708 = load i32, i32* %9, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %9, align 4
  br label %626

710:                                              ; preds = %626
  %711 = load i32*, i32** %5, align 8
  %712 = load i32*, i32** %8, align 8
  %713 = call i32 @fz_append_bits_pad(i32* %711, i32* %712)
  store i32 0, i32* %9, align 4
  br label %714

714:                                              ; preds = %742, %710
  %715 = load i32, i32* %9, align 4
  %716 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %717 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %716, i32 0, i32 5
  %718 = load i32, i32* %717, align 8
  %719 = icmp slt i32 %715, %718
  br i1 %719, label %720, label %745

720:                                              ; preds = %714
  %721 = load i32*, i32** %5, align 8
  %722 = load i32*, i32** %8, align 8
  %723 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %724 = load i32, i32* %9, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %723, i64 %725
  %727 = load %struct.TYPE_7__*, %struct.TYPE_7__** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %727, i32 0, i32 2
  %729 = load i32, i32* %728, align 8
  %730 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %731 = load i32, i32* %9, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %730, i64 %732
  %734 = load %struct.TYPE_7__*, %struct.TYPE_7__** %733, align 8
  %735 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %734, i32 0, i32 1
  %736 = load i32, i32* %735, align 4
  %737 = sub nsw i32 %729, %736
  %738 = load i32, i32* %13, align 4
  %739 = sub nsw i32 %737, %738
  %740 = load i32, i32* %22, align 4
  %741 = call i32 @fz_append_bits(i32* %721, i32* %722, i32 %739, i32 %740)
  br label %742

742:                                              ; preds = %720
  %743 = load i32, i32* %9, align 4
  %744 = add nsw i32 %743, 1
  store i32 %744, i32* %9, align 4
  br label %714

745:                                              ; preds = %714
  %746 = load i32*, i32** %5, align 8
  %747 = load i32*, i32** %8, align 8
  %748 = call i32 @fz_append_bits_pad(i32* %746, i32* %747)
  %749 = load i32*, i32** %5, align 8
  %750 = load i32*, i32** %8, align 8
  %751 = call i64 @fz_buffer_storage(i32* %749, i32* %750, i32* null)
  %752 = trunc i64 %751 to i32
  %753 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %754 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %753, i32 0, i32 6
  store i32 %752, i32* %754, align 4
  %755 = load i32*, i32** %5, align 8
  %756 = load i32*, i32** %8, align 8
  %757 = load i32, i32* %16, align 4
  %758 = call i32 @fz_append_bits(i32* %755, i32* %756, i32 %757, i32 32)
  %759 = load i32*, i32** %5, align 8
  %760 = load i32*, i32** %8, align 8
  %761 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %762 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %761, i32 0, i32 1
  %763 = load i32*, i32** %762, align 8
  %764 = load i32, i32* %16, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i32, i32* %763, i64 %765
  %767 = load i32, i32* %766, align 4
  %768 = call i32 @fz_append_bits(i32* %759, i32* %760, i32 %767, i32 32)
  %769 = load i32*, i32** %5, align 8
  %770 = load i32*, i32** %8, align 8
  %771 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %772 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %771, i64 0
  %773 = load %struct.TYPE_7__*, %struct.TYPE_7__** %772, align 8
  %774 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %773, i32 0, i32 5
  %775 = load i32, i32* %774, align 8
  %776 = call i32 @fz_append_bits(i32* %769, i32* %770, i32 %775, i32 32)
  %777 = load i32*, i32** %5, align 8
  %778 = load i32*, i32** %8, align 8
  %779 = load i32, i32* %17, align 4
  %780 = load i32, i32* %16, align 4
  %781 = sub nsw i32 %779, %780
  %782 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %783 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %782, i64 0
  %784 = load %struct.TYPE_7__*, %struct.TYPE_7__** %783, align 8
  %785 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %784, i32 0, i32 5
  %786 = load i32, i32* %785, align 8
  %787 = add nsw i32 %781, %786
  %788 = call i32 @fz_append_bits(i32* %777, i32* %778, i32 %787, i32 32)
  %789 = load i32*, i32** %5, align 8
  %790 = load i32*, i32** %8, align 8
  %791 = call i32 @fz_append_bits(i32* %789, i32* %790, i32 0, i32 16)
  %792 = load i32*, i32** %5, align 8
  %793 = load i32*, i32** %8, align 8
  %794 = load i32, i32* %19, align 4
  %795 = call i32 @fz_append_bits(i32* %792, i32* %793, i32 %794, i32 32)
  %796 = load i32, i32* %20, align 4
  %797 = load i32, i32* %19, align 4
  %798 = sub nsw i32 %796, %797
  %799 = call i32 @my_log2(i32 %798)
  store i32 %799, i32* %25, align 4
  %800 = load i32*, i32** %5, align 8
  %801 = load i32*, i32** %8, align 8
  %802 = load i32, i32* %25, align 4
  %803 = call i32 @fz_append_bits(i32* %800, i32* %801, i32 %802, i32 16)
  store i32 0, i32* %10, align 4
  br label %804

804:                                              ; preds = %883, %745
  %805 = load i32, i32* %10, align 4
  %806 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %807 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %806, i64 0
  %808 = load %struct.TYPE_7__*, %struct.TYPE_7__** %807, align 8
  %809 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %808, i32 0, i32 3
  %810 = load i32, i32* %809, align 4
  %811 = icmp slt i32 %805, %810
  br i1 %811, label %812, label %886

812:                                              ; preds = %804
  %813 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %814 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %813, i64 0
  %815 = load %struct.TYPE_7__*, %struct.TYPE_7__** %814, align 8
  %816 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %815, i32 0, i32 4
  %817 = load i64*, i64** %816, align 8
  %818 = load i32, i32* %10, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i64, i64* %817, i64 %819
  %821 = load i64, i64* %820, align 8
  %822 = trunc i64 %821 to i32
  store i32 %822, i32* %34, align 4
  %823 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %824 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %823, i32 0, i32 1
  %825 = load i32*, i32** %824, align 8
  %826 = load i32, i32* %34, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32, i32* %825, i64 %827
  %829 = load i32, i32* %828, align 4
  store i32 %829, i32* %35, align 4
  %830 = load i32, i32* %34, align 4
  %831 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %832 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %831, i32 0, i32 2
  %833 = load i32, i32* %832, align 8
  %834 = sub nsw i32 %833, 1
  %835 = icmp eq i32 %830, %834
  br i1 %835, label %836, label %840

836:                                              ; preds = %812
  %837 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %838 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %837, i32 0, i32 3
  %839 = load i32, i32* %838, align 4
  store i32 %839, i32* %36, align 4
  br label %861

840:                                              ; preds = %812
  %841 = load i32, i32* %34, align 4
  %842 = load i32, i32* %26, align 4
  %843 = sub nsw i32 %842, 1
  %844 = icmp slt i32 %841, %843
  br i1 %844, label %845, label %854

845:                                              ; preds = %840
  %846 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %847 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %846, i32 0, i32 1
  %848 = load i32*, i32** %847, align 8
  %849 = load i32, i32* %34, align 4
  %850 = add nsw i32 %849, 1
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds i32, i32* %848, i64 %851
  %853 = load i32, i32* %852, align 4
  store i32 %853, i32* %36, align 4
  br label %860

854:                                              ; preds = %840
  %855 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %856 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %855, i32 0, i32 1
  %857 = load i32*, i32** %856, align 8
  %858 = getelementptr inbounds i32, i32* %857, i64 1
  %859 = load i32, i32* %858, align 4
  store i32 %859, i32* %36, align 4
  br label %860

860:                                              ; preds = %854, %845
  br label %861

861:                                              ; preds = %860, %836
  %862 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %863 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %862, i32 0, i32 4
  %864 = load i32*, i32** %863, align 8
  %865 = load i32, i32* %34, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds i32, i32* %864, i64 %866
  %868 = load i32, i32* %867, align 4
  %869 = load i32, i32* @USE_PAGE1, align 4
  %870 = and i32 %868, %869
  %871 = icmp ne i32 %870, 0
  br i1 %871, label %872, label %882

872:                                              ; preds = %861
  %873 = load i32*, i32** %5, align 8
  %874 = load i32*, i32** %8, align 8
  %875 = load i32, i32* %36, align 4
  %876 = load i32, i32* %35, align 4
  %877 = sub nsw i32 %875, %876
  %878 = load i32, i32* %19, align 4
  %879 = sub nsw i32 %877, %878
  %880 = load i32, i32* %25, align 4
  %881 = call i32 @fz_append_bits(i32* %873, i32* %874, i32 %879, i32 %880)
  br label %882

882:                                              ; preds = %872, %861
  br label %883

883:                                              ; preds = %882
  %884 = load i32, i32* %10, align 4
  %885 = add nsw i32 %884, 1
  store i32 %885, i32* %10, align 4
  br label %804

886:                                              ; preds = %804
  %887 = load i32, i32* %16, align 4
  store i32 %887, i32* %9, align 4
  br label %888

888:                                              ; preds = %941, %886
  %889 = load i32, i32* %9, align 4
  %890 = load i32, i32* %17, align 4
  %891 = icmp sle i32 %889, %890
  br i1 %891, label %892, label %944

892:                                              ; preds = %888
  %893 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %894 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %893, i32 0, i32 1
  %895 = load i32*, i32** %894, align 8
  %896 = load i32, i32* %9, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i32, i32* %895, i64 %897
  %899 = load i32, i32* %898, align 4
  store i32 %899, i32* %37, align 4
  %900 = load i32, i32* %9, align 4
  %901 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %902 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %901, i32 0, i32 2
  %903 = load i32, i32* %902, align 8
  %904 = sub nsw i32 %903, 1
  %905 = icmp eq i32 %900, %904
  br i1 %905, label %906, label %910

906:                                              ; preds = %892
  %907 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %908 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %907, i32 0, i32 3
  %909 = load i32, i32* %908, align 4
  store i32 %909, i32* %38, align 4
  br label %931

910:                                              ; preds = %892
  %911 = load i32, i32* %9, align 4
  %912 = load i32, i32* %26, align 4
  %913 = sub nsw i32 %912, 1
  %914 = icmp slt i32 %911, %913
  br i1 %914, label %915, label %924

915:                                              ; preds = %910
  %916 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %917 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %916, i32 0, i32 1
  %918 = load i32*, i32** %917, align 8
  %919 = load i32, i32* %9, align 4
  %920 = add nsw i32 %919, 1
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i32, i32* %918, i64 %921
  %923 = load i32, i32* %922, align 4
  store i32 %923, i32* %38, align 4
  br label %930

924:                                              ; preds = %910
  %925 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %926 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %925, i32 0, i32 1
  %927 = load i32*, i32** %926, align 8
  %928 = getelementptr inbounds i32, i32* %927, i64 1
  %929 = load i32, i32* %928, align 4
  store i32 %929, i32* %38, align 4
  br label %930

930:                                              ; preds = %924, %915
  br label %931

931:                                              ; preds = %930, %906
  %932 = load i32*, i32** %5, align 8
  %933 = load i32*, i32** %8, align 8
  %934 = load i32, i32* %38, align 4
  %935 = load i32, i32* %37, align 4
  %936 = sub nsw i32 %934, %935
  %937 = load i32, i32* %19, align 4
  %938 = sub nsw i32 %936, %937
  %939 = load i32, i32* %25, align 4
  %940 = call i32 @fz_append_bits(i32* %932, i32* %933, i32 %938, i32 %939)
  br label %941

941:                                              ; preds = %931
  %942 = load i32, i32* %9, align 4
  %943 = add nsw i32 %942, 1
  store i32 %943, i32* %9, align 4
  br label %888

944:                                              ; preds = %888
  %945 = load i32*, i32** %5, align 8
  %946 = load i32*, i32** %8, align 8
  %947 = call i32 @fz_append_bits_pad(i32* %945, i32* %946)
  %948 = load i32, i32* %17, align 4
  %949 = load i32, i32* %16, align 4
  %950 = sub nsw i32 %948, %949
  %951 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %952 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %951, i64 0
  %953 = load %struct.TYPE_7__*, %struct.TYPE_7__** %952, align 8
  %954 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %953, i32 0, i32 5
  %955 = load i32, i32* %954, align 8
  %956 = add nsw i32 %950, %955
  store i32 %956, i32* %9, align 4
  br label %957

957:                                              ; preds = %964, %944
  %958 = load i32, i32* %9, align 4
  %959 = icmp sgt i32 %958, 0
  br i1 %959, label %960, label %967

960:                                              ; preds = %957
  %961 = load i32*, i32** %5, align 8
  %962 = load i32*, i32** %8, align 8
  %963 = call i32 @fz_append_bits(i32* %961, i32* %962, i32 0, i32 1)
  br label %964

964:                                              ; preds = %960
  %965 = load i32, i32* %9, align 4
  %966 = add nsw i32 %965, -1
  store i32 %966, i32* %9, align 4
  br label %957

967:                                              ; preds = %957
  %968 = load i32*, i32** %5, align 8
  %969 = load i32*, i32** %8, align 8
  %970 = call i32 @fz_append_bits_pad(i32* %968, i32* %969)
  %971 = load i32*, i32** %5, align 8
  %972 = load i32*, i32** %8, align 8
  %973 = call i32 @fz_append_bits_pad(i32* %971, i32* %972)
  ret void
}

declare dso_local i32 @pdf_xref_len(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fz_append_bits(i32*, i32*, i32, i32) #1

declare dso_local i32 @my_log2(i32) #1

declare dso_local i32 @fz_append_bits_pad(i32*, i32*) #1

declare dso_local i64 @fz_buffer_storage(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
