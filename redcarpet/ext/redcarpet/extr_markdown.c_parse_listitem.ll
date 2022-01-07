; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_listitem.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_listitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i64 }
%struct.sd_markdown = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@MKDEXT_FENCED_CODE = common dso_local global i32 0, align 4
@MKD_LIST_ORDERED = common dso_local global i32 0, align 4
@MKD_LI_END = common dso_local global i32 0, align 4
@MKD_LI_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i32*)* @parse_listitem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_listitem(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.buf* null, %struct.buf** %12, align 8
  store %struct.buf* null, %struct.buf** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %25

25:                                               ; preds = %41, %5
  %26 = load i64, i64* %18, align 8
  %27 = icmp ult i64 %26, 3
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i64, i64* %18, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %18, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br label %39

39:                                               ; preds = %32, %28, %25
  %40 = phi i1 [ false, %28 ], [ false, %25 ], [ %38, %32 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i64, i64* %18, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %18, align 8
  br label %25

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @prefix_uli(i8* %45, i64 %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @prefix_oli(i8* %51, i64 %52)
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %432

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  store i64 %59, i64* %15, align 8
  br label %60

60:                                               ; preds = %74, %58
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %15, align 8
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 10
  br label %72

72:                                               ; preds = %64, %60
  %73 = phi i1 [ false, %60 ], [ %71, %64 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i64, i64* %15, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %15, align 8
  br label %60

77:                                               ; preds = %72
  %78 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %79 = load i32, i32* @BUFFER_SPAN, align 4
  %80 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %78, i32 %79)
  store %struct.buf* %80, %struct.buf** %12, align 8
  %81 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %82 = load i32, i32* @BUFFER_SPAN, align 4
  %83 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %81, i32 %82)
  store %struct.buf* %83, %struct.buf** %13, align 8
  %84 = load %struct.buf*, %struct.buf** %12, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %14, align 8
  %90 = sub i64 %88, %89
  %91 = call i32 @bufput(%struct.buf* %84, i8* %87, i64 %90)
  %92 = load i64, i64* %15, align 8
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %293, %126, %77
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %307

97:                                               ; preds = %93
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %98 = load i64, i64* %15, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %15, align 8
  br label %100

100:                                              ; preds = %114, %97
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %15, align 8
  %107 = sub i64 %106, 1
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 10
  br label %112

112:                                              ; preds = %104, %100
  %113 = phi i1 [ false, %100 ], [ %111, %104 ]
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = load i64, i64* %15, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %15, align 8
  br label %100

117:                                              ; preds = %112
  %118 = load i8*, i8** %9, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %14, align 8
  %123 = sub i64 %121, %122
  %124 = call i64 @is_empty(i8* %120, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  store i32 1, i32* %20, align 4
  %127 = load i64, i64* %15, align 8
  store i64 %127, i64* %14, align 8
  br label %93

128:                                              ; preds = %117
  store i64 0, i64* %19, align 8
  br label %129

129:                                              ; preds = %149, %128
  %130 = load i64, i64* %19, align 8
  %131 = icmp ult i64 %130, 4
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %19, align 8
  %135 = add i64 %133, %134
  %136 = load i64, i64* %15, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i8*, i8** %9, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* %19, align 8
  %142 = add i64 %140, %141
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 32
  br label %147

147:                                              ; preds = %138, %132, %129
  %148 = phi i1 [ false, %132 ], [ false, %129 ], [ %146, %138 ]
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = load i64, i64* %19, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %19, align 8
  br label %129

152:                                              ; preds = %147
  %153 = load i64, i64* %19, align 8
  store i64 %153, i64* %16, align 8
  %154 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %155 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MKDEXT_FENCED_CODE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %152
  %161 = load i8*, i8** %9, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i64, i64* %19, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* %14, align 8
  %168 = sub i64 %166, %167
  %169 = load i64, i64* %19, align 8
  %170 = sub i64 %168, %169
  %171 = call i64 @is_codefence(i8* %165, i64 %170, i32* null)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %160
  %174 = load i32, i32* %22, align 4
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %22, align 4
  br label %178

178:                                              ; preds = %173, %160
  br label %179

179:                                              ; preds = %178, %152
  %180 = load i32, i32* %22, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %205, label %182

182:                                              ; preds = %179
  %183 = load i8*, i8** %9, align 8
  %184 = load i64, i64* %14, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i64, i64* %19, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* %14, align 8
  %190 = sub i64 %188, %189
  %191 = load i64, i64* %19, align 8
  %192 = sub i64 %190, %191
  %193 = call i64 @prefix_uli(i8* %187, i64 %192)
  store i64 %193, i64* %23, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = load i64, i64* %14, align 8
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  %197 = load i64, i64* %19, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %14, align 8
  %201 = sub i64 %199, %200
  %202 = load i64, i64* %19, align 8
  %203 = sub i64 %201, %202
  %204 = call i64 @prefix_oli(i8* %198, i64 %203)
  store i64 %204, i64* %24, align 8
  br label %205

205:                                              ; preds = %182, %179
  %206 = load i32, i32* %20, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %231

208:                                              ; preds = %205
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @MKD_LIST_ORDERED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load i64, i64* %23, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %214, %208
  %218 = load i32*, i32** %11, align 8
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @MKD_LIST_ORDERED, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %217
  %224 = load i64, i64* %24, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %223, %214
  %227 = load i32, i32* @MKD_LI_END, align 4
  %228 = load i32*, i32** %11, align 8
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %227
  store i32 %230, i32* %228, align 4
  br label %307

231:                                              ; preds = %223, %217, %205
  %232 = load i64, i64* %23, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %231
  %235 = load i8*, i8** %9, align 8
  %236 = load i64, i64* %14, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = load i64, i64* %19, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = load i64, i64* %15, align 8
  %241 = load i64, i64* %14, align 8
  %242 = sub i64 %240, %241
  %243 = load i64, i64* %19, align 8
  %244 = sub i64 %242, %243
  %245 = call i32 @is_hrule(i8* %239, i64 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %234, %231
  %248 = load i64, i64* %24, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %267

250:                                              ; preds = %247, %234
  %251 = load i32, i32* %20, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store i32 1, i32* %21, align 4
  br label %254

254:                                              ; preds = %253, %250
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* %18, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %307

259:                                              ; preds = %254
  %260 = load i64, i64* %17, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %259
  %263 = load %struct.buf*, %struct.buf** %12, align 8
  %264 = getelementptr inbounds %struct.buf, %struct.buf* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %17, align 8
  br label %266

266:                                              ; preds = %262, %259
  br label %293

267:                                              ; preds = %247
  %268 = load i32, i32* %20, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %267
  %271 = load i64, i64* %19, align 8
  %272 = icmp ult i64 %271, 4
  br i1 %272, label %273, label %285

273:                                              ; preds = %270
  %274 = load i8*, i8** %9, align 8
  %275 = load i64, i64* %14, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 9
  br i1 %279, label %280, label %285

280:                                              ; preds = %273
  %281 = load i32, i32* @MKD_LI_END, align 4
  %282 = load i32*, i32** %11, align 8
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %281
  store i32 %284, i32* %282, align 4
  br label %307

285:                                              ; preds = %273, %270, %267
  %286 = load i32, i32* %20, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load %struct.buf*, %struct.buf** %12, align 8
  %290 = call i32 @bufputc(%struct.buf* %289, i8 signext 10)
  store i32 1, i32* %21, align 4
  br label %291

291:                                              ; preds = %288, %285
  br label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292, %266
  store i32 0, i32* %20, align 4
  %294 = load %struct.buf*, %struct.buf** %12, align 8
  %295 = load i8*, i8** %9, align 8
  %296 = load i64, i64* %14, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  %298 = load i64, i64* %19, align 8
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  %300 = load i64, i64* %15, align 8
  %301 = load i64, i64* %14, align 8
  %302 = sub i64 %300, %301
  %303 = load i64, i64* %19, align 8
  %304 = sub i64 %302, %303
  %305 = call i32 @bufput(%struct.buf* %294, i8* %299, i64 %304)
  %306 = load i64, i64* %15, align 8
  store i64 %306, i64* %14, align 8
  br label %93

307:                                              ; preds = %280, %258, %226, %93
  %308 = load i32, i32* %21, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load i32, i32* @MKD_LI_BLOCK, align 4
  %312 = load i32*, i32** %11, align 8
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %311
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %310, %307
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @MKD_LI_BLOCK, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %362

321:                                              ; preds = %315
  %322 = load i64, i64* %17, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %351

324:                                              ; preds = %321
  %325 = load i64, i64* %17, align 8
  %326 = load %struct.buf*, %struct.buf** %12, align 8
  %327 = getelementptr inbounds %struct.buf, %struct.buf* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ult i64 %325, %328
  br i1 %329, label %330, label %351

330:                                              ; preds = %324
  %331 = load %struct.buf*, %struct.buf** %13, align 8
  %332 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %333 = load %struct.buf*, %struct.buf** %12, align 8
  %334 = getelementptr inbounds %struct.buf, %struct.buf* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* %17, align 8
  %337 = call i32 @parse_block(%struct.buf* %331, %struct.sd_markdown* %332, i64 %335, i64 %336)
  %338 = load %struct.buf*, %struct.buf** %13, align 8
  %339 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %340 = load %struct.buf*, %struct.buf** %12, align 8
  %341 = getelementptr inbounds %struct.buf, %struct.buf* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* %17, align 8
  %344 = add i64 %342, %343
  %345 = load %struct.buf*, %struct.buf** %12, align 8
  %346 = getelementptr inbounds %struct.buf, %struct.buf* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* %17, align 8
  %349 = sub i64 %347, %348
  %350 = call i32 @parse_block(%struct.buf* %338, %struct.sd_markdown* %339, i64 %344, i64 %349)
  br label %361

351:                                              ; preds = %324, %321
  %352 = load %struct.buf*, %struct.buf** %13, align 8
  %353 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %354 = load %struct.buf*, %struct.buf** %12, align 8
  %355 = getelementptr inbounds %struct.buf, %struct.buf* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.buf*, %struct.buf** %12, align 8
  %358 = getelementptr inbounds %struct.buf, %struct.buf* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @parse_block(%struct.buf* %352, %struct.sd_markdown* %353, i64 %356, i64 %359)
  br label %361

361:                                              ; preds = %351, %330
  br label %403

362:                                              ; preds = %315
  %363 = load i64, i64* %17, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %392

365:                                              ; preds = %362
  %366 = load i64, i64* %17, align 8
  %367 = load %struct.buf*, %struct.buf** %12, align 8
  %368 = getelementptr inbounds %struct.buf, %struct.buf* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp ult i64 %366, %369
  br i1 %370, label %371, label %392

371:                                              ; preds = %365
  %372 = load %struct.buf*, %struct.buf** %13, align 8
  %373 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %374 = load %struct.buf*, %struct.buf** %12, align 8
  %375 = getelementptr inbounds %struct.buf, %struct.buf* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* %17, align 8
  %378 = call i32 @parse_inline(%struct.buf* %372, %struct.sd_markdown* %373, i64 %376, i64 %377)
  %379 = load %struct.buf*, %struct.buf** %13, align 8
  %380 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %381 = load %struct.buf*, %struct.buf** %12, align 8
  %382 = getelementptr inbounds %struct.buf, %struct.buf* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* %17, align 8
  %385 = add i64 %383, %384
  %386 = load %struct.buf*, %struct.buf** %12, align 8
  %387 = getelementptr inbounds %struct.buf, %struct.buf* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* %17, align 8
  %390 = sub i64 %388, %389
  %391 = call i32 @parse_block(%struct.buf* %379, %struct.sd_markdown* %380, i64 %385, i64 %390)
  br label %402

392:                                              ; preds = %365, %362
  %393 = load %struct.buf*, %struct.buf** %13, align 8
  %394 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %395 = load %struct.buf*, %struct.buf** %12, align 8
  %396 = getelementptr inbounds %struct.buf, %struct.buf* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.buf*, %struct.buf** %12, align 8
  %399 = getelementptr inbounds %struct.buf, %struct.buf* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = call i32 @parse_inline(%struct.buf* %393, %struct.sd_markdown* %394, i64 %397, i64 %400)
  br label %402

402:                                              ; preds = %392, %371
  br label %403

403:                                              ; preds = %402, %361
  %404 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %405 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 0
  %407 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %406, align 8
  %408 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* %407, null
  br i1 %408, label %409, label %424

409:                                              ; preds = %403
  %410 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %411 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 0
  %413 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %412, align 8
  %414 = load %struct.buf*, %struct.buf** %7, align 8
  %415 = bitcast %struct.buf* %414 to %struct.buf.0*
  %416 = load %struct.buf*, %struct.buf** %13, align 8
  %417 = bitcast %struct.buf* %416 to %struct.buf.0*
  %418 = load i32*, i32** %11, align 8
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %421 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 %413(%struct.buf.0* %415, %struct.buf.0* %417, i32 %419, i32 %422)
  br label %424

424:                                              ; preds = %409, %403
  %425 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %426 = load i32, i32* @BUFFER_SPAN, align 4
  %427 = call i32 @rndr_popbuf(%struct.sd_markdown* %425, i32 %426)
  %428 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %429 = load i32, i32* @BUFFER_SPAN, align 4
  %430 = call i32 @rndr_popbuf(%struct.sd_markdown* %428, i32 %429)
  %431 = load i64, i64* %14, align 8
  store i64 %431, i64* %6, align 8
  br label %432

432:                                              ; preds = %424, %57
  %433 = load i64, i64* %6, align 8
  ret i64 %433
}

declare dso_local i64 @prefix_uli(i8*, i64) #1

declare dso_local i64 @prefix_oli(i8*, i64) #1

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

declare dso_local i64 @is_empty(i8*, i64) #1

declare dso_local i64 @is_codefence(i8*, i64, i32*) #1

declare dso_local i32 @is_hrule(i8*, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @parse_block(%struct.buf*, %struct.sd_markdown*, i64, i64) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i64, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
