; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_decode_cblk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_decode_cblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64*, i32*, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32*, i32, %struct.TYPE_20__*, %struct.TYPE_19__*, i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i64* }

@T1_TYPE_MQ = common dso_local global i64 0, align 8
@lut_ctxno_zc = common dso_local global i64 0, align 8
@OPJ_FALSE = common dso_local global i64 0, align 8
@EVT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"opj_t1_decode_cblk(): unsupported bpno_plus_one = %d >= 31\0A\00", align 1
@T1_CTXNO_UNI = common dso_local global i32 0, align 4
@T1_CTXNO_AGG = common dso_local global i32 0, align 4
@T1_CTXNO_ZC = common dso_local global i32 0, align 4
@OPJ_COMMON_CBLK_DATA_EXTRA = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i64 0, align 8
@J2K_CCP_CBLKSTY_LAZY = common dso_local global i32 0, align 4
@T1_TYPE_RAW = common dso_local global i64 0, align 8
@J2K_CCP_CBLKSTY_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"PTERM check failure: %d remaining bytes in code block (%d used / %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"PTERM check failure: %d synthetized 0xFF markers read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32, i32, i32*, i32*, i64)* @opj_t1_decode_cblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opj_t1_decode_cblk(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 4
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %18, align 8
  store i64* null, i64** %23, align 8
  store i32 0, i32* %24, align 4
  %32 = load i64, i64* @T1_TYPE_MQ, align 8
  store i64 %32, i64* %25, align 8
  store i32* null, i32** %26, align 8
  %33 = load i64, i64* @lut_ctxno_zc, align 8
  %34 = load i32, i32* %12, align 4
  %35 = shl i32 %34, 9
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 4
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @opj_t1_allocate_buffers(%struct.TYPE_22__* %40, i32 %48, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %8
  %60 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %60, i64* %9, align 8
  br label %481

61:                                               ; preds = %8
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp sge i32 %67, 31
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  %70 = load i32*, i32** %16, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @opj_mutex_lock(i32* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* @EVT_WARNING, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i32 (i32*, i32, i8*, i32, ...) @opj_event_msg(i32* %76, i32 %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %16, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @opj_mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %82, %75
  %86 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %86, i64* %9, align 8
  br label %481

87:                                               ; preds = %61
  store i32 2, i32* %20, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %89 = call i32 @opj_mqc_resetstates(%struct.TYPE_23__* %88)
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %91 = load i32, i32* @T1_CTXNO_UNI, align 4
  %92 = call i32 @opj_mqc_setstate(%struct.TYPE_23__* %90, i32 %91, i32 0, i32 46)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %94 = load i32, i32* @T1_CTXNO_AGG, align 4
  %95 = call i32 @opj_mqc_setstate(%struct.TYPE_23__* %93, i32 %94, i32 0, i32 3)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %97 = load i32, i32* @T1_CTXNO_ZC, align 4
  %98 = call i32 @opj_mqc_setstate(%struct.TYPE_23__* %96, i32 %97, i32 0, i32 4)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %108, label %103

103:                                              ; preds = %87
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %213

108:                                              ; preds = %103, %87
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %109

109:                                              ; preds = %126, %108
  %110 = load i32, i32* %27, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = load i32, i32* %27, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %28, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %28, align 4
  br label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %27, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %27, align 4
  br label %109

129:                                              ; preds = %109
  %130 = load i32, i32* %28, align 4
  %131 = load i32, i32* @OPJ_COMMON_CBLK_DATA_EXTRA, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %129
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %28, align 4
  %142 = load i32, i32* @OPJ_COMMON_CBLK_DATA_EXTRA, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i64 @opj_realloc(i64* %140, i32 %143)
  %145 = inttoptr i64 %144 to i64*
  store i64* %145, i64** %23, align 8
  %146 = load i64*, i64** %23, align 8
  %147 = icmp eq i64* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %137
  %149 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %149, i64* %9, align 8
  br label %481

150:                                              ; preds = %137
  %151 = load i64*, i64** %23, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  store i64* %151, i64** %153, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %28, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i32, i32* @OPJ_COMMON_CBLK_DATA_EXTRA, align 4
  %161 = call i32 @memset(i64* %159, i32 0, i32 %160)
  %162 = load i32, i32* %28, align 4
  %163 = load i32, i32* @OPJ_COMMON_CBLK_DATA_EXTRA, align 4
  %164 = add nsw i32 %162, %163
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %150, %129
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load i64*, i64** %169, align 8
  store i64* %170, i64** %23, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %171

171:                                              ; preds = %209, %167
  %172 = load i32, i32* %27, align 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %212

177:                                              ; preds = %171
  %178 = load i64*, i64** %23, align 8
  %179 = load i32, i32* %28, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %183, align 8
  %185 = load i32, i32* %27, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = load i32, i32* %27, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @memcpy(i64* %181, i64* %189, i32 %197)
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %200, align 8
  %202 = load i32, i32* %27, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %28, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %28, align 4
  br label %209

209:                                              ; preds = %177
  %210 = load i32, i32* %27, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %27, align 4
  br label %171

212:                                              ; preds = %171
  br label %228

213:                                              ; preds = %103
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  store i64* %224, i64** %23, align 8
  br label %227

225:                                              ; preds = %213
  %226 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %226, i64* %9, align 8
  br label %481

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227, %212
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  store i32* %236, i32** %26, align 8
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 2
  store i32* %239, i32** %241, align 8
  br label %242

242:                                              ; preds = %233, %228
  store i32 0, i32* %21, align 4
  br label %243

243:                                              ; preds = %388, %242
  %244 = load i32, i32* %21, align 4
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %391

249:                                              ; preds = %243
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 4
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %251, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i64 %254
  store %struct.TYPE_20__* %255, %struct.TYPE_20__** %29, align 8
  %256 = load i32, i32* %19, align 4
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %259, 4
  %261 = icmp sle i32 %256, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %249
  %263 = load i32, i32* %20, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* @J2K_CCP_CBLKSTY_LAZY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i64, i64* @T1_TYPE_RAW, align 8
  br label %274

272:                                              ; preds = %265, %262, %249
  %273 = load i64, i64* @T1_TYPE_MQ, align 8
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi i64 [ %271, %270 ], [ %273, %272 ]
  store i64 %275, i64* %25, align 8
  %276 = load i64, i64* %25, align 8
  %277 = load i64, i64* @T1_TYPE_RAW, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %290

279:                                              ; preds = %274
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %281 = load i64*, i64** %23, align 8
  %282 = load i32, i32* %24, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @OPJ_COMMON_CBLK_DATA_EXTRA, align 4
  %289 = call i32 @opj_mqc_raw_init_dec(%struct.TYPE_23__* %280, i64* %284, i32 %287, i32 %288)
  br label %301

290:                                              ; preds = %274
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %292 = load i64*, i64** %23, align 8
  %293 = load i32, i32* %24, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @OPJ_COMMON_CBLK_DATA_EXTRA, align 4
  %300 = call i32 @opj_mqc_init_dec(%struct.TYPE_23__* %291, i64* %295, i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %290, %279
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %307

307:                                              ; preds = %382, %301
  %308 = load i32, i32* %22, align 4
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %308, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %307
  %314 = load i32, i32* %19, align 4
  %315 = icmp sge i32 %314, 1
  br label %316

316:                                              ; preds = %313, %307
  %317 = phi i1 [ false, %307 ], [ %315, %313 ]
  br i1 %317, label %318, label %385

318:                                              ; preds = %316
  %319 = load i32, i32* %20, align 4
  switch i32 %319, label %353 [
    i32 0, label %320
    i32 1, label %335
    i32 2, label %348
  ]

320:                                              ; preds = %318
  %321 = load i64, i64* %25, align 8
  %322 = load i64, i64* @T1_TYPE_RAW, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %326 = load i32, i32* %19, align 4
  %327 = load i32, i32* %14, align 4
  %328 = call i32 @opj_t1_dec_sigpass_raw(%struct.TYPE_22__* %325, i32 %326, i32 %327)
  br label %334

329:                                              ; preds = %320
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* %14, align 4
  %333 = call i32 @opj_t1_dec_sigpass_mqc(%struct.TYPE_22__* %330, i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %329, %324
  br label %353

335:                                              ; preds = %318
  %336 = load i64, i64* %25, align 8
  %337 = load i64, i64* @T1_TYPE_RAW, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %343

339:                                              ; preds = %335
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %341 = load i32, i32* %19, align 4
  %342 = call i32 @opj_t1_dec_refpass_raw(%struct.TYPE_22__* %340, i32 %341)
  br label %347

343:                                              ; preds = %335
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %345 = load i32, i32* %19, align 4
  %346 = call i32 @opj_t1_dec_refpass_mqc(%struct.TYPE_22__* %344, i32 %345)
  br label %347

347:                                              ; preds = %343, %339
  br label %353

348:                                              ; preds = %318
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %350 = load i32, i32* %19, align 4
  %351 = load i32, i32* %14, align 4
  %352 = call i32 @opj_t1_dec_clnpass(%struct.TYPE_22__* %349, i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %318, %348, %347, %334
  %354 = load i32, i32* %14, align 4
  %355 = load i32, i32* @J2K_CCP_CBLKSTY_RESET, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %374

358:                                              ; preds = %353
  %359 = load i64, i64* %25, align 8
  %360 = load i64, i64* @T1_TYPE_MQ, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %374

362:                                              ; preds = %358
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %364 = call i32 @opj_mqc_resetstates(%struct.TYPE_23__* %363)
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %366 = load i32, i32* @T1_CTXNO_UNI, align 4
  %367 = call i32 @opj_mqc_setstate(%struct.TYPE_23__* %365, i32 %366, i32 0, i32 46)
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %369 = load i32, i32* @T1_CTXNO_AGG, align 4
  %370 = call i32 @opj_mqc_setstate(%struct.TYPE_23__* %368, i32 %369, i32 0, i32 3)
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %372 = load i32, i32* @T1_CTXNO_ZC, align 4
  %373 = call i32 @opj_mqc_setstate(%struct.TYPE_23__* %371, i32 %372, i32 0, i32 4)
  br label %374

374:                                              ; preds = %362, %358, %353
  %375 = load i32, i32* %20, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %20, align 4
  %377 = icmp eq i32 %376, 3
  br i1 %377, label %378, label %381

378:                                              ; preds = %374
  store i32 0, i32* %20, align 4
  %379 = load i32, i32* %19, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %19, align 4
  br label %381

381:                                              ; preds = %378, %374
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %22, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %22, align 4
  br label %307

385:                                              ; preds = %316
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %387 = call i32 @opq_mqc_finish_dec(%struct.TYPE_23__* %386)
  br label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %21, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %21, align 4
  br label %243

391:                                              ; preds = %243
  %392 = load i64, i64* %17, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %470

394:                                              ; preds = %391
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = add nsw i64 %397, 2
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = icmp slt i64 %398, %401
  br i1 %402, label %403, label %444

403:                                              ; preds = %394
  %404 = load i32*, i32** %16, align 8
  %405 = icmp ne i32* %404, null
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load i32*, i32** %16, align 8
  %408 = call i32 @opj_mutex_lock(i32* %407)
  br label %409

409:                                              ; preds = %406, %403
  %410 = load i32*, i32** %15, align 8
  %411 = load i32, i32* @EVT_WARNING, align 4
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = sub nsw i64 %414, %417
  %419 = trunc i64 %418 to i32
  %420 = sub nsw i32 %419, 2
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %425 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %424, i32 0, i32 2
  %426 = load i64, i64* %425, align 8
  %427 = sub nsw i64 %423, %426
  %428 = trunc i64 %427 to i32
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = sub nsw i64 %431, %434
  %436 = trunc i64 %435 to i32
  %437 = call i32 (i32*, i32, i8*, i32, ...) @opj_event_msg(i32* %410, i32 %411, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %420, i32 %428, i32 %436)
  %438 = load i32*, i32** %16, align 8
  %439 = icmp ne i32* %438, null
  br i1 %439, label %440, label %443

440:                                              ; preds = %409
  %441 = load i32*, i32** %16, align 8
  %442 = call i32 @opj_mutex_unlock(i32* %441)
  br label %443

443:                                              ; preds = %440, %409
  br label %469

444:                                              ; preds = %394
  %445 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 8
  %448 = icmp sgt i32 %447, 2
  br i1 %448, label %449, label %468

449:                                              ; preds = %444
  %450 = load i32*, i32** %16, align 8
  %451 = icmp ne i32* %450, null
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load i32*, i32** %16, align 8
  %454 = call i32 @opj_mutex_lock(i32* %453)
  br label %455

455:                                              ; preds = %452, %449
  %456 = load i32*, i32** %15, align 8
  %457 = load i32, i32* @EVT_WARNING, align 4
  %458 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %459 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 8
  %461 = call i32 (i32*, i32, i8*, i32, ...) @opj_event_msg(i32* %456, i32 %457, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %460)
  %462 = load i32*, i32** %16, align 8
  %463 = icmp ne i32* %462, null
  br i1 %463, label %464, label %467

464:                                              ; preds = %455
  %465 = load i32*, i32** %16, align 8
  %466 = call i32 @opj_mutex_unlock(i32* %465)
  br label %467

467:                                              ; preds = %464, %455
  br label %468

468:                                              ; preds = %467, %444
  br label %469

469:                                              ; preds = %468, %443
  br label %470

470:                                              ; preds = %469, %391
  %471 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 2
  %473 = load i32*, i32** %472, align 8
  %474 = icmp ne i32* %473, null
  br i1 %474, label %475, label %479

475:                                              ; preds = %470
  %476 = load i32*, i32** %26, align 8
  %477 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %478 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %477, i32 0, i32 2
  store i32* %476, i32** %478, align 8
  br label %479

479:                                              ; preds = %475, %470
  %480 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %480, i64* %9, align 8
  br label %481

481:                                              ; preds = %479, %225, %148, %85, %59
  %482 = load i64, i64* %9, align 8
  ret i64 %482
}

declare dso_local i32 @opj_t1_allocate_buffers(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @opj_mutex_lock(i32*) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @opj_mutex_unlock(i32*) #1

declare dso_local i32 @opj_mqc_resetstates(%struct.TYPE_23__*) #1

declare dso_local i32 @opj_mqc_setstate(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i64 @opj_realloc(i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @opj_mqc_raw_init_dec(%struct.TYPE_23__*, i64*, i32, i32) #1

declare dso_local i32 @opj_mqc_init_dec(%struct.TYPE_23__*, i64*, i32, i32) #1

declare dso_local i32 @opj_t1_dec_sigpass_raw(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @opj_t1_dec_sigpass_mqc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @opj_t1_dec_refpass_raw(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @opj_t1_dec_refpass_mqc(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @opj_t1_dec_clnpass(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @opq_mqc_finish_dec(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
