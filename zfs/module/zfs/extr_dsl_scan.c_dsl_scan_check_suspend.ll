; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_check_suspend.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_check_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_15__, %struct.TYPE_16__*, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }

@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@ZB_ROOT_LEVEL = common dso_local global i64 0, align 8
@zfs_dirty_data_max = common dso_local global i32 0, align 4
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@zfs_resilver_min_time_ms = common dso_local global i32 0, align 4
@zfs_scrub_min_time_ms = common dso_local global i32 0, align 4
@zfs_vdev_async_write_active_min_dirty_percent = common dso_local global i32 0, align 4
@zfs_txg_timeout = common dso_local global i64 0, align 8
@zfs_scan_strict_mem_lim = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"suspending at first available bookmark %llx/%llx/%llx/%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"suspending at bookmark %llx/%llx/%llx/%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @dsl_scan_check_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dsl_scan_check_suspend(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %3, align 8
  br label %191

20:                                               ; preds = %13, %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @B_TRUE, align 8
  store i64 %26, i64* %3, align 8
  br label %191

27:                                               ; preds = %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = call i32 @ZB_IS_ZERO(%struct.TYPE_13__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @B_FALSE, align 8
  store i64 %34, i64* %3, align 8
  br label %191

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ZB_ROOT_LEVEL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* @B_FALSE, align 8
  store i64 %50, i64* %3, align 8
  br label %191

51:                                               ; preds = %43, %38, %35
  %52 = call i64 (...) @gethrtime()
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %58, %65
  store i64 %66, i64* %8, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 100
  %73 = load i32, i32* @zfs_dirty_data_max, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %51
  %82 = load i32, i32* @zfs_resilver_min_time_ms, align 4
  br label %85

83:                                               ; preds = %51
  %84 = load i32, i32* @zfs_scrub_min_time_ms, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %10, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @NSEC2MSEC(i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @zfs_vdev_async_write_active_min_dirty_percent, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %121, label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = call i64 @txg_sync_waiting(%struct.TYPE_16__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @NSEC2SEC(i64 %102)
  %104 = load i64, i64* @zfs_txg_timeout, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %101, %85
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = call i64 @spa_shutting_down(%struct.TYPE_17__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %106
  %115 = load i64, i64* @zfs_scan_strict_mem_lim, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %189

117:                                              ; preds = %114
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = call i64 @dsl_scan_should_clear(%struct.TYPE_14__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %189

121:                                              ; preds = %117, %106, %101, %95, %91
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = icmp ne %struct.TYPE_13__* %122, null
  br i1 %123, label %124, label %155

124:                                              ; preds = %121
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ZB_ROOT_LEVEL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @dprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %138, i32 %142, i32 %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @SET_BOOKMARK(%struct.TYPE_13__* %150, i64 %153, i32 0, i32 0, i32 0)
  br label %184

155:                                              ; preds = %124, %121
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = icmp ne %struct.TYPE_13__* %156, null
  br i1 %157, label %158, label %182

158:                                              ; preds = %155
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %166, i32 %170, i32 %174)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = bitcast %struct.TYPE_13__* %178 to i8*
  %181 = bitcast %struct.TYPE_13__* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 32, i1 false)
  br label %183

182:                                              ; preds = %155
  br label %183

183:                                              ; preds = %182, %158
  br label %184

184:                                              ; preds = %183, %130
  %185 = load i64, i64* @B_TRUE, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load i64, i64* @B_TRUE, align 8
  store i64 %188, i64* %3, align 8
  br label %191

189:                                              ; preds = %117, %114
  %190 = load i64, i64* @B_FALSE, align 8
  store i64 %190, i64* %3, align 8
  br label %191

191:                                              ; preds = %189, %184, %49, %33, %25, %18
  %192 = load i64, i64* %3, align 8
  ret i64 %192
}

declare dso_local i32 @ZB_IS_ZERO(%struct.TYPE_13__*) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @NSEC2MSEC(i64) #1

declare dso_local i64 @txg_sync_waiting(%struct.TYPE_16__*) #1

declare dso_local i64 @NSEC2SEC(i64) #1

declare dso_local i64 @spa_shutting_down(%struct.TYPE_17__*) #1

declare dso_local i64 @dsl_scan_should_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @dprintf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SET_BOOKMARK(%struct.TYPE_13__*, i64, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
