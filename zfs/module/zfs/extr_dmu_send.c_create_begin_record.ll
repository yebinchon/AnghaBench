; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_create_begin_record.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_create_begin_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.drr_begin }
%struct.drr_begin = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmu_send_params = type { %struct.TYPE_12__*, i64, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@DRR_BEGIN = common dso_local global i32 0, align 4
@DMU_BACKUP_MAGIC = common dso_local global i32 0, align 4
@DMU_SUBSTREAM = common dso_local global i32 0, align 4
@DRR_FLAG_CLONE = common dso_local global i32 0, align 4
@DS_FLAG_CI_DATASET = common dso_local global i32 0, align 4
@DRR_FLAG_CI_DATA = common dso_local global i32 0, align 4
@zfs_send_set_freerecords_bit = common dso_local global i64 0, align 8
@DRR_FLAG_FREERECORDS = common dso_local global i32 0, align 4
@DRR_FLAG_SPILL_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"@--head--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.dmu_send_params*, i32*, i32)* @create_begin_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @create_begin_record(%struct.dmu_send_params* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.dmu_send_params*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.drr_begin*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.dmu_send_params* %0, %struct.dmu_send_params** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @KM_SLEEP, align 4
  %11 = call %struct.TYPE_13__* @kmem_zalloc(i32 36, i32 %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  %12 = load i32, i32* @DRR_BEGIN, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store %struct.drr_begin* %17, %struct.drr_begin** %8, align 8
  %18 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %19 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %9, align 8
  %21 = load i32, i32* @DMU_BACKUP_MAGIC, align 4
  %22 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %23 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__* %24)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %29 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @dmu_objset_type(i32* %30)
  %32 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %33 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__* %34)
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %39 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %41 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %45 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %47 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DMU_SUBSTREAM, align 4
  %50 = call i32 @DMU_SET_STREAM_HDRTYPE(i32 %48, i32 %49)
  %51 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %52 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @DMU_SET_FEATUREFLAGS(i32 %53, i32 %54)
  %56 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %57 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %3
  %61 = load i32, i32* @DRR_FLAG_CLONE, align 4
  %62 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %63 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %3
  %67 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %68 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__* %69)
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DS_FLAG_CI_DATASET, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load i32, i32* @DRR_FLAG_CI_DATA, align 4
  %78 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %79 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %66
  %83 = load i64, i64* @zfs_send_set_freerecords_bit, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* @DRR_FLAG_FREERECORDS, align 4
  %87 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %88 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32, i32* @DRR_FLAG_SPILL_BLOCK, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %101 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dsl_dataset_name(%struct.TYPE_12__* %99, i32 %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %91
  %109 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %110 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strlcat(i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %113

113:                                              ; preds = %108, %91
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %114
}

declare dso_local %struct.TYPE_13__* @kmem_zalloc(i32, i32) #1

declare dso_local %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__*) #1

declare dso_local i32 @dmu_objset_type(i32*) #1

declare dso_local i32 @DMU_SET_STREAM_HDRTYPE(i32, i32) #1

declare dso_local i32 @DMU_SET_FEATUREFLAGS(i32, i32) #1

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
