; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dmu_send_obj.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dmu_send_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.dmu_send_params = type { i32, i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__, %struct.TYPE_17__*, i8*, i32, i32*, i32*, i8*, i8*, i8*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@DS_HOLD_FLAG_DECRYPT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DS_FIELD_IVSET_GUID = common dso_local global i32 0, align 4
@SPA_FEATURE_REDACTED_DATASETS = common dso_local global i32 0, align 4
@NUM_SNAPS_NOT_REDACTED = common dso_local global i8* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_send_obj(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.dmu_send_params, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load i8*, i8** %18, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  br label %33

31:                                               ; preds = %10
  %32 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 0, %30 ], [ %32, %31 ]
  store i32 %34, i32* %24, align 4
  %35 = bitcast %struct.dmu_send_params* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 120, i1 false)
  %36 = load i8*, i8** %15, align 8
  %37 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 13
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 12
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 11
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %19, align 4
  %43 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 10
  store i32* %44, i32** %45, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 9
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* @FTAG, align 4
  %49 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 8
  store i32 %48, i32* %49, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 7
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* @FTAG, align 4
  %54 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 6
  %55 = call i32 @dsl_pool_hold(i8* %52, i32 %53, %struct.TYPE_17__** %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %33
  %59 = load i32, i32* %22, align 4
  store i32 %59, i32* %11, align 4
  br label %199

60:                                               ; preds = %33
  %61 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 6
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* @FTAG, align 4
  %66 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 3
  %67 = call i32 @dsl_dataset_hold_obj_flags(%struct.TYPE_17__* %62, i32 %63, i32 %64, i32 %65, %struct.TYPE_16__** %66)
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 6
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load i32, i32* @FTAG, align 4
  %74 = call i32 @dsl_pool_rele(%struct.TYPE_17__* %72, i32 %73)
  %75 = load i32, i32* %22, align 4
  store i32 %75, i32* %11, align 4
  br label %199

76:                                               ; preds = %60
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %188

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 6
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* @FTAG, align 4
  %85 = call i32 @dsl_dataset_hold_obj_flags(%struct.TYPE_17__* %81, i32 %82, i32 %83, i32 %84, %struct.TYPE_16__** %23)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 3
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* @FTAG, align 4
  %93 = call i32 @dsl_dataset_rele_flags(%struct.TYPE_16__* %90, i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 6
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load i32, i32* @FTAG, align 4
  %97 = call i32 @dsl_pool_rele(%struct.TYPE_17__* %95, i32 %96)
  %98 = load i32, i32* %22, align 4
  store i32 %98, i32* %11, align 4
  br label %199

99:                                               ; preds = %79
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %101 = call %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_16__* %100)
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %107 = call %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_16__* %106)
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %113 = call %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_16__* %112)
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %119 = call i64 @dsl_dataset_is_zapified(%struct.TYPE_16__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %99
  %122 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 6
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DS_FIELD_IVSET_GUID, align 4
  %130 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = call i32 @zap_lookup(i32 %125, i32 %128, i32 %129, i32 8, i32 1, i32* %131)
  br label %133

133:                                              ; preds = %121, %99
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %135 = load i32, i32* @SPA_FEATURE_REDACTED_DATASETS, align 4
  %136 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 1
  %137 = call i32 @dsl_dataset_get_uint64_array_feature(%struct.TYPE_16__* %134, i32 %135, i32* %136, i32** %26)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = load i8*, i8** @NUM_SNAPS_NOT_REDACTED, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  br label %163

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %27, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* @KM_SLEEP, align 4
  %155 = call i32 @kmem_zalloc(i32 %153, i32 %154)
  %156 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 4
  store i32 %155, i32* %156, align 8
  %157 = load i32*, i32** %26, align 8
  %158 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %27, align 4
  %161 = call i32 @bcopy(i32* %157, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %147, %143
  br label %163

163:                                              ; preds = %162, %139
  %164 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 3
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %167 = call i32 @dsl_dataset_is_before(%struct.TYPE_16__* %165, %struct.TYPE_16__* %166, i32 0)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @EXDEV, align 4
  %171 = call i32 @SET_ERROR(i32 %170)
  store i32 %171, i32* %22, align 4
  br label %187

172:                                              ; preds = %163
  %173 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 3
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %176, %179
  %181 = zext i1 %180 to i32
  %182 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 2
  store i32 %181, i32* %182, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %184 = load i32, i32* @FTAG, align 4
  %185 = call i32 @dsl_dataset_rele(%struct.TYPE_16__* %183, i32 %184)
  %186 = call i32 @dmu_send_impl(%struct.dmu_send_params* %25)
  store i32 %186, i32* %22, align 4
  br label %187

187:                                              ; preds = %172, %169
  br label %193

188:                                              ; preds = %76
  %189 = load i8*, i8** @NUM_SNAPS_NOT_REDACTED, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 1
  store i32 %190, i32* %191, align 4
  %192 = call i32 @dmu_send_impl(%struct.dmu_send_params* %25)
  store i32 %192, i32* %22, align 4
  br label %193

193:                                              ; preds = %188, %187
  %194 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %25, i32 0, i32 3
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = load i32, i32* @FTAG, align 4
  %197 = call i32 @dsl_dataset_rele(%struct.TYPE_16__* %195, i32 %196)
  %198 = load i32, i32* %22, align 4
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %193, %88, %70, %58
  %200 = load i32, i32* %11, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, %struct.TYPE_17__**) #2

declare dso_local i32 @dsl_dataset_hold_obj_flags(%struct.TYPE_17__*, i32, i32, i32, %struct.TYPE_16__**) #2

declare dso_local i32 @dsl_pool_rele(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @dsl_dataset_rele_flags(%struct.TYPE_16__*, i32, i32) #2

declare dso_local %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_16__*) #2

declare dso_local i64 @dsl_dataset_is_zapified(%struct.TYPE_16__*) #2

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @dsl_dataset_get_uint64_array_feature(%struct.TYPE_16__*, i32, i32*, i32**) #2

declare dso_local i32 @kmem_zalloc(i32, i32) #2

declare dso_local i32 @bcopy(i32*, i32, i32) #2

declare dso_local i32 @dsl_dataset_is_before(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @dmu_send_impl(%struct.dmu_send_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
