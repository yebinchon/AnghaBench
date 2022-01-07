; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_upgrades.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_upgrades.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@SPA_VERSION_ORIGIN = common dso_local global i64 0, align 8
@SPA_VERSION_NEXT_CLONES = common dso_local global i64 0, align 8
@SPA_VERSION_DIR_CLONES = common dso_local global i64 0, align 8
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@SPA_FEATURE_LZ4_COMPRESS = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_CHECKSUM_SALT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*)* @spa_sync_upgrades to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_sync_upgrades(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i32 @spa_sync_pass(%struct.TYPE_18__* %8)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %152

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* @RW_WRITER, align 4
  %19 = load i32, i32* @FTAG, align 4
  %20 = call i32 @rrw_enter(i32* %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPA_VERSION_ORIGIN, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %12
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SPA_VERSION_ORIGIN, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @dsl_pool_create_origin(%struct.TYPE_19__* %35, i32* %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 3
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %34, %27, %12
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SPA_VERSION_NEXT_CLONES, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SPA_VERSION_NEXT_CLONES, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @dsl_pool_upgrade_clones(%struct.TYPE_19__* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %49, %42
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SPA_VERSION_DIR_CLONES, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SPA_VERSION_DIR_CLONES, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @dsl_pool_upgrade_dir_clones(%struct.TYPE_19__* %75, i32* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 3
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %74, %67, %60
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @spa_feature_create_zap_objects(%struct.TYPE_18__* %97, i32* %98)
  br label %100

100:                                              ; preds = %96, %89, %82
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %100
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %109 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %110 = call i64 @spa_feature_is_enabled(%struct.TYPE_18__* %108, i32 %109)
  store i64 %110, i64* %6, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %113 = call i64 @spa_feature_is_active(%struct.TYPE_18__* %111, i32 %112)
  store i64 %113, i64* %7, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load i64, i64* %7, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @spa_feature_incr(%struct.TYPE_18__* %120, i32 %121, i32* %122)
  br label %124

124:                                              ; preds = %119, %116, %107
  br label %125

125:                                              ; preds = %124, %100
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %130 = load i32, i32* @DMU_POOL_CHECKSUM_SALT, align 4
  %131 = call i64 @zap_contains(i32 %128, i32 %129, i32 %130)
  %132 = load i64, i64* @ENOENT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %125
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %139 = load i32, i32* @DMU_POOL_CHECKSUM_SALT, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @zap_add(i32 %137, i32 %138, i32 %139, i32 1, i32 4, i32 %143, i32* %144)
  %146 = call i32 @VERIFY0(i32 %145)
  br label %147

147:                                              ; preds = %134, %125
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* @FTAG, align 4
  %151 = call i32 @rrw_exit(i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %11
  ret void
}

declare dso_local i32 @spa_sync_pass(%struct.TYPE_18__*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @dsl_pool_create_origin(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @dsl_pool_upgrade_clones(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @dsl_pool_upgrade_dir_clones(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @spa_feature_create_zap_objects(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @spa_feature_is_enabled(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @spa_feature_incr(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i64 @zap_contains(i32, i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_add(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
