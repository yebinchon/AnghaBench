; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_preferred_class.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_preferred_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@zfs_ddt_data_is_special = common dso_local global i64 0, align 8
@DMU_OT_ZVOL = common dso_local global i64 0, align 8
@zfs_user_indirect_is_special = common dso_local global i64 0, align 8
@zfs_special_class_metadata_reserve_pct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @spa_preferred_class(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @DMU_OT_IS_ZIL(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = call i32* @spa_log_class(%struct.TYPE_13__* %28)
  store i32* %29, i32** %6, align 8
  br label %138

30:                                               ; preds = %20
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = call i32* @spa_normal_class(%struct.TYPE_13__* %31)
  store i32* %32, i32** %6, align 8
  br label %138

33:                                               ; preds = %5
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @DMU_OT_IS_DDT(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %33
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = call i32* @spa_dedup_class(%struct.TYPE_13__* %52)
  store i32* %53, i32** %6, align 8
  br label %138

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* @zfs_ddt_data_is_special, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = call i32* @spa_special_class(%struct.TYPE_13__* %61)
  store i32* %62, i32** %6, align 8
  br label %138

63:                                               ; preds = %57, %54
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = call i32* @spa_normal_class(%struct.TYPE_13__* %64)
  store i32* %65, i32** %6, align 8
  br label %138

66:                                               ; preds = %33
  %67 = load i64, i64* %10, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @DMU_OT_IS_FILE(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @DMU_OT_ZVOL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* @zfs_user_indirect_is_special, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = call i32* @spa_special_class(%struct.TYPE_13__* %84)
  store i32* %85, i32** %6, align 8
  br label %138

86:                                               ; preds = %80, %77
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = call i32* @spa_normal_class(%struct.TYPE_13__* %87)
  store i32* %88, i32** %6, align 8
  br label %138

89:                                               ; preds = %73, %66
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @DMU_OT_IS_METADATA(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %10, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = call i32* @spa_special_class(%struct.TYPE_13__* %100)
  store i32* %101, i32** %6, align 8
  br label %138

102:                                              ; preds = %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = call i32* @spa_normal_class(%struct.TYPE_13__* %103)
  store i32* %104, i32** %6, align 8
  br label %138

105:                                              ; preds = %93
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @DMU_OT_IS_FILE(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp sle i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = call i32* @spa_special_class(%struct.TYPE_13__* %117)
  store i32* %118, i32** %13, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i64 @metaslab_class_get_alloc(i32* %119)
  store i64 %120, i64* %14, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i64 @metaslab_class_get_space(i32* %121)
  store i64 %122, i64* %15, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i32, i32* @zfs_special_class_metadata_reserve_pct, align 4
  %125 = sub nsw i32 100, %124
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %123, %126
  %128 = sdiv i64 %127, 100
  store i64 %128, i64* %16, align 8
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* %16, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i32*, i32** %13, align 8
  store i32* %133, i32** %6, align 8
  br label %138

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %112, %109, %105
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %137 = call i32* @spa_normal_class(%struct.TYPE_13__* %136)
  store i32* %137, i32** %6, align 8
  br label %138

138:                                              ; preds = %135, %132, %102, %99, %86, %83, %63, %60, %51, %30, %27
  %139 = load i32*, i32** %6, align 8
  ret i32* %139
}

declare dso_local i64 @DMU_OT_IS_ZIL(i64) #1

declare dso_local i32* @spa_log_class(%struct.TYPE_13__*) #1

declare dso_local i32* @spa_normal_class(%struct.TYPE_13__*) #1

declare dso_local i64 @DMU_OT_IS_DDT(i64) #1

declare dso_local i32* @spa_dedup_class(%struct.TYPE_13__*) #1

declare dso_local i32* @spa_special_class(%struct.TYPE_13__*) #1

declare dso_local i64 @DMU_OT_IS_FILE(i64) #1

declare dso_local i64 @DMU_OT_IS_METADATA(i64) #1

declare dso_local i64 @metaslab_class_get_alloc(i32*) #1

declare dso_local i64 @metaslab_class_get_space(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
