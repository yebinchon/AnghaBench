; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_verify.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, %struct.TYPE_15__, i32, i32, i32, i32, i32, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }

@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_NEVER_REWIND = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@verify_dataset_name_len = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@spa_load_verify_metadata = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [156 x i8] c"performing a complete scan of the pool since extreme rewind is on. This may take a very long time.\0A  (spa_load_verify_data=%u, spa_load_verify_metadata=%u)\00", align 1
@spa_load_verify_data = common dso_local global i64 0, align 8
@TRAVERSE_PRE = common dso_local global i32 0, align 4
@TRAVERSE_PREFETCH_METADATA = common dso_local global i32 0, align 4
@TRAVERSE_NO_DECRYPT = common dso_local global i32 0, align 4
@spa_load_verify_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"spa_load_verify found %llu metadata errors and %llu data errors\00", align 1
@spa_load_verify_dryrun = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_LOAD_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REWIND_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_DATA_ERRORS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @spa_load_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_load_verify(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %10 = bitcast %struct.TYPE_18__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load i64, i64* @B_FALSE, align 8
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @zpool_get_load_policy(i32 %14, %struct.TYPE_16__* %6)
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ZPOOL_NEVER_REWIND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %212

22:                                               ; preds = %1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 11
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* @FTAG, align 4
  %27 = call i32 @dsl_pool_config_enter(%struct.TYPE_14__* %25, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 11
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @verify_dataset_name_len, align 4
  %37 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %38 = call i32 @dmu_objset_find_dp(%struct.TYPE_14__* %30, i32 %35, i32 %36, i32* null, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 11
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_pool_config_exit(%struct.TYPE_14__* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %22
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %212

48:                                               ; preds = %22
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %51 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %52 = or i32 %50, %51
  %53 = call i32* @zio_root(%struct.TYPE_17__* %49, i32* null, %struct.TYPE_18__* %5, i32 %52)
  store i32* %53, i32** %4, align 8
  %54 = load i64, i64* @spa_load_verify_metadata, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %48
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 10
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load i64, i64* @spa_load_verify_data, align 8
  %64 = load i64, i64* @spa_load_verify_metadata, align 8
  %65 = call i32 @spa_load_note(%struct.TYPE_17__* %62, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TRAVERSE_PRE, align 4
  %72 = load i32, i32* @TRAVERSE_PREFETCH_METADATA, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @TRAVERSE_NO_DECRYPT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @spa_load_verify_cb, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @traverse_pool(%struct.TYPE_17__* %67, i32 %70, i32 %75, i32 %76, i32* %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %66, %48
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @zio_wait(i32* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ASSERT0(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %79
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97, %79
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @spa_load_note(%struct.TYPE_17__* %102, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %106)
  br label %108

108:                                              ; preds = %101, %97
  %109 = load i64, i64* @spa_load_verify_dryrun, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %177, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sle i64 %116, %118
  br i1 %119, label %120, label %177

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp sle i64 %122, %124
  br i1 %125, label %126, label %177

126:                                              ; preds = %120, %108
  store i64 0, i64* %9, align 8
  %127 = load i64, i64* @B_TRUE, align 8
  store i64 %127, i64* %7, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  store i64 %146, i64* %9, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ZPOOL_CONFIG_LOAD_TIME, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @nvlist_add_uint64(i32 %149, i32 %150, i64 %153)
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @VERIFY(i32 %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ZPOOL_CONFIG_REWIND_TIME, align 4
  %162 = load i64, i64* %9, align 8
  %163 = call i64 @nvlist_add_int64(i32 %160, i32 %161, i64 %162)
  %164 = icmp eq i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @VERIFY(i32 %165)
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ZPOOL_CONFIG_LOAD_DATA_ERRORS, align 4
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @nvlist_add_uint64(i32 %169, i32 %170, i64 %172)
  %174 = icmp eq i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @VERIFY(i32 %175)
  br label %184

177:                                              ; preds = %120, %114, %111
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %177, %126
  %185 = load i64, i64* @spa_load_verify_dryrun, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 0, i32* %2, align 4
  br label %212

188:                                              ; preds = %184
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @ENXIO, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @EIO, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* @EIO, align 4
  %201 = call i32 @SET_ERROR(i32 %200)
  store i32 %201, i32* %8, align 4
  br label %202

202:                                              ; preds = %199, %195, %191
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %212

204:                                              ; preds = %188
  %205 = load i64, i64* %7, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %210

208:                                              ; preds = %204
  %209 = load i32, i32* @EIO, align 4
  br label %210

210:                                              ; preds = %208, %207
  %211 = phi i32 [ 0, %207 ], [ %209, %208 ]
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %210, %202, %187, %46, %21
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zpool_get_load_policy(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @dsl_pool_config_enter(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @dmu_objset_find_dp(%struct.TYPE_14__*, i32, i32, i32*, i32) #2

declare dso_local i32 @dsl_pool_config_exit(%struct.TYPE_14__*, i32) #2

declare dso_local i32* @zio_root(%struct.TYPE_17__*, i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @spa_load_note(%struct.TYPE_17__*, i8*, i64, i64) #2

declare dso_local i32 @traverse_pool(%struct.TYPE_17__*, i32, i32, i32, i32*) #2

declare dso_local i32 @zio_wait(i32*) #2

declare dso_local i32 @ASSERT0(i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_add_uint64(i32, i32, i64) #2

declare dso_local i64 @nvlist_add_int64(i32, i32, i64) #2

declare dso_local i32 @SET_ERROR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
