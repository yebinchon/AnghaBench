; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_spill.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_spill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.drr_spill }
%struct.drr_spill = type { i8*, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_17__ = type { i64 }

@PENDING_NONE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@DRR_SPILL = common dso_local global i32 0, align 4
@zfs_send_unmodified_spill_blocks = common dso_local global i64 0, align 8
@DRR_SPILL_UNMODIFIED = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_RAW = common dso_local global i32 0, align 4
@DRR_RAW_BYTESWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i8*)* @dump_spill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_spill(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drr_spill*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store %struct.drr_spill* %17, %struct.drr_spill** %10, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = call i8* @BP_GET_LSIZE(%struct.TYPE_17__* %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PENDING_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = call i64 @dump_record(%struct.TYPE_16__* %27, i8* null, i8* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINTR, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %129

33:                                               ; preds = %26
  %34 = load i64, i64* @PENDING_NONE, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = call i32 @bzero(%struct.TYPE_18__* %40, i32 4)
  %42 = load i32, i32* @DRR_SPILL, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %49 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %52 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %57 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load i64, i64* @zfs_send_unmodified_spill_blocks, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %37
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* @DRR_SPILL_UNMODIFIED, align 4
  %70 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %71 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %60, %37
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DMU_BACKUP_FEATURE_RAW, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %74
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = call i32 @BP_IS_PROTECTED(%struct.TYPE_17__* %82)
  %84 = call i32 @ASSERT(i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = call i64 @BP_SHOULD_BYTESWAP(%struct.TYPE_17__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @DRR_RAW_BYTESWAP, align 4
  %90 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %91 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = call i32 @BP_GET_COMPRESS(%struct.TYPE_17__* %95)
  %97 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %98 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = call i8* @BP_GET_PSIZE(%struct.TYPE_17__* %99)
  %101 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %102 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %105 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %108 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @zio_crypt_decode_params_bp(%struct.TYPE_17__* %103, i32 %106, i32 %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %113 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @zio_crypt_decode_mac_bp(%struct.TYPE_17__* %111, i32 %114)
  %116 = load %struct.drr_spill*, %struct.drr_spill** %10, align 8
  %117 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %12, align 8
  br label %119

119:                                              ; preds = %94, %74
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = call i64 @dump_record(%struct.TYPE_16__* %120, i8* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @EINTR, align 4
  %127 = call i32 @SET_ERROR(i32 %126)
  store i32 %127, i32* %5, align 4
  br label %129

128:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %125, %30
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i8* @BP_GET_LSIZE(%struct.TYPE_17__*) #1

declare dso_local i64 @dump_record(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_PROTECTED(%struct.TYPE_17__*) #1

declare dso_local i64 @BP_SHOULD_BYTESWAP(%struct.TYPE_17__*) #1

declare dso_local i32 @BP_GET_COMPRESS(%struct.TYPE_17__*) #1

declare dso_local i8* @BP_GET_PSIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @zio_crypt_decode_params_bp(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @zio_crypt_decode_mac_bp(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
