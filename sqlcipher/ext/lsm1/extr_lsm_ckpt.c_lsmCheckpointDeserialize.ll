; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointDeserialize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointDeserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_21__*, i32*, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }

@LSM_OK = common dso_local global i32 0, align 4
@CKPT_HDR_NLEVEL = common dso_local global i64 0, align 8
@CKPT_HDR_SIZE = common dso_local global i32 0, align 4
@CKPT_APPENDLIST_SIZE = common dso_local global i32 0, align 4
@CKPT_LOGPTR_SIZE = common dso_local global i32 0, align 4
@CKPT_HDR_NBLOCK = common dso_local global i64 0, align 8
@CKPT_HDR_NWRITE = common dso_local global i64 0, align 8
@CKPT_HDR_CMPID = common dso_local global i64 0, align 8
@LSM_APPLIST_SZ = common dso_local global i32 0, align 4
@LSM_MAX_BLOCK_REDIRECTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmCheckpointDeserialize(%struct.TYPE_19__* %0, i32 %1, i8** %2, %struct.TYPE_20__** %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store %struct.TYPE_20__** %3, %struct.TYPE_20__*** %8, align 8
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_23__* @lsmMallocZeroRc(i32 %22, i32 88, i32* %9)
  %24 = bitcast %struct.TYPE_23__* %23 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @LSM_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %294

28:                                               ; preds = %4
  %29 = load i8**, i8*** %7, align 8
  %30 = load i64, i64* @CKPT_HDR_NLEVEL, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @CKPT_HDR_SIZE, align 4
  %35 = load i32, i32* @CKPT_APPENDLIST_SIZE, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @CKPT_LOGPTR_SIZE, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load i8**, i8*** %7, align 8
  %40 = call i32 @lsmCheckpointId(i8** %39, i32 0)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i64, i64* @CKPT_HDR_NBLOCK, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = load i64, i64* @CKPT_HDR_NWRITE, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = load i8**, i8*** %7, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = call i32 @ckptLoadLevels(%struct.TYPE_19__* %55, i8** %56, i32* %15, i32 %57, %struct.TYPE_21__** %59)
  store i32 %60, i32* %9, align 4
  %61 = load i8**, i8*** %7, align 8
  %62 = call i32 @lsmCheckpointLogOffset(i8** %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = load i64, i64* @CKPT_HDR_CMPID, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %93, %28
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @LSM_APPLIST_SZ, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i8**, i8*** %7, align 8
  %77 = load i32, i32* @CKPT_HDR_SIZE, align 4
  %78 = load i32, i32* @CKPT_LOGPTR_SIZE, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %13, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %76, i64 %83
  store i8** %84, i8*** %16, align 8
  %85 = load i8**, i8*** %16, align 8
  %86 = call i32 @ckptRead64(i8** %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %75
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %71

96:                                               ; preds = %71
  %97 = load i8**, i8*** %7, align 8
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %207

112:                                              ; preds = %96
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @LSM_MAX_BLOCK_REDIRECTS, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  %120 = call %struct.TYPE_23__* @lsmMallocZeroRc(i32 %115, i32 %119, i32* %9)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  store %struct.TYPE_23__* %120, %struct.TYPE_23__** %123, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @LSM_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %168

127:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %164, %127
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %167

135:                                              ; preds = %128
  %136 = load i8**, i8*** %7, align 8
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  store i8* %141, i8** %149, align 8
  %150 = load i8**, i8*** %7, align 8
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8*, i8** %150, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  store i8* %155, i8** %163, align 8
  br label %164

164:                                              ; preds = %135
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %128

167:                                              ; preds = %128
  br label %168

168:                                              ; preds = %167, %112
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  store %struct.TYPE_21__* %171, %struct.TYPE_21__** %11, align 8
  br label %172

172:                                              ; preds = %178, %168
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = icmp ne %struct.TYPE_21__* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  store %struct.TYPE_21__* %181, %struct.TYPE_21__** %11, align 8
  br label %172

182:                                              ; preds = %172
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %182
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  store %struct.TYPE_17__* %189, %struct.TYPE_17__** %199, align 8
  br label %206

200:                                              ; preds = %182
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  store %struct.TYPE_17__* %202, %struct.TYPE_17__** %205, align 8
  br label %206

206:                                              ; preds = %200, %187
  br label %207

207:                                              ; preds = %206, %96
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @LSM_OK, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %293

211:                                              ; preds = %207
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %293

214:                                              ; preds = %211
  %215 = load i8**, i8*** %7, align 8
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %15, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8*, i8** %215, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = ptrtoint i8* %220 to i32
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %292

224:                                              ; preds = %214
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = mul i64 16, %229
  %231 = trunc i64 %230 to i32
  %232 = call %struct.TYPE_23__* @lsmMallocZeroRc(i32 %227, i32 %231, i32* %9)
  %233 = bitcast %struct.TYPE_23__* %232 to %struct.TYPE_22__*
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  store %struct.TYPE_22__* %233, %struct.TYPE_22__** %236, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @LSM_OK, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %291

240:                                              ; preds = %224
  store i32 0, i32* %17, align 4
  br label %241

241:                                              ; preds = %280, %240
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %283

245:                                              ; preds = %241
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %248, align 8
  %250 = load i32, i32* %17, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i64 %251
  store %struct.TYPE_22__* %252, %struct.TYPE_22__** %18, align 8
  %253 = load i8**, i8*** %7, align 8
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %15, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8*, i8** %253, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  %261 = load i8**, i8*** %7, align 8
  %262 = load i32, i32* %15, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = ptrtoint i8* %265 to i32
  %267 = shl i32 %266, 32
  %268 = load i8**, i8*** %7, align 8
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %268, i64 %271
  %273 = load i8*, i8** %272, align 8
  %274 = sext i32 %267 to i64
  %275 = getelementptr i8, i8* %273, i64 %274
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  store i8* %275, i8** %277, align 8
  %278 = load i32, i32* %15, align 4
  %279 = add nsw i32 %278, 2
  store i32 %279, i32* %15, align 4
  br label %280

280:                                              ; preds = %245
  %281 = load i32, i32* %17, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %17, align 4
  br label %241

283:                                              ; preds = %241
  %284 = load i32, i32* %12, align 4
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 1
  store i32 %284, i32* %287, align 4
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  store i32 %284, i32* %290, align 8
  br label %291

291:                                              ; preds = %283, %224
  br label %292

292:                                              ; preds = %291, %214
  br label %293

293:                                              ; preds = %292, %211, %207
  br label %294

294:                                              ; preds = %293, %4
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* @LSM_OK, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %303 = call i32 @lsmFreeSnapshot(i32 %301, %struct.TYPE_20__* %302)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %10, align 8
  br label %304

304:                                              ; preds = %298, %294
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %306 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  store %struct.TYPE_20__* %305, %struct.TYPE_20__** %306, align 8
  %307 = load i32, i32* %9, align 4
  ret i32 %307
}

declare dso_local %struct.TYPE_23__* @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @lsmCheckpointId(i8**, i32) #1

declare dso_local i32 @ckptLoadLevels(%struct.TYPE_19__*, i8**, i32*, i32, %struct.TYPE_21__**) #1

declare dso_local i32 @lsmCheckpointLogOffset(i8**) #1

declare dso_local i32 @ckptRead64(i8**) #1

declare dso_local i32 @lsmFreeSnapshot(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
