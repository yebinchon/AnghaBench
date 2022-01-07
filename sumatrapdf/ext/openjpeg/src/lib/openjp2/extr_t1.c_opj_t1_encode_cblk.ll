; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_encode_cblk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_encode_cblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, i32*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, double, i32, i32 }
%struct.TYPE_25__ = type { i32 }

@T1_TYPE_MQ = common dso_local global i64 0, align 8
@lut_ctxno_zc = common dso_local global i64 0, align 8
@T1_NMSEDEC_FRACBITS = common dso_local global i64 0, align 8
@T1_CTXNO_UNI = common dso_local global i32 0, align 4
@T1_CTXNO_AGG = common dso_local global i32 0, align 4
@T1_CTXNO_ZC = common dso_local global i32 0, align 4
@J2K_CCP_CBLKSTY_LAZY = common dso_local global i32 0, align 4
@T1_TYPE_RAW = common dso_local global i64 0, align 8
@J2K_CCP_CBLKSTY_SEGSYM = common dso_local global i32 0, align 4
@J2K_CCP_CBLKSTY_PTERM = common dso_local global i32 0, align 4
@J2K_CCP_CBLKSTY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32, i32, i32, double, i32, i32, %struct.TYPE_25__*, double*, i32)* @opj_t1_encode_cblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_t1_encode_cblk(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32 %2, i32 %3, i32 %4, i32 %5, double %6, i32 %7, i32 %8, %struct.TYPE_25__* %9, double* %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca %struct.TYPE_29__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca double, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.TYPE_26__*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_26__*, align 8
  %41 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store double %6, double* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store %struct.TYPE_25__* %9, %struct.TYPE_25__** %22, align 8
  store double* %10, double** %23, align 8
  store i32 %11, i32* %24, align 4
  store double 0.000000e+00, double* %25, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 4
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %26, align 8
  store i64 0, i64* %30, align 8
  %44 = load i64, i64* @T1_TYPE_MQ, align 8
  store i64 %44, i64* %34, align 8
  %45 = load i64, i64* @lut_ctxno_zc, align 8
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 %46, 9
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  store i64 0, i64* %31, align 8
  store i32 0, i32* %32, align 4
  br label %52

52:                                               ; preds = %87, %12
  %53 = load i32, i32* %32, align 4
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  store i32 0, i32* %33, align 4
  br label %59

59:                                               ; preds = %83, %58
  %60 = load i32, i32* %33, align 4
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %32, align 4
  %70 = load i32, i32* %33, align 4
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = add nsw i32 %69, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %68, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @abs(i32 %78)
  store i64 %79, i64* %36, align 8
  %80 = load i64, i64* %31, align 8
  %81 = load i64, i64* %36, align 8
  %82 = call i64 @opj_int_max(i64 %80, i64 %81)
  store i64 %82, i64* %31, align 8
  br label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %33, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %33, align 4
  br label %59

86:                                               ; preds = %59
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %32, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %32, align 4
  br label %52

90:                                               ; preds = %52
  %91 = load i64, i64* %31, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i64, i64* %31, align 8
  %95 = call i64 @opj_int_floorlog2(i64 %94)
  %96 = add nsw i64 %95, 1
  %97 = load i64, i64* @T1_NMSEDEC_FRACBITS, align 8
  %98 = sub nsw i64 %96, %97
  %99 = trunc i64 %98 to i32
  br label %101

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %93
  %102 = phi i32 [ %99, %93 ], [ 0, %100 ]
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 5
  store i32 0, i32* %111, align 4
  br label %415

112:                                              ; preds = %101
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %28, align 8
  store i32 2, i32* %29, align 4
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %119 = call i32 @opj_mqc_resetstates(%struct.TYPE_29__* %118)
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %121 = load i32, i32* @T1_CTXNO_UNI, align 4
  %122 = call i32 @opj_mqc_setstate(%struct.TYPE_29__* %120, i32 %121, i32 0, i32 46)
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %124 = load i32, i32* @T1_CTXNO_AGG, align 4
  %125 = call i32 @opj_mqc_setstate(%struct.TYPE_29__* %123, i32 %124, i32 0, i32 3)
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %127 = load i32, i32* @T1_CTXNO_ZC, align 4
  %128 = call i32 @opj_mqc_setstate(%struct.TYPE_29__* %126, i32 %127, i32 0, i32 4)
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @opj_mqc_init_enc(%struct.TYPE_29__* %129, i32* %132)
  store i32 0, i32* %27, align 4
  br label %134

134:                                              ; preds = %311, %112
  %135 = load i64, i64* %28, align 8
  %136 = icmp sge i64 %135, 0
  br i1 %136, label %137, label %314

137:                                              ; preds = %134
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 7
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = load i32, i32* %27, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i64 %142
  store %struct.TYPE_26__* %143, %struct.TYPE_26__** %37, align 8
  %144 = load i64, i64* %28, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = sub nsw i64 %148, 4
  %150 = icmp slt i64 %144, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %137
  %152 = load i32, i32* %29, align 4
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* @J2K_CCP_CBLKSTY_LAZY, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i64, i64* @T1_TYPE_RAW, align 8
  br label %163

161:                                              ; preds = %154, %151, %137
  %162 = load i64, i64* @T1_TYPE_MQ, align 8
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i64 [ %160, %159 ], [ %162, %161 ]
  store i64 %164, i64* %34, align 8
  %165 = load i32, i32* %27, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %163
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %169, align 8
  %171 = load i32, i32* %27, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %167
  %179 = load i64, i64* %34, align 8
  %180 = load i64, i64* @T1_TYPE_RAW, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %184 = call i32 @opj_mqc_bypass_init_enc(%struct.TYPE_29__* %183)
  br label %188

185:                                              ; preds = %178
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %187 = call i32 @opj_mqc_restart_init_enc(%struct.TYPE_29__* %186)
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %167, %163
  %190 = load i32, i32* %29, align 4
  switch i32 %190, label %215 [
    i32 0, label %191
    i32 1, label %197
    i32 2, label %202
  ]

191:                                              ; preds = %189
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %193 = load i64, i64* %28, align 8
  %194 = load i64, i64* %34, align 8
  %195 = load i32, i32* %20, align 4
  %196 = call i32 @opj_t1_enc_sigpass(%struct.TYPE_28__* %192, i64 %193, i64* %30, i64 %194, i32 %195)
  br label %215

197:                                              ; preds = %189
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %199 = load i64, i64* %28, align 8
  %200 = load i64, i64* %34, align 8
  %201 = call i32 @opj_t1_enc_refpass(%struct.TYPE_28__* %198, i64 %199, i64* %30, i64 %200)
  br label %215

202:                                              ; preds = %189
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %204 = load i64, i64* %28, align 8
  %205 = load i32, i32* %20, align 4
  %206 = call i32 @opj_t1_enc_clnpass(%struct.TYPE_28__* %203, i64 %204, i64* %30, i32 %205)
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* @J2K_CCP_CBLKSTY_SEGSYM, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %213 = call i32 @opj_mqc_segmark_enc(%struct.TYPE_29__* %212)
  br label %214

214:                                              ; preds = %211, %202
  br label %215

215:                                              ; preds = %189, %214, %197, %191
  %216 = load i64, i64* %30, align 8
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %15, align 4
  %220 = load i64, i64* %28, align 8
  %221 = load i32, i32* %18, align 4
  %222 = load double, double* %19, align 8
  %223 = load i32, i32* %21, align 4
  %224 = load double*, double** %23, align 8
  %225 = load i32, i32* %24, align 4
  %226 = call double @opj_t1_getwmsedec(i64 %216, i32 %217, i32 %218, i32 %219, i64 %220, i32 %221, double %222, i32 %223, double* %224, i32 %225)
  store double %226, double* %35, align 8
  %227 = load double, double* %35, align 8
  %228 = load double, double* %25, align 8
  %229 = fadd double %228, %227
  store double %229, double* %25, align 8
  %230 = load double, double* %35, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sitofp i32 %233 to double
  %235 = fadd double %234, %230
  %236 = fptosi double %235 to i32
  store i32 %236, i32* %232, align 4
  %237 = load double, double* %25, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %37, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 1
  store double %237, double* %239, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %241 = load i32, i32* %20, align 4
  %242 = load i64, i64* %28, align 8
  %243 = load i32, i32* %29, align 4
  %244 = call i64 @opj_t1_enc_is_term_pass(%struct.TYPE_27__* %240, i32 %241, i64 %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %275

246:                                              ; preds = %215
  %247 = load i64, i64* %34, align 8
  %248 = load i64, i64* @T1_TYPE_RAW, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* @J2K_CCP_CBLKSTY_PTERM, align 4
  %254 = and i32 %252, %253
  %255 = call i32 @opj_mqc_bypass_flush_enc(%struct.TYPE_29__* %251, i32 %254)
  br label %268

256:                                              ; preds = %246
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* @J2K_CCP_CBLKSTY_PTERM, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %263 = call i32 @opj_mqc_erterm_enc(%struct.TYPE_29__* %262)
  br label %267

264:                                              ; preds = %256
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %266 = call i32 @opj_mqc_flush(%struct.TYPE_29__* %265)
  br label %267

267:                                              ; preds = %264, %261
  br label %268

268:                                              ; preds = %267, %250
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %37, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  store i32 1, i32* %270, align 8
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %272 = call i32 @opj_mqc_numbytes(%struct.TYPE_29__* %271)
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %37, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  br label %295

275:                                              ; preds = %215
  %276 = load i64, i64* %34, align 8
  %277 = load i64, i64* @T1_TYPE_RAW, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* @J2K_CCP_CBLKSTY_PTERM, align 4
  %283 = and i32 %281, %282
  %284 = call i32 @opj_mqc_bypass_get_extra_bytes(%struct.TYPE_29__* %280, i32 %283)
  store i32 %284, i32* %38, align 4
  br label %286

285:                                              ; preds = %275
  store i32 3, i32* %38, align 4
  br label %286

286:                                              ; preds = %285, %279
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %37, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 0
  store i32 0, i32* %288, align 8
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %290 = call i32 @opj_mqc_numbytes(%struct.TYPE_29__* %289)
  %291 = load i32, i32* %38, align 4
  %292 = add nsw i32 %290, %291
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %37, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  br label %295

295:                                              ; preds = %286, %268
  %296 = load i32, i32* %29, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %29, align 4
  %298 = icmp eq i32 %297, 3
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  store i32 0, i32* %29, align 4
  %300 = load i64, i64* %28, align 8
  %301 = add nsw i64 %300, -1
  store i64 %301, i64* %28, align 8
  br label %302

302:                                              ; preds = %299, %295
  %303 = load i32, i32* %20, align 4
  %304 = load i32, i32* @J2K_CCP_CBLKSTY_RESET, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %309 = call i32 @opj_mqc_reset_enc(%struct.TYPE_29__* %308)
  br label %310

310:                                              ; preds = %307, %302
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %27, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %27, align 4
  br label %134

314:                                              ; preds = %134
  %315 = load i32, i32* %27, align 4
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 4
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %354

322:                                              ; preds = %314
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %324 = call i32 @opj_mqc_numbytes(%struct.TYPE_29__* %323)
  store i32 %324, i32* %39, align 4
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %27, align 4
  br label %328

328:                                              ; preds = %352, %322
  %329 = load i32, i32* %27, align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %353

331:                                              ; preds = %328
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %332, i32 0, i32 7
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %333, align 8
  %335 = load i32, i32* %27, align 4
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %27, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i64 %337
  store %struct.TYPE_26__* %338, %struct.TYPE_26__** %40, align 8
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %39, align 4
  %343 = icmp sgt i32 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %331
  %345 = load i32, i32* %39, align 4
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 2
  store i32 %345, i32* %347, align 8
  br label %352

348:                                              ; preds = %331
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  store i32 %351, i32* %39, align 4
  br label %352

352:                                              ; preds = %348, %344
  br label %328

353:                                              ; preds = %328
  br label %354

354:                                              ; preds = %353, %314
  store i32 0, i32* %27, align 4
  br label %355

355:                                              ; preds = %412, %354
  %356 = load i32, i32* %27, align 4
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %415

361:                                              ; preds = %355
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 7
  %364 = load %struct.TYPE_26__*, %struct.TYPE_26__** %363, align 8
  %365 = load i32, i32* %27, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %364, i64 %366
  store %struct.TYPE_26__* %367, %struct.TYPE_26__** %41, align 8
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = icmp sgt i32 %370, 0
  %372 = zext i1 %371 to i32
  %373 = call i32 @assert(i32 %372)
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 6
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = sub nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %376, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 255
  br i1 %384, label %385, label %390

385:                                              ; preds = %361
  %386 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* %387, align 8
  br label %390

390:                                              ; preds = %385, %361
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* %27, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %390
  br label %407

397:                                              ; preds = %390
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 7
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %399, align 8
  %401 = load i32, i32* %27, align 4
  %402 = sub nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  br label %407

407:                                              ; preds = %397, %396
  %408 = phi i32 [ 0, %396 ], [ %406, %397 ]
  %409 = sub nsw i32 %393, %408
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %411 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %410, i32 0, i32 3
  store i32 %409, i32* %411, align 4
  br label %412

412:                                              ; preds = %407
  %413 = load i32, i32* %27, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %27, align 4
  br label %355

415:                                              ; preds = %109, %355
  ret void
}

declare dso_local i64 @abs(i32) #1

declare dso_local i64 @opj_int_max(i64, i64) #1

declare dso_local i64 @opj_int_floorlog2(i64) #1

declare dso_local i32 @opj_mqc_resetstates(%struct.TYPE_29__*) #1

declare dso_local i32 @opj_mqc_setstate(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @opj_mqc_init_enc(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @opj_mqc_bypass_init_enc(%struct.TYPE_29__*) #1

declare dso_local i32 @opj_mqc_restart_init_enc(%struct.TYPE_29__*) #1

declare dso_local i32 @opj_t1_enc_sigpass(%struct.TYPE_28__*, i64, i64*, i64, i32) #1

declare dso_local i32 @opj_t1_enc_refpass(%struct.TYPE_28__*, i64, i64*, i64) #1

declare dso_local i32 @opj_t1_enc_clnpass(%struct.TYPE_28__*, i64, i64*, i32) #1

declare dso_local i32 @opj_mqc_segmark_enc(%struct.TYPE_29__*) #1

declare dso_local double @opj_t1_getwmsedec(i64, i32, i32, i32, i64, i32, double, i32, double*, i32) #1

declare dso_local i64 @opj_t1_enc_is_term_pass(%struct.TYPE_27__*, i32, i64, i32) #1

declare dso_local i32 @opj_mqc_bypass_flush_enc(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @opj_mqc_erterm_enc(%struct.TYPE_29__*) #1

declare dso_local i32 @opj_mqc_flush(%struct.TYPE_29__*) #1

declare dso_local i32 @opj_mqc_numbytes(%struct.TYPE_29__*) #1

declare dso_local i32 @opj_mqc_bypass_get_extra_bytes(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @opj_mqc_reset_enc(%struct.TYPE_29__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
