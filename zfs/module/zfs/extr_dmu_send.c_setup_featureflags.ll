; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_setup_featureflags.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_setup_featureflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmu_send_params = type { i64, i64, i32*, i64, i64, i64, i64, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@SPA_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_LARGE_BLOCKS = common dso_local global i64 0, align 8
@SPA_FEATURE_EMBEDDED_DATA = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_EMBED_DATA = common dso_local global i64 0, align 8
@DMU_BACKUP_FEATURE_COMPRESSED = common dso_local global i64 0, align 8
@DMU_BACKUP_FEATURE_RAW = common dso_local global i64 0, align 8
@SPA_FEATURE_LZ4_COMPRESS = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_LZ4 = common dso_local global i64 0, align 8
@DMU_BACKUP_FEATURE_RESUMING = common dso_local global i64 0, align 8
@DMU_BACKUP_FEATURE_REDACTED = common dso_local global i64 0, align 8
@SPA_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_LARGE_DNODE = common dso_local global i64 0, align 8
@DMU_BACKUP_FEATURE_SA_SPILL = common dso_local global i64 0, align 8
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmu_send_params*, %struct.TYPE_6__*, i64*)* @setup_featureflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_featureflags(%struct.dmu_send_params* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.dmu_send_params*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.dmu_send_params* %0, %struct.dmu_send_params** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %10 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %13 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %12, i32 0, i32 7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %16 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %21 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19, %3
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @SPA_FEATURE_LARGE_BLOCKS, align 4
  %27 = call i64 @dsl_dataset_feature_is_active(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i64, i64* @DMU_BACKUP_FEATURE_LARGE_BLOCKS, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = or i64 %32, %30
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %24, %19
  %35 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %36 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %41 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SPA_FEATURE_EMBEDDED_DATA, align 4
  %54 = call i64 @spa_feature_is_active(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i64, i64* @DMU_BACKUP_FEATURE_EMBED_DATA, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %57
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %56, %49, %44, %39
  %62 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %63 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %68 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66, %61
  %72 = load i64, i64* @DMU_BACKUP_FEATURE_COMPRESSED, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %72
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %78 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i64, i64* @DMU_BACKUP_FEATURE_RAW, align 8
  %88 = load i64*, i64** %6, align 8
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %87
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %86, %81, %76
  %92 = load i64*, i64** %6, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DMU_BACKUP_FEATURE_EMBED_DATA, align 8
  %95 = load i64, i64* @DMU_BACKUP_FEATURE_COMPRESSED, align 8
  %96 = or i64 %94, %95
  %97 = load i64, i64* @DMU_BACKUP_FEATURE_RAW, align 8
  %98 = or i64 %96, %97
  %99 = and i64 %93, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %91
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %106 = call i64 @spa_feature_is_active(i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i64, i64* @DMU_BACKUP_FEATURE_LZ4, align 8
  %110 = load i64*, i64** %6, align 8
  %111 = load i64, i64* %110, align 8
  %112 = or i64 %111, %109
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %108, %101, %91
  %114 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %115 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %120 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118, %113
  %124 = load i64, i64* @DMU_BACKUP_FEATURE_RESUMING, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = load i64, i64* %125, align 8
  %127 = or i64 %126, %124
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.dmu_send_params*, %struct.dmu_send_params** %4, align 8
  %130 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i64, i64* @DMU_BACKUP_FEATURE_REDACTED, align 8
  %135 = load i64*, i64** %6, align 8
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %134
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* @SPA_FEATURE_LARGE_DNODE, align 4
  %141 = call i64 @dsl_dataset_feature_is_active(i32* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i64, i64* @DMU_BACKUP_FEATURE_LARGE_DNODE, align 8
  %145 = load i64*, i64** %6, align 8
  %146 = load i64, i64* %145, align 8
  %147 = or i64 %146, %144
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %143, %138
  ret i32 0
}

declare dso_local i64 @dsl_dataset_feature_is_active(i32*, i32) #1

declare dso_local i64 @spa_feature_is_active(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
