; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_display_query.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_display_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32** }

@.str = private unnamed_addr constant [32 x i8] c"SyncTeX Warning: No tag for %s\0A\00", align 1
@SYNCTEX_START = common dso_local global i8* null, align 8
@SYNCTEX_END = common dso_local global i8* null, align 8
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@synctex_node_type_boundary = common dso_local global i64 0, align 8
@synctex_node_type_kern = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @synctex_display_query(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @synctex_scanner_get_tag(%struct.TYPE_4__* %17, i8* %18)
  store i32 %19, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %5, align 4
  br label %312

25:                                               ; preds = %4
  %26 = load i8*, i8** @SYNCTEX_START, align 8
  %27 = call i32 @free(i8* %26)
  store i8* null, i8** @SYNCTEX_START, align 8
  store i8* null, i8** @SYNCTEX_END, align 8
  store i8* null, i8** @SYNCTEX_CUR, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @INT_MAX, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  br label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @INT_MAX, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %40, %35 ], [ %42, %41 ]
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %308, %43
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %311

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = srem i32 %52, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %14, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %308

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %111, %65
  %67 = load i32*, i32** %14, align 8
  %68 = call i64 @synctex_node_type(i32* %67)
  %69 = load i64, i64* @synctex_node_type_boundary, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @SYNCTEX_TAG(i32* %73)
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @SYNCTEX_LINE(i32* %78)
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %76
  %82 = load i8*, i8** @SYNCTEX_CUR, align 8
  %83 = load i8*, i8** @SYNCTEX_END, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 16
  store i64 %87, i64* %11, align 8
  %88 = load i8*, i8** @SYNCTEX_START, align 8
  %89 = load i64, i64* %11, align 8
  %90 = mul i64 %89, 8
  %91 = call i8* @realloc(i8* %88, i64 %90)
  store i8* %91, i8** @SYNCTEX_END, align 8
  %92 = load i8*, i8** @SYNCTEX_END, align 8
  %93 = load i8*, i8** @SYNCTEX_START, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = load i8*, i8** @SYNCTEX_CUR, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** @SYNCTEX_CUR, align 8
  %99 = load i8*, i8** @SYNCTEX_END, align 8
  store i8* %99, i8** @SYNCTEX_START, align 8
  %100 = load i8*, i8** @SYNCTEX_START, align 8
  %101 = load i64, i64* %11, align 8
  %102 = mul i64 %101, 8
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8* %103, i8** @SYNCTEX_END, align 8
  br label %104

104:                                              ; preds = %85, %81
  %105 = load i32*, i32** %14, align 8
  %106 = load i8*, i8** @SYNCTEX_CUR, align 8
  %107 = bitcast i8* %106 to i32**
  store i32* %105, i32** %107, align 8
  %108 = load i8*, i8** @SYNCTEX_CUR, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  store i8* %109, i8** @SYNCTEX_CUR, align 8
  br label %110

110:                                              ; preds = %104, %76, %71, %66
  br label %111

111:                                              ; preds = %110
  %112 = load i32*, i32** %14, align 8
  %113 = call i32* @SYNCTEX_FRIEND(i32* %112)
  store i32* %113, i32** %14, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %66, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** @SYNCTEX_START, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %232

118:                                              ; preds = %115
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %14, align 8
  br label %126

126:                                              ; preds = %171, %118
  %127 = load i32*, i32** %14, align 8
  %128 = call i64 @synctex_node_type(i32* %127)
  %129 = load i64, i64* @synctex_node_type_kern, align 8
  %130 = icmp sge i64 %128, %129
  br i1 %130, label %131, label %170

131:                                              ; preds = %126
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @SYNCTEX_TAG(i32* %133)
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %170

136:                                              ; preds = %131
  %137 = load i32, i32* %8, align 4
  %138 = load i32*, i32** %14, align 8
  %139 = call i32 @SYNCTEX_LINE(i32* %138)
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %136
  %142 = load i8*, i8** @SYNCTEX_CUR, align 8
  %143 = load i8*, i8** @SYNCTEX_END, align 8
  %144 = icmp eq i8* %142, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = load i64, i64* %11, align 8
  %147 = add i64 %146, 16
  store i64 %147, i64* %11, align 8
  %148 = load i8*, i8** @SYNCTEX_START, align 8
  %149 = load i64, i64* %11, align 8
  %150 = mul i64 %149, 8
  %151 = call i8* @realloc(i8* %148, i64 %150)
  store i8* %151, i8** @SYNCTEX_END, align 8
  %152 = load i8*, i8** @SYNCTEX_END, align 8
  %153 = load i8*, i8** @SYNCTEX_START, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = load i8*, i8** @SYNCTEX_CUR, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 %156
  store i8* %158, i8** @SYNCTEX_CUR, align 8
  %159 = load i8*, i8** @SYNCTEX_END, align 8
  store i8* %159, i8** @SYNCTEX_START, align 8
  %160 = load i8*, i8** @SYNCTEX_START, align 8
  %161 = load i64, i64* %11, align 8
  %162 = mul i64 %161, 8
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8* %163, i8** @SYNCTEX_END, align 8
  br label %164

164:                                              ; preds = %145, %141
  %165 = load i32*, i32** %14, align 8
  %166 = load i8*, i8** @SYNCTEX_CUR, align 8
  %167 = bitcast i8* %166 to i32**
  store i32* %165, i32** %167, align 8
  %168 = load i8*, i8** @SYNCTEX_CUR, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 8
  store i8* %169, i8** @SYNCTEX_CUR, align 8
  br label %170

170:                                              ; preds = %164, %136, %131, %126
  br label %171

171:                                              ; preds = %170
  %172 = load i32*, i32** %14, align 8
  %173 = call i32* @SYNCTEX_FRIEND(i32* %172)
  store i32* %173, i32** %14, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %126, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** @SYNCTEX_START, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %231

178:                                              ; preds = %175
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  store i32* %185, i32** %14, align 8
  br label %186

186:                                              ; preds = %226, %178
  %187 = load i32, i32* %10, align 4
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @SYNCTEX_TAG(i32* %188)
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %225

191:                                              ; preds = %186
  %192 = load i32, i32* %8, align 4
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @SYNCTEX_LINE(i32* %193)
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %225

196:                                              ; preds = %191
  %197 = load i8*, i8** @SYNCTEX_CUR, align 8
  %198 = load i8*, i8** @SYNCTEX_END, align 8
  %199 = icmp eq i8* %197, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %196
  %201 = load i64, i64* %11, align 8
  %202 = add i64 %201, 16
  store i64 %202, i64* %11, align 8
  %203 = load i8*, i8** @SYNCTEX_START, align 8
  %204 = load i64, i64* %11, align 8
  %205 = mul i64 %204, 8
  %206 = call i8* @realloc(i8* %203, i64 %205)
  store i8* %206, i8** @SYNCTEX_END, align 8
  %207 = load i8*, i8** @SYNCTEX_END, align 8
  %208 = load i8*, i8** @SYNCTEX_START, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = load i8*, i8** @SYNCTEX_CUR, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 %211
  store i8* %213, i8** @SYNCTEX_CUR, align 8
  %214 = load i8*, i8** @SYNCTEX_END, align 8
  store i8* %214, i8** @SYNCTEX_START, align 8
  %215 = load i8*, i8** @SYNCTEX_START, align 8
  %216 = load i64, i64* %11, align 8
  %217 = mul i64 %216, 8
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  store i8* %218, i8** @SYNCTEX_END, align 8
  br label %219

219:                                              ; preds = %200, %196
  %220 = load i32*, i32** %14, align 8
  %221 = load i8*, i8** @SYNCTEX_CUR, align 8
  %222 = bitcast i8* %221 to i32**
  store i32* %220, i32** %222, align 8
  %223 = load i8*, i8** @SYNCTEX_CUR, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 8
  store i8* %224, i8** @SYNCTEX_CUR, align 8
  br label %225

225:                                              ; preds = %219, %191, %186
  br label %226

226:                                              ; preds = %225
  %227 = load i32*, i32** %14, align 8
  %228 = call i32* @SYNCTEX_FRIEND(i32* %227)
  store i32* %228, i32** %14, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %186, label %230

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %230, %175
  br label %232

232:                                              ; preds = %231, %115
  %233 = load i8*, i8** @SYNCTEX_CUR, align 8
  store i8* %233, i8** @SYNCTEX_END, align 8
  %234 = load i8*, i8** @SYNCTEX_START, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %307

236:                                              ; preds = %232
  %237 = load i8*, i8** @SYNCTEX_END, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %307

239:                                              ; preds = %236
  %240 = load i8*, i8** @SYNCTEX_START, align 8
  %241 = bitcast i8* %240 to i32**
  store i32** %241, i32*** %15, align 8
  %242 = load i8*, i8** @SYNCTEX_END, align 8
  %243 = bitcast i8* %242 to i32**
  store i32** %243, i32*** %16, align 8
  %244 = load i32**, i32*** %16, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 -1
  store i32** %245, i32*** %16, align 8
  br label %246

246:                                              ; preds = %250, %239
  %247 = load i32**, i32*** %15, align 8
  %248 = load i32**, i32*** %16, align 8
  %249 = icmp ult i32** %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %246
  %251 = load i32**, i32*** %15, align 8
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %14, align 8
  %253 = load i32**, i32*** %16, align 8
  %254 = load i32*, i32** %253, align 8
  %255 = load i32**, i32*** %15, align 8
  store i32* %254, i32** %255, align 8
  %256 = load i32*, i32** %14, align 8
  %257 = load i32**, i32*** %16, align 8
  store i32* %256, i32** %257, align 8
  %258 = load i32**, i32*** %15, align 8
  %259 = getelementptr inbounds i32*, i32** %258, i64 1
  store i32** %259, i32*** %15, align 8
  %260 = load i32**, i32*** %16, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 -1
  store i32** %261, i32*** %16, align 8
  br label %246

262:                                              ; preds = %246
  %263 = load i8*, i8** @SYNCTEX_START, align 8
  %264 = bitcast i8* %263 to i32**
  store i32** %264, i32*** %15, align 8
  %265 = load i8*, i8** @SYNCTEX_START, align 8
  %266 = bitcast i8* %265 to i32**
  store i32** %266, i32*** %16, align 8
  br label %267

267:                                              ; preds = %289, %287, %262
  %268 = load i32**, i32*** %16, align 8
  %269 = getelementptr inbounds i32*, i32** %268, i64 1
  store i32** %269, i32*** %16, align 8
  %270 = load i32**, i32*** %16, align 8
  %271 = load i8*, i8** @SYNCTEX_END, align 8
  %272 = bitcast i8* %271 to i32**
  %273 = icmp ult i32** %270, %272
  br i1 %273, label %274, label %295

274:                                              ; preds = %267
  %275 = load i32**, i32*** %16, align 8
  %276 = load i32*, i32** %275, align 8
  store i32* %276, i32** %14, align 8
  br label %277

277:                                              ; preds = %288, %274
  %278 = load i32*, i32** %14, align 8
  %279 = call i32* @SYNCTEX_PARENT(i32* %278)
  store i32* %279, i32** %14, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %289

281:                                              ; preds = %277
  %282 = load i32**, i32*** %15, align 8
  %283 = load i32*, i32** %282, align 8
  %284 = call i32* @SYNCTEX_PARENT(i32* %283)
  %285 = load i32*, i32** %14, align 8
  %286 = icmp eq i32* %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  br label %267

288:                                              ; preds = %281
  br label %277

289:                                              ; preds = %277
  %290 = load i32**, i32*** %15, align 8
  %291 = getelementptr inbounds i32*, i32** %290, i64 1
  store i32** %291, i32*** %15, align 8
  %292 = load i32**, i32*** %16, align 8
  %293 = load i32*, i32** %292, align 8
  %294 = load i32**, i32*** %15, align 8
  store i32* %293, i32** %294, align 8
  br label %267

295:                                              ; preds = %267
  %296 = load i32**, i32*** %15, align 8
  %297 = getelementptr inbounds i32*, i32** %296, i64 1
  store i32** %297, i32*** %15, align 8
  %298 = load i32**, i32*** %15, align 8
  %299 = bitcast i32** %298 to i8*
  store i8* %299, i8** @SYNCTEX_END, align 8
  store i8* null, i8** @SYNCTEX_CUR, align 8
  %300 = load i8*, i8** @SYNCTEX_END, align 8
  %301 = load i8*, i8** @SYNCTEX_START, align 8
  %302 = ptrtoint i8* %300 to i64
  %303 = ptrtoint i8* %301 to i64
  %304 = sub i64 %302, %303
  %305 = udiv i64 %304, 8
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %5, align 4
  br label %312

307:                                              ; preds = %236, %232
  store i8* null, i8** @SYNCTEX_CUR, align 8
  br label %308

308:                                              ; preds = %307, %49
  %309 = load i32, i32* %8, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %8, align 4
  br label %45

311:                                              ; preds = %45
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %311, %295, %22
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

declare dso_local i32 @synctex_scanner_get_tag(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @synctex_node_type(i32*) #1

declare dso_local i32 @SYNCTEX_TAG(i32*) #1

declare dso_local i32 @SYNCTEX_LINE(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32* @SYNCTEX_FRIEND(i32*) #1

declare dso_local i32* @SYNCTEX_PARENT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
