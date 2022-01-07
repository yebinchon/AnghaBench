; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_open_aux_vdevs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_open_aux_vdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, i32* }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32 }

@DMU_POOL_SPARES = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SPA_IMPORT_ASSEMBLE = common dso_local global i64 0, align 8
@SPA_VERSION_SPARES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"error loading spares nvlist\00", align 1
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@DMU_POOL_L2CACHE = common dso_local global i32 0, align 4
@SPA_VERSION_L2CACHE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"error loading l2cache nvlist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64)* @spa_ld_open_aux_vdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_open_aux_vdevs(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = load i32, i32* @DMU_POOL_SPARES, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load i32, i32* @B_FALSE, align 4
  %17 = call i32 @spa_dir_prop(%struct.TYPE_15__* %11, i32 %12, i32* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %27 = load i32, i32* @EIO, align 4
  %28 = call i32 @spa_vdev_err(i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %153

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @SPA_IMPORT_ASSEMBLE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = call i64 @spa_version(%struct.TYPE_15__* %37)
  %39 = load i64, i64* @SPA_VERSION_SPARES, align 8
  %40 = icmp sge i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = call i64 @load_nvlist(%struct.TYPE_15__* %43, i32 %47, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @spa_load_failed(%struct.TYPE_15__* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %58 = load i32, i32* @EIO, align 4
  %59 = call i32 @spa_vdev_err(i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %153

60:                                               ; preds = %36
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = load i32, i32* @SCL_ALL, align 4
  %63 = load i32, i32* @FTAG, align 4
  %64 = load i32, i32* @RW_WRITER, align 4
  %65 = call i32 @spa_config_enter(%struct.TYPE_15__* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = call i32 @spa_load_spares(%struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = load i32, i32* @SCL_ALL, align 4
  %70 = load i32, i32* @FTAG, align 4
  %71 = call i32 @spa_config_exit(%struct.TYPE_15__* %68, i32 %69, i32 %70)
  br label %81

72:                                               ; preds = %32, %29
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8*, i8** @B_TRUE, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %60
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = load i32, i32* @DMU_POOL_L2CACHE, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* @B_FALSE, align 4
  %88 = call i32 @spa_dir_prop(%struct.TYPE_15__* %82, i32 %83, i32* %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %81
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ENOENT, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %98 = load i32, i32* @EIO, align 4
  %99 = call i32 @spa_vdev_err(i32* %96, i32 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %153

100:                                              ; preds = %91, %81
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %143

103:                                              ; preds = %100
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @SPA_IMPORT_ASSEMBLE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %103
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = call i64 @spa_version(%struct.TYPE_15__* %108)
  %110 = load i64, i64* @SPA_VERSION_L2CACHE, align 8
  %111 = icmp sge i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = call i64 @load_nvlist(%struct.TYPE_15__* %114, i32 %118, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %107
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = call i32 @spa_load_failed(%struct.TYPE_15__* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %129 = load i32, i32* @EIO, align 4
  %130 = call i32 @spa_vdev_err(i32* %127, i32 %128, i32 %129)
  store i32 %130, i32* %3, align 4
  br label %153

131:                                              ; preds = %107
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = load i32, i32* @SCL_ALL, align 4
  %134 = load i32, i32* @FTAG, align 4
  %135 = load i32, i32* @RW_WRITER, align 4
  %136 = call i32 @spa_config_enter(%struct.TYPE_15__* %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = call i32 @spa_load_l2cache(%struct.TYPE_15__* %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = load i32, i32* @SCL_ALL, align 4
  %141 = load i32, i32* @FTAG, align 4
  %142 = call i32 @spa_config_exit(%struct.TYPE_15__* %139, i32 %140, i32 %141)
  br label %152

143:                                              ; preds = %103, %100
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i8*, i8** @B_TRUE, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  br label %151

151:                                              ; preds = %146, %143
  br label %152

152:                                              ; preds = %151, %131
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %124, %95, %53, %24
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @spa_dir_prop(%struct.TYPE_15__*, i32, i32*, i32) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_15__*) #1

declare dso_local i64 @load_nvlist(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @spa_load_spares(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @spa_load_l2cache(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
