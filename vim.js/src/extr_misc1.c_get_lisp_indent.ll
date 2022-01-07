; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc1.c_get_lisp_indent.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc1.c_get_lisp_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@p_cpo = common dso_local global i32 0, align 4
@CPO_LISP = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_7__* null, align 8
@NUL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_lisp_indent() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @p_cpo, align 4
  %12 = load i32, i32* @CPO_LISP, align 4
  %13 = call i32* @vim_strchr(i32 %11, i32 %12)
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = bitcast %struct.TYPE_6__* %2 to i8*
  %19 = bitcast %struct.TYPE_6__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = call %struct.TYPE_6__* @findmatch(i32* null, i8 signext 40)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %1, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call %struct.TYPE_6__* @findmatch(i32* null, i8 signext 91)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %1, align 8
  br label %40

27:                                               ; preds = %0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %29 = bitcast %struct.TYPE_6__* %3 to i8*
  %30 = bitcast %struct.TYPE_6__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = call %struct.TYPE_6__* @findmatch(i32* null, i8 signext 91)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %1, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %36 = call i64 @ltp(%struct.TYPE_6__* %35, %struct.TYPE_6__* %3)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %27
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %1, align 8
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %483

43:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %197, %61, %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %198

54:                                               ; preds = %44
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @linewhite(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %44

62:                                               ; preds = %54
  %63 = call i8* (...) @ml_get_curline()
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %189, %62
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @NUL, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %192

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 59
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %85, %76
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @NUL, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  br label %77

88:                                               ; preds = %77
  br label %189

89:                                               ; preds = %71
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 92
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @NUL, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %102, %94
  br label %189

106:                                              ; preds = %89
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 34
  br i1 %110, label %111, label %161

111:                                              ; preds = %106
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @NUL, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %159, %119
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 34
  br label %131

131:                                              ; preds = %126, %120
  %132 = phi i1 [ false, %120 ], [ %130, %126 ]
  br i1 %132, label %133, label %160

133:                                              ; preds = %131
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 92
  br i1 %137, label %138, label %159

138:                                              ; preds = %133
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* @NUL, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %160

147:                                              ; preds = %138
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load i8, i8* @NUL, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %5, align 8
  br label %160

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158, %133
  br label %120

160:                                              ; preds = %155, %146, %131
  br label %161

161:                                              ; preds = %160, %111, %106
  %162 = load i8*, i8** %5, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 40
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load i8*, i8** %5, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 91
  br i1 %170, label %171, label %174

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %188

174:                                              ; preds = %166
  %175 = load i8*, i8** %5, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 41
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 93
  br i1 %183, label %184, label %187

184:                                              ; preds = %179, %174
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %184, %179
  br label %188

188:                                              ; preds = %187, %171
  br label %189

189:                                              ; preds = %188, %105, %88
  %190 = load i8*, i8** %5, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %5, align 8
  br label %64

192:                                              ; preds = %64
  %193 = load i32, i32* %8, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = call i32 (...) @get_indent()
  store i32 %196, i32* %4, align 4
  br label %198

197:                                              ; preds = %192
  br label %44

198:                                              ; preds = %195, %44
  %199 = load i32, i32* %4, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %482

201:                                              ; preds = %198
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  store i64 %204, i64* %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %6, align 4
  %217 = call i8* (...) @ml_get_curline()
  store i8* %217, i8** %5, align 8
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %201
  %221 = call i32 (...) @get_indent()
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 2, i32* %4, align 4
  br label %481

224:                                              ; preds = %220, %201
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %235, %224
  %226 = load i8*, i8** %5, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %230, %225
  %234 = phi i1 [ false, %225 ], [ %232, %230 ]
  br i1 %234, label %235, label %244

235:                                              ; preds = %233
  %236 = load i32, i32* %4, align 4
  %237 = call i64 @lbr_chartabsize_adv(i8** %5, i32 %236)
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %237
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %6, align 4
  br label %225

244:                                              ; preds = %233
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %265, label %247

247:                                              ; preds = %244
  %248 = load i8*, i8** %5, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 40
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = load i8*, i8** %5, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 91
  br i1 %256, label %257, label %265

257:                                              ; preds = %252, %247
  %258 = load i8*, i8** %5, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 1
  %260 = call i64 @lisp_match(i8* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, 2
  store i32 %264, i32* %4, align 4
  br label %480

265:                                              ; preds = %257, %252, %244
  %266 = load i8*, i8** %5, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %5, align 8
  %268 = load i32, i32* %4, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %4, align 4
  %270 = load i32, i32* %4, align 4
  store i32 %270, i32* %7, align 4
  br label %271

271:                                              ; preds = %276, %265
  %272 = load i8*, i8** %5, align 8
  %273 = load i8, i8* %272, align 1
  %274 = call i64 @vim_iswhite(i8 signext %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %271
  %277 = load i8*, i8** %5, align 8
  %278 = load i32, i32* %4, align 4
  %279 = call i64 @lbr_chartabsize(i8* %277, i32 %278)
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %279
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %4, align 4
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %5, align 8
  br label %271

286:                                              ; preds = %271
  %287 = load i8*, i8** %5, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %479

291:                                              ; preds = %286
  %292 = load i8*, i8** %5, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp ne i32 %294, 59
  br i1 %295, label %296, label %479

296:                                              ; preds = %291
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %312, label %299

299:                                              ; preds = %296
  %300 = load i8*, i8** %5, align 8
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp ne i32 %302, 40
  br i1 %303, label %304, label %312

304:                                              ; preds = %299
  %305 = load i8*, i8** %5, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 91
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load i32, i32* %7, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %7, align 4
  br label %312

312:                                              ; preds = %309, %304, %299, %296
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %340, label %315

315:                                              ; preds = %312
  %316 = load i8*, i8** %5, align 8
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 34
  br i1 %319, label %320, label %451

320:                                              ; preds = %315
  %321 = load i8*, i8** %5, align 8
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp ne i32 %323, 39
  br i1 %324, label %325, label %451

325:                                              ; preds = %320
  %326 = load i8*, i8** %5, align 8
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 35
  br i1 %329, label %330, label %451

330:                                              ; preds = %325
  %331 = load i8*, i8** %5, align 8
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp slt i32 %333, 48
  br i1 %334, label %340, label %335

335:                                              ; preds = %330
  %336 = load i8*, i8** %5, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp sgt i32 %338, 57
  br i1 %339, label %340, label %451

340:                                              ; preds = %335, %330, %312
  br label %341

341:                                              ; preds = %443, %340
  %342 = load i8*, i8** %5, align 8
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %379

346:                                              ; preds = %341
  %347 = load i8*, i8** %5, align 8
  %348 = load i8, i8* %347, align 1
  %349 = call i64 @vim_iswhite(i8 signext %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %346
  %352 = load i32, i32* %9, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* %8, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %379

357:                                              ; preds = %354, %351, %346
  %358 = load i8*, i8** %5, align 8
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp eq i32 %360, 40
  br i1 %361, label %367, label %362

362:                                              ; preds = %357
  %363 = load i8*, i8** %5, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp eq i32 %365, 91
  br i1 %366, label %367, label %376

367:                                              ; preds = %362, %357
  %368 = load i32, i32* %9, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %367
  %371 = load i32, i32* %8, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %370
  %374 = load i32, i32* %10, align 4
  %375 = icmp ne i32 %374, 0
  br label %376

376:                                              ; preds = %373, %370, %367, %362
  %377 = phi i1 [ false, %370 ], [ false, %367 ], [ false, %362 ], [ %375, %373 ]
  %378 = xor i1 %377, true
  br label %379

379:                                              ; preds = %376, %354, %341
  %380 = phi i1 [ false, %354 ], [ false, %341 ], [ %378, %376 ]
  br i1 %380, label %381, label %450

381:                                              ; preds = %379
  %382 = load i8*, i8** %5, align 8
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = icmp eq i32 %384, 34
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load i32, i32* %9, align 4
  %388 = icmp ne i32 %387, 0
  %389 = xor i1 %388, true
  %390 = zext i1 %389 to i32
  store i32 %390, i32* %9, align 4
  br label %391

391:                                              ; preds = %386, %381
  %392 = load i8*, i8** %5, align 8
  %393 = load i8, i8* %392, align 1
  %394 = sext i8 %393 to i32
  %395 = icmp eq i32 %394, 40
  br i1 %395, label %401, label %396

396:                                              ; preds = %391
  %397 = load i8*, i8** %5, align 8
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %399, 91
  br i1 %400, label %401, label %407

401:                                              ; preds = %396, %391
  %402 = load i32, i32* %9, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %401
  %405 = load i32, i32* %8, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %8, align 4
  br label %407

407:                                              ; preds = %404, %401, %396
  %408 = load i8*, i8** %5, align 8
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %410, 41
  br i1 %411, label %417, label %412

412:                                              ; preds = %407
  %413 = load i8*, i8** %5, align 8
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i32
  %416 = icmp eq i32 %415, 93
  br i1 %416, label %417, label %423

417:                                              ; preds = %412, %407
  %418 = load i32, i32* %9, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %423, label %420

420:                                              ; preds = %417
  %421 = load i32, i32* %8, align 4
  %422 = add nsw i32 %421, -1
  store i32 %422, i32* %8, align 4
  br label %423

423:                                              ; preds = %420, %417, %412
  %424 = load i8*, i8** %5, align 8
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  %427 = icmp eq i32 %426, 92
  br i1 %427, label %428, label %443

428:                                              ; preds = %423
  %429 = load i8*, i8** %5, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 1
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  %433 = load i8, i8* @NUL, align 1
  %434 = sext i8 %433 to i32
  %435 = icmp ne i32 %432, %434
  br i1 %435, label %436, label %443

436:                                              ; preds = %428
  %437 = load i32, i32* %4, align 4
  %438 = call i64 @lbr_chartabsize_adv(i8** %5, i32 %437)
  %439 = load i32, i32* %4, align 4
  %440 = sext i32 %439 to i64
  %441 = add nsw i64 %440, %438
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %4, align 4
  br label %443

443:                                              ; preds = %436, %428, %423
  %444 = load i32, i32* %4, align 4
  %445 = call i64 @lbr_chartabsize_adv(i8** %5, i32 %444)
  %446 = load i32, i32* %4, align 4
  %447 = sext i32 %446 to i64
  %448 = add nsw i64 %447, %445
  %449 = trunc i64 %448 to i32
  store i32 %449, i32* %4, align 4
  br label %341

450:                                              ; preds = %379
  br label %451

451:                                              ; preds = %450, %335, %325, %320, %315
  br label %452

452:                                              ; preds = %457, %451
  %453 = load i8*, i8** %5, align 8
  %454 = load i8, i8* %453, align 1
  %455 = call i64 @vim_iswhite(i8 signext %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %467

457:                                              ; preds = %452
  %458 = load i8*, i8** %5, align 8
  %459 = load i32, i32* %4, align 4
  %460 = call i64 @lbr_chartabsize(i8* %458, i32 %459)
  %461 = load i32, i32* %4, align 4
  %462 = sext i32 %461 to i64
  %463 = add nsw i64 %462, %460
  %464 = trunc i64 %463 to i32
  store i32 %464, i32* %4, align 4
  %465 = load i8*, i8** %5, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %5, align 8
  br label %452

467:                                              ; preds = %452
  %468 = load i8*, i8** %5, align 8
  %469 = load i8, i8* %468, align 1
  %470 = icmp ne i8 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %467
  %472 = load i8*, i8** %5, align 8
  %473 = load i8, i8* %472, align 1
  %474 = sext i8 %473 to i32
  %475 = icmp eq i32 %474, 59
  br i1 %475, label %476, label %478

476:                                              ; preds = %471, %467
  %477 = load i32, i32* %7, align 4
  store i32 %477, i32* %4, align 4
  br label %478

478:                                              ; preds = %476, %471
  br label %479

479:                                              ; preds = %478, %291, %286
  br label %480

480:                                              ; preds = %479, %262
  br label %481

481:                                              ; preds = %480, %223
  br label %482

482:                                              ; preds = %481, %198
  br label %484

483:                                              ; preds = %40
  store i32 0, i32* %4, align 4
  br label %484

484:                                              ; preds = %483, %482
  %485 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 0
  %487 = bitcast %struct.TYPE_6__* %486 to i8*
  %488 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %487, i8* align 8 %488, i64 16, i1 false)
  %489 = load i32, i32* %4, align 4
  ret i32 %489
}

declare dso_local i32* @vim_strchr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_6__* @findmatch(i32*, i8 signext) #1

declare dso_local i64 @ltp(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @linewhite(i64) #1

declare dso_local i8* @ml_get_curline(...) #1

declare dso_local i32 @get_indent(...) #1

declare dso_local i64 @lbr_chartabsize_adv(i8**, i32) #1

declare dso_local i64 @lisp_match(i8*) #1

declare dso_local i64 @vim_iswhite(i8 signext) #1

declare dso_local i64 @lbr_chartabsize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
