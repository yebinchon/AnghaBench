; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_arith_int64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_arith_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@CTF_UNSIGNED = common dso_local global i32 0, align 4
@IRT_U64 = common dso_local global i64 0, align 8
@CTID_UINT64 = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i64 0, align 8
@CTID_INT64 = common dso_local global i32 0, align 4
@MM_add = common dso_local global i64 0, align 8
@CTF_FP = common dso_local global i32 0, align 4
@IRT_U32 = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i64 0, align 8
@IRT_FLOAT = common dso_local global i64 0, align 8
@IRCONV_ANY = common dso_local global i32 0, align 4
@IRCONV_SEXT = common dso_local global i32 0, align 4
@MM_eq = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i64 0, align 8
@MM_lt = common dso_local global i64 0, align 8
@IR_LT = common dso_local global i64 0, align 8
@IR_LE = common dso_local global i64 0, align 8
@IR_ULT = common dso_local global i64 0, align 8
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i64 0, align 8
@IR_ADD = common dso_local global i64 0, align 8
@IR_CNEWI = common dso_local global i64 0, align 8
@IRT_CDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i64*, %struct.TYPE_10__**, i64)* @crec_arith_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_arith_int64(%struct.TYPE_9__* %0, i64* %1, %struct.TYPE_10__** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %343

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %343

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ctype_isnum(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %343

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ctype_isnum(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %343

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = call i32 @lj_needsplit(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %44, i64 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CTF_UNSIGNED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %75, label %59

59:                                               ; preds = %52, %41
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CTF_UNSIGNED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %52
  %76 = load i64, i64* @IRT_U64, align 8
  store i64 %76, i64* %10, align 8
  %77 = load i32, i32* @CTID_UINT64, align 4
  store i32 %77, i32* %11, align 4
  br label %191

78:                                               ; preds = %68, %59
  %79 = load i64, i64* @IRT_I64, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i32, i32* @CTID_INT64, align 4
  store i32 %80, i32* %11, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @MM_add, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %190

84:                                               ; preds = %78
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %85, i64 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %89, %94
  %96 = load i32, i32* @CTF_FP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %190, label %99

99:                                               ; preds = %84
  %100 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %100, i64 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 4
  br i1 %105, label %106, label %190

106:                                              ; preds = %99
  %107 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %107, i64 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %190

113:                                              ; preds = %106
  %114 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %114, i64 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %119, i64 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %118, %123
  %125 = load i32, i32* @CTF_UNSIGNED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %113
  %129 = load i64*, i64** %7, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @tref_isk(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %128
  %135 = load i64*, i64** %7, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @tref_ref(i64 %137)
  %139 = call %struct.TYPE_11__* @IR(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %134, %113
  %144 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %144, i64 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CTF_UNSIGNED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = load i64, i64* @IRT_U32, align 8
  br label %156

154:                                              ; preds = %143
  %155 = load i64, i64* @IRT_INT, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i64 [ %153, %152 ], [ %155, %154 ]
  store i64 %157, i64* %10, align 8
  br label %269

158:                                              ; preds = %134, %128
  %159 = load i64*, i64** %7, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @tref_isk(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %188

164:                                              ; preds = %158
  %165 = load i64*, i64** %7, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @tref_ref(i64 %167)
  %169 = call %struct.TYPE_11__* @IR(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %164
  %174 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %174, i64 1
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @CTF_UNSIGNED, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = load i64, i64* @IRT_U32, align 8
  br label %186

184:                                              ; preds = %173
  %185 = load i64, i64* @IRT_INT, align 8
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i64 [ %183, %182 ], [ %185, %184 ]
  store i64 %187, i64* %10, align 8
  br label %269

188:                                              ; preds = %164, %158
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %106, %99, %84, %78
  br label %191

191:                                              ; preds = %190, %75
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %261, %191
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %264

195:                                              ; preds = %192
  %196 = load i64*, i64** %7, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @tref_type(i64 %200)
  store i64 %201, i64* %15, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load i64, i64* @IRT_NUM, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %195
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* @IRT_FLOAT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %223

209:                                              ; preds = %205, %195
  %210 = load i64*, i64** %7, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* %15, align 8
  %217 = load i32, i32* @IRCONV_ANY, align 4
  %218 = call i64 @emitconv(i64 %214, i64 %215, i64 %216, i32 %217)
  %219 = load i64*, i64** %7, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  store i64 %218, i64* %222, align 8
  br label %260

223:                                              ; preds = %205
  %224 = load i64, i64* %15, align 8
  %225 = load i64, i64* @IRT_I64, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %259, label %227

227:                                              ; preds = %223
  %228 = load i64, i64* %15, align 8
  %229 = load i64, i64* @IRT_U64, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %259, label %231

231:                                              ; preds = %227
  %232 = load i64*, i64** %7, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %10, align 8
  %238 = load i64, i64* @IRT_INT, align 8
  %239 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %239, i64 %241
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @CTF_UNSIGNED, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %231
  br label %252

250:                                              ; preds = %231
  %251 = load i32, i32* @IRCONV_SEXT, align 4
  br label %252

252:                                              ; preds = %250, %249
  %253 = phi i32 [ 0, %249 ], [ %251, %250 ]
  %254 = call i64 @emitconv(i64 %236, i64 %237, i64 %238, i32 %253)
  %255 = load i64*, i64** %7, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  store i64 %254, i64* %258, align 8
  br label %259

259:                                              ; preds = %252, %227, %223
  br label %260

260:                                              ; preds = %259, %209
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  br label %192

264:                                              ; preds = %192
  %265 = load i64, i64* %9, align 8
  %266 = load i64, i64* @MM_add, align 8
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %268, label %315

268:                                              ; preds = %264
  br label %269

269:                                              ; preds = %268, %186, %156
  %270 = load i64, i64* %9, align 8
  %271 = load i64, i64* @MM_eq, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = load i64, i64* @IR_EQ, align 8
  store i64 %274, i64* %14, align 8
  br label %299

275:                                              ; preds = %269
  %276 = load i64, i64* %9, align 8
  %277 = load i64, i64* @MM_lt, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i64, i64* @IR_LT, align 8
  br label %283

281:                                              ; preds = %275
  %282 = load i64, i64* @IR_LE, align 8
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i64 [ %280, %279 ], [ %282, %281 ]
  store i64 %284, i64* %14, align 8
  %285 = load i64, i64* %10, align 8
  %286 = load i64, i64* @IRT_U32, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %292, label %288

288:                                              ; preds = %283
  %289 = load i64, i64* %10, align 8
  %290 = load i64, i64* @IRT_U64, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288, %283
  %293 = load i64, i64* @IR_ULT, align 8
  %294 = load i64, i64* @IR_LT, align 8
  %295 = sub nsw i64 %293, %294
  %296 = load i64, i64* %14, align 8
  %297 = add nsw i64 %296, %295
  store i64 %297, i64* %14, align 8
  br label %298

298:                                              ; preds = %292, %288
  br label %299

299:                                              ; preds = %298, %273
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %301 = load i64, i64* %14, align 8
  %302 = load i64, i64* %10, align 8
  %303 = call i32 @IRTG(i64 %301, i64 %302)
  %304 = load i64*, i64** %7, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64*, i64** %7, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 1
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @lj_ir_set(%struct.TYPE_9__* %300, i32 %303, i64 %306, i64 %309)
  %311 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 4
  %314 = load i64, i64* @TREF_TRUE, align 8
  store i64 %314, i64* %5, align 8
  br label %344

315:                                              ; preds = %264
  %316 = load i64, i64* %9, align 8
  %317 = load i64, i64* @IR_ADD, align 8
  %318 = trunc i64 %317 to i32
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %316, %319
  %321 = load i64, i64* @MM_add, align 8
  %322 = trunc i64 %321 to i32
  %323 = sext i32 %322 to i64
  %324 = sub nsw i64 %320, %323
  %325 = load i64, i64* %10, align 8
  %326 = call i32 @IRT(i64 %324, i64 %325)
  %327 = load i64*, i64** %7, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64*, i64** %7, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 1
  %332 = load i64, i64* %331, align 8
  %333 = call i64 @emitir(i32 %326, i64 %329, i64 %332)
  store i64 %333, i64* %12, align 8
  br label %334

334:                                              ; preds = %315
  %335 = load i64, i64* @IR_CNEWI, align 8
  %336 = load i64, i64* @IRT_CDATA, align 8
  %337 = call i32 @IRTG(i64 %335, i64 %336)
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %339 = load i32, i32* %11, align 4
  %340 = call i64 @lj_ir_kint(%struct.TYPE_9__* %338, i32 %339)
  %341 = load i64, i64* %12, align 8
  %342 = call i64 @emitir(i32 %337, i64 %340, i64 %341)
  store i64 %342, i64* %5, align 8
  br label %344

343:                                              ; preds = %33, %25, %20, %4
  store i64 0, i64* %5, align 8
  br label %344

344:                                              ; preds = %343, %334, %299
  %345 = load i64, i64* %5, align 8
  ret i64 %345
}

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @lj_needsplit(%struct.TYPE_9__*) #1

declare dso_local i64 @tref_isk(i64) #1

declare dso_local %struct.TYPE_11__* @IR(i32) #1

declare dso_local i32 @tref_ref(i64) #1

declare dso_local i64 @tref_type(i64) #1

declare dso_local i64 @emitconv(i64, i64, i64, i32) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_9__*, i32, i64, i64) #1

declare dso_local i32 @IRTG(i64, i64) #1

declare dso_local i64 @emitir(i32, i64, i64) #1

declare dso_local i32 @IRT(i64, i64) #1

declare dso_local i64 @lj_ir_kint(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
