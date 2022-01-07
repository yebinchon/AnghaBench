; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dmu_recv_begin.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dmu_recv_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i64, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32, i8*, i32, %struct.TYPE_15__*, i8*, %struct.TYPE_16__*, i32, i32*, i32, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i8*, i32, i8*, %struct.TYPE_17__*, i32 }

@DMU_BACKUP_MAGIC = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DRR_FLAG_SPILL_BLOCK = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_RESUMING = common dso_local global i32 0, align 4
@dmu_recv_resume_begin_check = common dso_local global i32 0, align 4
@dmu_recv_resume_begin_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_RAW = common dso_local global i32 0, align 4
@DCP_CMD_NONE = common dso_local global i32 0, align 4
@dmu_recv_begin_check = common dso_local global i32 0, align 4
@dmu_recv_begin_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_recv_begin(i8* %0, i8* %1, %struct.TYPE_16__* %2, i8* %3, i8* %4, i32* %5, i32* %6, i8* %7, %struct.TYPE_17__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_18__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i8* %7, i8** %20, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %28 = bitcast %struct.TYPE_18__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 40, i1 false)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %30 = call i32 @bzero(%struct.TYPE_17__* %29, i32 128)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 7
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 5
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %38, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 15
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 14
  store i8* %48, i8** %50, align 8
  %51 = call i8* (...) @CRED()
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 13
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %20, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i32
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 12
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %65 = call i64 @BSWAP_64(i64 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %11
  %68 = load i8*, i8** @B_TRUE, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 10
  %74 = call i32 @fletcher_4_incremental_byteswap(%struct.TYPE_16__* %71, i32 40, i32* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %76 = call i32 @byteswap_record(%struct.TYPE_16__* %75)
  br label %94

77:                                               ; preds = %11
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 10
  %89 = call i32 @fletcher_4_incremental_native(%struct.TYPE_16__* %86, i32 40, i32* %88)
  br label %93

90:                                               ; preds = %77
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @SET_ERROR(i32 %91)
  store i32 %92, i32* %12, align 4
  br label %247

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %67
  %95 = load i32*, i32** %22, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 9
  store i32* %95, i32** %97, align 8
  %98 = load i32*, i32** %23, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @DMU_GET_FEATUREFLAGS(i32 %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 7
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %26, align 8
  store i8* null, i8** %27, align 8
  %115 = load i64, i64* %26, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %94
  %118 = load i64, i64* %26, align 8
  %119 = load i32, i32* @KM_SLEEP, align 4
  %120 = call i8* @kmem_alloc(i64 %118, i32 %119)
  store i8* %120, i8** %27, align 8
  br label %121

121:                                              ; preds = %117, %94
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %123 = load i64, i64* %26, align 8
  %124 = load i8*, i8** %27, align 8
  %125 = call i32 @receive_read_payload_and_next_header(%struct.TYPE_17__* %122, i64 %123, i8* %124)
  store i32 %125, i32* %25, align 4
  %126 = load i32, i32* %25, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load i8*, i8** %27, align 8
  %130 = load i64, i64* %26, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @kmem_free(i8* %129, i32 %131)
  %133 = load i32, i32* %25, align 4
  store i32 %133, i32* %12, align 4
  br label %247

134:                                              ; preds = %121
  %135 = load i64, i64* %26, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = load i8*, i8** %27, align 8
  %139 = load i64, i64* %26, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 4
  %142 = load i32, i32* @KM_SLEEP, align 4
  %143 = call i32 @nvlist_unpack(i8* %138, i64 %139, i32* %141, i32 %142)
  store i32 %143, i32* %25, align 4
  %144 = load i8*, i8** %27, align 8
  %145 = load i64, i64* %26, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @kmem_free(i8* %144, i32 %146)
  %148 = load i32, i32* %25, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %137
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @kmem_free(i8* %153, i32 1)
  %155 = load i32, i32* %25, align 4
  store i32 %155, i32* %12, align 4
  br label %247

156:                                              ; preds = %137
  br label %157

157:                                              ; preds = %156, %134
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @DRR_FLAG_SPILL_BLOCK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i8*, i8** @B_TRUE, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %157
  %171 = load i8*, i8** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i8* %171, i8** %172, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 3
  store %struct.TYPE_17__* %173, %struct.TYPE_17__** %174, align 8
  %175 = call i8* (...) @CRED()
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  store i8* %175, i8** %176, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @DMU_BACKUP_FEATURE_RESUMING, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %170
  %184 = load i8*, i8** %13, align 8
  %185 = load i32, i32* @dmu_recv_resume_begin_check, align 4
  %186 = load i32, i32* @dmu_recv_resume_begin_sync, align 4
  %187 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %188 = call i32 @dsl_sync_task(i8* %184, i32 %185, i32 %186, %struct.TYPE_18__* %24, i32 5, i32 %187)
  store i32 %188, i32* %25, align 4
  br label %233

189:                                              ; preds = %170
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @DMU_GET_FEATUREFLAGS(i32 %194)
  %196 = load i32, i32* @DMU_BACKUP_FEATURE_RAW, align 4
  %197 = and i32 %195, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %189
  %200 = load i8*, i8** %20, align 8
  %201 = icmp eq i8* %200, null
  br i1 %201, label %202, label %215

202:                                              ; preds = %199
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 5
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load i32, i32* @DCP_CMD_NONE, align 4
  %211 = load i32*, i32** %18, align 8
  %212 = load i32*, i32** %19, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %214 = call i32 @dsl_crypto_params_create_nvlist(i32 %210, i32* %211, i32* %212, i32* %213)
  store i32 %214, i32* %25, align 4
  br label %215

215:                                              ; preds = %209, %202, %199, %189
  %216 = load i32, i32* %25, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %215
  %219 = load i8*, i8** %13, align 8
  %220 = load i32, i32* @dmu_recv_begin_check, align 4
  %221 = load i32, i32* @dmu_recv_begin_sync, align 4
  %222 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %223 = call i32 @dsl_sync_task(i8* %219, i32 %220, i32 %221, %struct.TYPE_18__* %24, i32 5, i32 %222)
  store i32 %223, i32* %25, align 4
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %25, align 4
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = call i32 @dsl_crypto_params_free(i32 %225, i32 %230)
  br label %232

232:                                              ; preds = %218, %215
  br label %233

233:                                              ; preds = %232, %183
  %234 = load i32, i32* %25, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 3
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @kmem_free(i8* %239, i32 1)
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @nvlist_free(i32 %243)
  br label %245

245:                                              ; preds = %236, %233
  %246 = load i32, i32* %25, align 4
  store i32 %246, i32* %12, align 4
  br label %247

247:                                              ; preds = %245, %150, %128, %90
  %248 = load i32, i32* %12, align 4
  ret i32 %248
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bzero(%struct.TYPE_17__*, i32) #2

declare dso_local i8* @CRED(...) #2

declare dso_local i64 @BSWAP_64(i64) #2

declare dso_local i32 @fletcher_4_incremental_byteswap(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @byteswap_record(%struct.TYPE_16__*) #2

declare dso_local i32 @fletcher_4_incremental_native(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @DMU_GET_FEATUREFLAGS(i32) #2

declare dso_local i8* @kmem_alloc(i64, i32) #2

declare dso_local i32 @receive_read_payload_and_next_header(%struct.TYPE_17__*, i64, i8*) #2

declare dso_local i32 @kmem_free(i8*, i32) #2

declare dso_local i32 @nvlist_unpack(i8*, i64, i32*, i32) #2

declare dso_local i32 @dsl_sync_task(i8*, i32, i32, %struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @dsl_crypto_params_create_nvlist(i32, i32*, i32*, i32*) #2

declare dso_local i32 @dsl_crypto_params_free(i32, i32) #2

declare dso_local i32 @nvlist_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
