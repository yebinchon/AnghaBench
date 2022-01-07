; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_check_for_missing_logs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_check_for_missing_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_10__** }

@ZFS_IMPORT_MISSING_LOG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@VDEV_CONFIG_MISSING = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MISSING_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"some log devices are missing\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SPA_LOG_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"some log devices are missing, ZIL is dropped.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @spa_check_for_missing_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_check_for_missing_logs(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ZFS_IMPORT_MISSING_LOG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %125, label %22

22:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @KM_SLEEP, align 4
  %30 = call i32** @kmem_alloc(i32 %28, i32 %29)
  store i32** %30, i32*** %5, align 8
  %31 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %32 = load i32, i32* @KM_SLEEP, align 4
  %33 = call i64 @nvlist_alloc(i32** %6, i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @VERIFY(i32 %35)
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %72, %22
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %47, i64 %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %9, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %44
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = load i32, i32* @B_FALSE, align 4
  %65 = load i32, i32* @VDEV_CONFIG_MISSING, align 4
  %66 = call i32* @vdev_config_generate(%struct.TYPE_11__* %62, %struct.TYPE_10__* %63, i32 %64, i32 %65)
  %67 = load i32**, i32*** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  %70 = getelementptr inbounds i32*, i32** %67, i64 %68
  store i32* %66, i32** %70, align 8
  br label %71

71:                                               ; preds = %61, %55, %44
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %37

75:                                               ; preds = %37
  %76 = load i64, i64* %7, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %81 = load i32**, i32*** %5, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @fnvlist_add_nvlist_array(i32* %79, i32 %80, i32** %81, i64 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ZPOOL_CONFIG_MISSING_DEVICES, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @fnvlist_add_nvlist(i32 %86, i32 %87, i32* %88)
  store i64 0, i64* %10, align 8
  br label %90

90:                                               ; preds = %100, %78
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32**, i32*** %5, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @nvlist_free(i32* %98)
  br label %100

100:                                              ; preds = %94
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %10, align 8
  br label %90

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %75
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @nvlist_free(i32* %105)
  %107 = load i32**, i32*** %5, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @kmem_free(i32** %107, i32 %113)
  %115 = load i64, i64* %7, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = call i32 @spa_load_failed(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = call i32 @vdev_dbgmsg_print_tree(%struct.TYPE_10__* %120, i32 2)
  %122 = load i32, i32* @ENXIO, align 4
  %123 = call i32 @SET_ERROR(i32 %122)
  store i32 %123, i32* %2, align 4
  br label %164

124:                                              ; preds = %104
  br label %163

125:                                              ; preds = %1
  store i64 0, i64* %11, align 8
  br label %126

126:                                              ; preds = %159, %125
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %162

133:                                              ; preds = %126
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %136, i64 %137
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %12, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %133
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = load i32, i32* @SPA_LOG_CLEAR, align 4
  %153 = call i32 @spa_set_log_state(%struct.TYPE_11__* %151, i32 %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = call i32 @spa_load_note(%struct.TYPE_11__* %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = call i32 @vdev_dbgmsg_print_tree(%struct.TYPE_10__* %156, i32 2)
  br label %162

158:                                              ; preds = %144, %133
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %11, align 8
  br label %126

162:                                              ; preds = %150, %126
  br label %163

163:                                              ; preds = %162, %124
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %117
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32** @kmem_alloc(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32* @vdev_config_generate(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @fnvlist_add_nvlist_array(i32*, i32, i32**, i64) #1

declare dso_local i32 @fnvlist_add_nvlist(i32, i32, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @kmem_free(i32**, i32) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @vdev_dbgmsg_print_tree(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_set_log_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
