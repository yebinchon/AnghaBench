; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_unicode.c_pack_for_mode.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_unicode.c_pack_for_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i32, i64*, i64, i64, i64, i64, i64, i32, i32 }

@modes = common dso_local global %struct.TYPE_7__* null, align 8
@MODECOUNT = common dso_local global i32 0, align 4
@UVAL_DONT_CARE_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"// clusters of %d\0A\00", align 1
@weight = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_default\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_index\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"// above tables should be %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pack_for_mode(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_6__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* %3, i8** %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modes, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MODECOUNT, align 4
  %33 = srem i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %34
  %36 = bitcast %struct.TYPE_7__* %11 to i8*
  %37 = bitcast %struct.TYPE_7__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 48, i1 false)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MODECOUNT, align 4
  %40 = sdiv i32 %38, %39
  %41 = shl i32 8, %40
  store i32 %41, i32* %12, align 4
  store i64* null, i64** %13, align 8
  store i64* null, i64** %14, align 8
  store i64* null, i64** %15, align 8
  store i64* null, i64** %16, align 8
  %42 = load i64, i64* @UVAL_DONT_CARE_DEFAULT, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %4
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %46, %4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %571, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %575

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %18, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %307

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %70

70:                                               ; preds = %89, %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %73, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %21, align 8
  %80 = load i64, i64* %21, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %19, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %70
  br label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %19, align 4
  br label %70

92:                                               ; preds = %88
  %93 = load i64, i64* %21, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load i64*, i64** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @stb_arr_push(i64* %102, i64 %104)
  br label %571

106:                                              ; preds = %98, %92
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %149

110:                                              ; preds = %106
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %149, label %113

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %147, %113
  %115 = load i32, i32* %19, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %148

117:                                              ; preds = %114
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %120, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %21, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %143, label %129

129:                                              ; preds = %117
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %132, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %129, %117
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %19, align 4
  br label %147

146:                                              ; preds = %129
  br label %148

147:                                              ; preds = %143
  br label %114

148:                                              ; preds = %146, %114
  br label %149

149:                                              ; preds = %148, %110, %106
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %193

153:                                              ; preds = %149
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %193, label %156

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %191, %156
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %19, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %192

161:                                              ; preds = %157
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %164, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %21, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %187, label %173

173:                                              ; preds = %161
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %20, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %176, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %173, %161
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %20, align 4
  br label %191

190:                                              ; preds = %173
  br label %192

191:                                              ; preds = %187
  br label %157

192:                                              ; preds = %190, %157
  br label %193

193:                                              ; preds = %192, %153, %149
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 3
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %196, i64 %200
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %20, align 4
  %204 = sub nsw i32 %202, %203
  %205 = add nsw i32 %204, 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %18, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  %211 = load i64*, i64** %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %211, i64 %215
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %20, align 4
  %219 = add nsw i32 %217, %218
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 10
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @find_packed(i64** %13, i64* %201, i32 %205, i32 %207, i32 %208, i64* %216, i32 %219, i32 %222)
  store i64 %223, i64* %22, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %193
  %228 = load i32, i32* %19, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i64, i64* %21, align 8
  store i64 %231, i64* %22, align 8
  br label %235

232:                                              ; preds = %227
  %233 = load i64, i64* %22, align 8
  %234 = or i64 %233, 2147483648
  store i64 %234, i64* %22, align 8
  br label %235

235:                                              ; preds = %232, %230
  br label %301

236:                                              ; preds = %193
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, i32* %19, align 4
  %242 = icmp sge i32 %241, -1
  br label %243

243:                                              ; preds = %240, %236
  %244 = phi i1 [ false, %236 ], [ %242, %240 ]
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %243
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* %12, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  br label %256

256:                                              ; preds = %249, %243
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %12, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i32, i32* %19, align 4
  %262 = add nsw i32 %261, 1
  %263 = icmp sge i32 %262, 0
  br label %264

264:                                              ; preds = %260, %256
  %265 = phi i1 [ false, %256 ], [ %263, %260 ]
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load i32, i32* %18, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %264
  %271 = load i32, i32* %19, align 4
  %272 = add nsw i32 %271, 1
  %273 = load i32, i32* %12, align 4
  %274 = icmp slt i32 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  br label %277

277:                                              ; preds = %270, %264
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %277
  %282 = load i32, i32* %20, align 4
  %283 = mul nsw i32 %282, 256
  %284 = load i32, i32* %19, align 4
  %285 = add nsw i32 %284, 1
  %286 = add nsw i32 %283, %285
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %23, align 8
  br label %292

288:                                              ; preds = %277
  %289 = load i32, i32* %19, align 4
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %23, align 8
  br label %292

292:                                              ; preds = %288, %281
  %293 = load i64, i64* %22, align 8
  %294 = icmp slt i64 %293, 65536
  %295 = zext i1 %294 to i32
  %296 = call i32 @assert(i32 %295)
  %297 = load i64, i64* %22, align 8
  %298 = load i64, i64* %23, align 8
  %299 = shl i64 %298, 16
  %300 = add nsw i64 %297, %299
  store i64 %300, i64* %22, align 8
  br label %301

301:                                              ; preds = %292, %235
  %302 = load i64, i64* %22, align 8
  store i64 %302, i64* %17, align 8
  %303 = load i64*, i64** %16, align 8
  %304 = load i64, i64* %21, align 8
  %305 = call i32 @stb_arr_push(i64* %303, i64 %304)
  br label %306

306:                                              ; preds = %301
  br label %529

307:                                              ; preds = %57
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %504

311:                                              ; preds = %307
  %312 = load i32, i32* %12, align 4
  %313 = sub nsw i32 %312, 1
  store i32 %313, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %314

314:                                              ; preds = %355, %311
  %315 = load i32, i32* %24, align 4
  %316 = icmp sge i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load i32, i32* %18, align 4
  %319 = icmp ne i32 %318, 0
  %320 = xor i1 %319, true
  br label %321

321:                                              ; preds = %317, %314
  %322 = phi i1 [ false, %314 ], [ %320, %317 ]
  br i1 %322, label %323, label %356

323:                                              ; preds = %321
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 3
  %326 = load i64*, i64** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* %24, align 4
  %329 = add nsw i32 %327, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i64, i64* %326, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %332, %335
  br i1 %336, label %351, label %337

337:                                              ; preds = %323
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 3
  %340 = load i64*, i64** %339, align 8
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* %24, align 4
  %343 = add nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %340, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp eq i64 %346, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %337, %323
  %352 = load i32, i32* %24, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %24, align 4
  br label %355

354:                                              ; preds = %337
  br label %356

355:                                              ; preds = %351
  br label %314

356:                                              ; preds = %354, %321
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %402

360:                                              ; preds = %356
  %361 = load i32, i32* %18, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %402, label %363

363:                                              ; preds = %360
  br label %364

364:                                              ; preds = %400, %363
  %365 = load i32, i32* %25, align 4
  %366 = load i32, i32* %24, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %401

368:                                              ; preds = %364
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 3
  %371 = load i64*, i64** %370, align 8
  %372 = load i32, i32* %9, align 4
  %373 = load i32, i32* %25, align 4
  %374 = add nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %371, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 4
  %380 = load i64, i64* %379, align 8
  %381 = icmp eq i64 %377, %380
  br i1 %381, label %396, label %382

382:                                              ; preds = %368
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 3
  %385 = load i64*, i64** %384, align 8
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* %25, align 4
  %388 = add nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %385, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = icmp eq i64 %391, %394
  br i1 %395, label %396, label %399

396:                                              ; preds = %382, %368
  %397 = load i32, i32* %25, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %25, align 4
  br label %400

399:                                              ; preds = %382
  br label %401

400:                                              ; preds = %396
  br label %364

401:                                              ; preds = %399, %364
  br label %402

402:                                              ; preds = %401, %360, %356
  %403 = load i32, i32* %24, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %24, align 4
  %405 = load i32, i32* %24, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %402
  %408 = load i32, i32* %12, align 4
  %409 = icmp eq i32 %408, 256
  br i1 %409, label %410, label %411

410:                                              ; preds = %407
  store i32 1, i32* %24, align 4
  store i32 1, i32* %25, align 4
  br label %411

411:                                              ; preds = %410, %407, %402
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 3
  %414 = load i64*, i64** %413, align 8
  %415 = load i32, i32* %9, align 4
  %416 = load i32, i32* %25, align 4
  %417 = add nsw i32 %415, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i64, i64* %414, i64 %418
  %420 = load i32, i32* %24, align 4
  %421 = load i32, i32* %25, align 4
  %422 = sub nsw i32 %420, %421
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* %18, align 4
  %426 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 3
  %428 = load i64*, i64** %427, align 8
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i64, i64* %428, i64 %432
  %434 = load i32, i32* %9, align 4
  %435 = load i32, i32* %25, align 4
  %436 = add nsw i32 %434, %435
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 10
  %439 = load i32, i32* %438, align 4
  %440 = call i64 @find_packed(i64** %13, i64* %419, i32 %422, i32 %424, i32 %425, i64* %433, i32 %436, i32 %439)
  store i64 %440, i64* %26, align 8
  %441 = load i32, i32* %24, align 4
  %442 = load i32, i32* %12, align 4
  %443 = icmp sle i32 %441, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %411
  %445 = load i32, i32* %24, align 4
  %446 = icmp sge i32 %445, 0
  br label %447

447:                                              ; preds = %444, %411
  %448 = phi i1 [ false, %411 ], [ %446, %444 ]
  %449 = zext i1 %448 to i32
  %450 = call i32 @assert(i32 %449)
  %451 = load i32, i32* %12, align 4
  %452 = icmp eq i32 %451, 256
  br i1 %452, label %453, label %465

453:                                              ; preds = %447
  %454 = load i32, i32* %24, align 4
  %455 = sub nsw i32 %454, 1
  %456 = icmp slt i32 %455, 256
  br i1 %456, label %457, label %461

457:                                              ; preds = %453
  %458 = load i32, i32* %24, align 4
  %459 = sub nsw i32 %458, 1
  %460 = icmp sge i32 %459, 0
  br label %461

461:                                              ; preds = %457, %453
  %462 = phi i1 [ false, %453 ], [ %460, %457 ]
  %463 = zext i1 %462 to i32
  %464 = call i32 @assert(i32 %463)
  br label %475

465:                                              ; preds = %447
  %466 = load i32, i32* %24, align 4
  %467 = icmp slt i32 %466, 256
  br i1 %467, label %468, label %471

468:                                              ; preds = %465
  %469 = load i32, i32* %24, align 4
  %470 = icmp sge i32 %469, 0
  br label %471

471:                                              ; preds = %468, %465
  %472 = phi i1 [ false, %465 ], [ %470, %468 ]
  %473 = zext i1 %472 to i32
  %474 = call i32 @assert(i32 %473)
  br label %475

475:                                              ; preds = %471, %461
  %476 = load i32, i32* %12, align 4
  %477 = icmp eq i32 %476, 256
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = load i32, i32* %24, align 4
  %480 = add nsw i32 %479, -1
  store i32 %480, i32* %24, align 4
  br label %481

481:                                              ; preds = %478, %475
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %481
  %486 = load i32, i32* %25, align 4
  %487 = mul nsw i32 %486, 256
  %488 = load i32, i32* %24, align 4
  %489 = add nsw i32 %487, %488
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %27, align 8
  br label %494

491:                                              ; preds = %481
  %492 = load i32, i32* %24, align 4
  %493 = sext i32 %492 to i64
  store i64 %493, i64* %27, align 8
  br label %494

494:                                              ; preds = %491, %485
  %495 = load i64, i64* %26, align 8
  %496 = icmp slt i64 %495, 65536
  %497 = zext i1 %496 to i32
  %498 = call i32 @assert(i32 %497)
  %499 = load i64, i64* %26, align 8
  %500 = load i64, i64* %27, align 8
  %501 = shl i64 %500, 16
  %502 = add nsw i64 %499, %501
  store i64 %502, i64* %26, align 8
  %503 = load i64, i64* %26, align 8
  store i64 %503, i64* %17, align 8
  br label %528

504:                                              ; preds = %307
  %505 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 3
  %507 = load i64*, i64** %506, align 8
  %508 = load i32, i32* %9, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i64, i64* %507, i64 %509
  %511 = load i32, i32* %12, align 4
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* %18, align 4
  %515 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 3
  %517 = load i64*, i64** %516, align 8
  %518 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i64, i64* %517, i64 %521
  %523 = load i32, i32* %9, align 4
  %524 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %524, i32 0, i32 10
  %526 = load i32, i32* %525, align 4
  %527 = call i64 @find_packed(i64** %13, i64* %510, i32 %511, i32 %513, i32 %514, i64* %522, i32 %523, i32 %526)
  store i64 %527, i64* %17, align 8
  br label %528

528:                                              ; preds = %504, %494
  br label %529

529:                                              ; preds = %528, %306
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %566

533:                                              ; preds = %529
  store i32 0, i32* %28, align 4
  br label %534

534:                                              ; preds = %549, %533
  %535 = load i32, i32* %28, align 4
  %536 = load i64*, i64** %15, align 8
  %537 = call i32 @stb_arr_len(i64* %536)
  %538 = icmp slt i32 %535, %537
  br i1 %538, label %539, label %552

539:                                              ; preds = %534
  %540 = load i64*, i64** %15, align 8
  %541 = load i32, i32* %28, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i64, i64* %540, i64 %542
  %544 = load i64, i64* %543, align 8
  %545 = load i64, i64* %17, align 8
  %546 = icmp eq i64 %544, %545
  br i1 %546, label %547, label %548

547:                                              ; preds = %539
  br label %552

548:                                              ; preds = %539
  br label %549

549:                                              ; preds = %548
  %550 = load i32, i32* %28, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %28, align 4
  br label %534

552:                                              ; preds = %547, %534
  %553 = load i32, i32* %28, align 4
  %554 = load i64*, i64** %15, align 8
  %555 = call i32 @stb_arr_len(i64* %554)
  %556 = icmp eq i32 %553, %555
  br i1 %556, label %557, label %561

557:                                              ; preds = %552
  %558 = load i64*, i64** %15, align 8
  %559 = load i64, i64* %17, align 8
  %560 = call i32 @stb_arr_push(i64* %558, i64 %559)
  br label %561

561:                                              ; preds = %557, %552
  %562 = load i64*, i64** %14, align 8
  %563 = load i32, i32* %28, align 4
  %564 = sext i32 %563 to i64
  %565 = call i32 @stb_arr_push(i64* %562, i64 %564)
  br label %570

566:                                              ; preds = %529
  %567 = load i64*, i64** %14, align 8
  %568 = load i64, i64* %17, align 8
  %569 = call i32 @stb_arr_push(i64* %567, i64 %568)
  br label %570

570:                                              ; preds = %566, %561
  br label %571

571:                                              ; preds = %570, %101
  %572 = load i32, i32* %12, align 4
  %573 = load i32, i32* %9, align 4
  %574 = add nsw i32 %573, %572
  store i32 %574, i32* %9, align 4
  br label %51

575:                                              ; preds = %51
  %576 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %577 = load i64, i64* %576, align 8
  %578 = load i64, i64* @weight, align 8
  %579 = mul i64 %577, %578
  store i64 %579, i64* %8, align 8
  %580 = load i64, i64* %8, align 8
  %581 = add i64 %580, 150
  store i64 %581, i64* %8, align 8
  %582 = load i8*, i8** %7, align 8
  %583 = icmp ne i8* %582, null
  br i1 %583, label %584, label %585

584:                                              ; preds = %575
  store i64 0, i64* %8, align 8
  br label %585

585:                                              ; preds = %584, %575
  %586 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %587 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %586, i32 0, i32 9
  %588 = load i32, i32* %587, align 8
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %632

590:                                              ; preds = %585
  store i32 0, i32* %9, align 4
  br label %591

591:                                              ; preds = %623, %590
  %592 = load i32, i32* %9, align 4
  %593 = load i64*, i64** %13, align 8
  %594 = call i32 @stb_arr_len(i64* %593)
  %595 = icmp slt i32 %592, %594
  br i1 %595, label %596, label %626

596:                                              ; preds = %591
  %597 = load i64*, i64** %13, align 8
  %598 = load i32, i32* %9, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i64, i64* %597, i64 %599
  %601 = load i64, i64* %600, align 8
  %602 = and i64 %601, 2147483648
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %613

604:                                              ; preds = %596
  %605 = load i64, i64* %29, align 8
  %606 = load i64*, i64** %13, align 8
  %607 = load i32, i32* %9, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i64, i64* %606, i64 %608
  %610 = load i64, i64* %609, align 8
  %611 = call i32 @stb_max(i64 %605, i64 %610)
  %612 = sext i32 %611 to i64
  store i64 %612, i64* %29, align 8
  br label %622

613:                                              ; preds = %596
  %614 = load i64, i64* %10, align 8
  %615 = load i64*, i64** %13, align 8
  %616 = load i32, i32* %9, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i64, i64* %615, i64 %617
  %619 = load i64, i64* %618, align 8
  %620 = call i32 @stb_max(i64 %614, i64 %619)
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %10, align 8
  br label %622

622:                                              ; preds = %613, %604
  br label %623

623:                                              ; preds = %622
  %624 = load i32, i32* %9, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %9, align 4
  br label %591

626:                                              ; preds = %591
  %627 = load i64, i64* %10, align 8
  %628 = load i64, i64* %29, align 8
  %629 = call i32 @stb_max(i64 %627, i64 %628)
  %630 = shl i32 %629, 1
  %631 = sext i32 %630 to i64
  store i64 %631, i64* %10, align 8
  br label %667

632:                                              ; preds = %585
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %633

633:                                              ; preds = %663, %632
  %634 = load i32, i32* %9, align 4
  %635 = load i64*, i64** %13, align 8
  %636 = call i32 @stb_arr_len(i64* %635)
  %637 = icmp slt i32 %634, %636
  br i1 %637, label %638, label %666

638:                                              ; preds = %633
  %639 = load i64*, i64** %13, align 8
  %640 = load i32, i32* %9, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i64, i64* %639, i64 %641
  %643 = load i64, i64* %642, align 8
  %644 = load i64, i64* %10, align 8
  %645 = icmp sgt i64 %643, %644
  br i1 %645, label %646, label %662

646:                                              ; preds = %638
  %647 = load i64*, i64** %13, align 8
  %648 = load i32, i32* %9, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i64, i64* %647, i64 %649
  %651 = load i64, i64* %650, align 8
  %652 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %653 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = icmp ne i64 %651, %654
  br i1 %655, label %656, label %662

656:                                              ; preds = %646
  %657 = load i64*, i64** %13, align 8
  %658 = load i32, i32* %9, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i64, i64* %657, i64 %659
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %10, align 8
  br label %662

662:                                              ; preds = %656, %646, %638
  br label %663

663:                                              ; preds = %662
  %664 = load i32, i32* %9, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %9, align 4
  br label %633

666:                                              ; preds = %633
  br label %667

667:                                              ; preds = %666, %626
  %668 = load i64*, i64** %13, align 8
  %669 = call i32 @stb_arr_len(i64* %668)
  %670 = sext i32 %669 to i64
  %671 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %672 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %671, i32 0, i32 8
  %673 = load i64, i64* %672, align 8
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %678

675:                                              ; preds = %667
  %676 = load i64, i64* %10, align 8
  %677 = call i64 @size_for_max_number(i64 %676)
  br label %681

678:                                              ; preds = %667
  %679 = load i64, i64* %10, align 8
  %680 = call i64 @size_for_max_number_aligned(i64 %679)
  br label %681

681:                                              ; preds = %678, %675
  %682 = phi i64 [ %677, %675 ], [ %680, %678 ]
  %683 = mul i64 %670, %682
  %684 = load i64, i64* %8, align 8
  %685 = add i64 %684, %683
  store i64 %685, i64* %8, align 8
  %686 = load i8*, i8** %7, align 8
  %687 = icmp ne i8* %686, null
  br i1 %687, label %688, label %709

688:                                              ; preds = %681
  %689 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %690 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %689, i32 0, i32 8
  %691 = load i64, i64* %690, align 8
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %699

693:                                              ; preds = %688
  %694 = load i8*, i8** %7, align 8
  %695 = load i64*, i64** %13, align 8
  %696 = load i64*, i64** %13, align 8
  %697 = call i32 @stb_arr_len(i64* %696)
  %698 = call i32 @output_table_with_trims(i8* %694, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64* %695, i32 %697)
  br label %708

699:                                              ; preds = %688
  %700 = load i8*, i8** %7, align 8
  %701 = load i64*, i64** %13, align 8
  %702 = load i64*, i64** %13, align 8
  %703 = call i32 @stb_arr_len(i64* %702)
  %704 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %705 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %704, i32 0, i32 9
  %706 = load i32, i32* %705, align 8
  %707 = call i32 @output_table(i8* %700, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64* %701, i32 %703, i32 %706, i32* null)
  br label %708

708:                                              ; preds = %699, %693
  br label %709

709:                                              ; preds = %708, %681
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %710

710:                                              ; preds = %730, %709
  %711 = load i32, i32* %9, align 4
  %712 = load i64*, i64** %16, align 8
  %713 = call i32 @stb_arr_len(i64* %712)
  %714 = icmp slt i32 %711, %713
  br i1 %714, label %715, label %733

715:                                              ; preds = %710
  %716 = load i64*, i64** %16, align 8
  %717 = load i32, i32* %9, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i64, i64* %716, i64 %718
  %720 = load i64, i64* %719, align 8
  %721 = load i64, i64* %10, align 8
  %722 = icmp sgt i64 %720, %721
  br i1 %722, label %723, label %729

723:                                              ; preds = %715
  %724 = load i64*, i64** %16, align 8
  %725 = load i32, i32* %9, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i64, i64* %724, i64 %726
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %10, align 8
  br label %729

729:                                              ; preds = %723, %715
  br label %730

730:                                              ; preds = %729
  %731 = load i32, i32* %9, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %9, align 4
  br label %710

733:                                              ; preds = %710
  %734 = load i64*, i64** %16, align 8
  %735 = call i32 @stb_arr_len(i64* %734)
  %736 = sext i32 %735 to i64
  %737 = load i64, i64* %10, align 8
  %738 = call i64 @size_for_max_number_aligned(i64 %737)
  %739 = mul i64 %736, %738
  %740 = load i64, i64* %8, align 8
  %741 = add i64 %740, %739
  store i64 %741, i64* %8, align 8
  %742 = load i8*, i8** %7, align 8
  %743 = icmp ne i8* %742, null
  br i1 %743, label %744, label %750

744:                                              ; preds = %733
  %745 = load i8*, i8** %7, align 8
  %746 = load i64*, i64** %16, align 8
  %747 = load i64*, i64** %16, align 8
  %748 = call i32 @stb_arr_len(i64* %747)
  %749 = call i32 @output_table(i8* %745, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64* %746, i32 %748, i32 0, i32* null)
  br label %750

750:                                              ; preds = %744, %733
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %751

751:                                              ; preds = %771, %750
  %752 = load i32, i32* %9, align 4
  %753 = load i64*, i64** %15, align 8
  %754 = call i32 @stb_arr_len(i64* %753)
  %755 = icmp slt i32 %752, %754
  br i1 %755, label %756, label %774

756:                                              ; preds = %751
  %757 = load i64*, i64** %15, align 8
  %758 = load i32, i32* %9, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i64, i64* %757, i64 %759
  %761 = load i64, i64* %760, align 8
  %762 = load i64, i64* %10, align 8
  %763 = icmp sgt i64 %761, %762
  br i1 %763, label %764, label %770

764:                                              ; preds = %756
  %765 = load i64*, i64** %15, align 8
  %766 = load i32, i32* %9, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i64, i64* %765, i64 %767
  %769 = load i64, i64* %768, align 8
  store i64 %769, i64* %10, align 8
  br label %770

770:                                              ; preds = %764, %756
  br label %771

771:                                              ; preds = %770
  %772 = load i32, i32* %9, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %9, align 4
  br label %751

774:                                              ; preds = %751
  %775 = load i64*, i64** %15, align 8
  %776 = call i32 @stb_arr_len(i64* %775)
  %777 = sext i32 %776 to i64
  %778 = load i64, i64* %10, align 8
  %779 = call i64 @size_for_max_number(i64 %778)
  %780 = mul i64 %777, %779
  %781 = load i64, i64* %8, align 8
  %782 = add i64 %781, %780
  store i64 %782, i64* %8, align 8
  %783 = load i8*, i8** %7, align 8
  %784 = icmp ne i8* %783, null
  br i1 %784, label %785, label %809

785:                                              ; preds = %774
  %786 = load i64*, i64** %15, align 8
  %787 = call i32 @stb_arr_len(i64* %786)
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %809

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %791 = load i64, i64* %790, align 8
  %792 = icmp ne i64 %791, 0
  br i1 %792, label %793, label %799

793:                                              ; preds = %789
  %794 = load i8*, i8** %7, align 8
  %795 = load i64*, i64** %15, align 8
  %796 = load i64*, i64** %15, align 8
  %797 = call i32 @stb_arr_len(i64* %796)
  %798 = call i32 @output_table_with_trims(i8* %794, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %795, i32 %797)
  br label %806

799:                                              ; preds = %789
  %800 = call i32 @assert(i32 0)
  %801 = load i8*, i8** %7, align 8
  %802 = load i64*, i64** %15, align 8
  %803 = load i64*, i64** %15, align 8
  %804 = call i32 @stb_arr_len(i64* %803)
  %805 = call i32 @output_table(i8* %801, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %802, i32 %804, i32 0, i32* null)
  br label %806

806:                                              ; preds = %799, %793
  %807 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i64 0, i64* %807, align 8
  %808 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i64 0, i64* %808, align 8
  br label %809

809:                                              ; preds = %806, %785, %774
  %810 = load i8*, i8** %7, align 8
  %811 = icmp ne i8* %810, null
  br i1 %811, label %812, label %815

812:                                              ; preds = %809
  %813 = load i64, i64* %8, align 8
  %814 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %813)
  br label %815

815:                                              ; preds = %812, %809
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %816

816:                                              ; preds = %846, %815
  %817 = load i32, i32* %9, align 4
  %818 = load i64*, i64** %14, align 8
  %819 = call i32 @stb_arr_len(i64* %818)
  %820 = icmp slt i32 %817, %819
  br i1 %820, label %821, label %849

821:                                              ; preds = %816
  %822 = load i64*, i64** %14, align 8
  %823 = load i32, i32* %9, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i64, i64* %822, i64 %824
  %826 = load i64, i64* %825, align 8
  %827 = load i64, i64* %10, align 8
  %828 = icmp sgt i64 %826, %827
  br i1 %828, label %829, label %845

829:                                              ; preds = %821
  %830 = load i64*, i64** %14, align 8
  %831 = load i32, i32* %9, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i64, i64* %830, i64 %832
  %834 = load i64, i64* %833, align 8
  %835 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %836 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %835, i32 0, i32 0
  %837 = load i64, i64* %836, align 8
  %838 = icmp ne i64 %834, %837
  br i1 %838, label %839, label %845

839:                                              ; preds = %829
  %840 = load i64*, i64** %14, align 8
  %841 = load i32, i32* %9, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i64, i64* %840, i64 %842
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %10, align 8
  br label %845

845:                                              ; preds = %839, %829, %821
  br label %846

846:                                              ; preds = %845
  %847 = load i32, i32* %9, align 4
  %848 = add nsw i32 %847, 1
  store i32 %848, i32* %9, align 4
  br label %816

849:                                              ; preds = %816
  %850 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %851 = load i64, i64* %850, align 8
  %852 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  store i64 %851, i64* %852, align 8
  %853 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %854 = load i64, i64* %853, align 8
  %855 = icmp ne i64 %854, 0
  br i1 %855, label %856, label %859

856:                                              ; preds = %849
  %857 = load i64, i64* %10, align 8
  %858 = call i64 @size_for_max_number(i64 %857)
  br label %862

859:                                              ; preds = %849
  %860 = load i64, i64* %10, align 8
  %861 = call i64 @size_for_max_number_aligned(i64 %860)
  br label %862

862:                                              ; preds = %859, %856
  %863 = phi i64 [ %858, %856 ], [ %861, %859 ]
  %864 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  store i64 %863, i64* %864, align 8
  %865 = load i64*, i64** %14, align 8
  %866 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i64* %865, i64** %866, align 8
  %867 = load i64*, i64** %14, align 8
  %868 = call i32 @stb_arr_len(i64* %867)
  %869 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 %868, i32* %869, align 8
  %870 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %871 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %870, i32 0, i32 7
  %872 = load i64, i64* %871, align 8
  %873 = load i64, i64* %8, align 8
  %874 = add i64 %872, %873
  %875 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  store i64 %874, i64* %875, align 8
  %876 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i32 0, i32* %876, align 4
  %877 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %878 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %877, i32 0, i32 6
  %879 = load i64, i64* %878, align 8
  %880 = add nsw i64 %879, 1
  %881 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  store i64 %880, i64* %881, align 8
  %882 = load i64*, i64** %15, align 8
  %883 = call i32 @stb_arr_free(i64* %882)
  %884 = load i64*, i64** %13, align 8
  %885 = call i32 @stb_arr_free(i64* %884)
  %886 = load i64*, i64** %16, align 8
  %887 = call i32 @stb_arr_free(i64* %886)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, i64) #2

declare dso_local i32 @stb_arr_push(i64*, i64) #2

declare dso_local i64 @find_packed(i64**, i64*, i32, i32, i32, i64*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @stb_arr_len(i64*) #2

declare dso_local i32 @stb_max(i64, i64) #2

declare dso_local i64 @size_for_max_number(i64) #2

declare dso_local i64 @size_for_max_number_aligned(i64) #2

declare dso_local i32 @output_table_with_trims(i8*, i8*, i64*, i32) #2

declare dso_local i32 @output_table(i8*, i8*, i64*, i32, i32, i32*) #2

declare dso_local i32 @stb_arr_free(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
