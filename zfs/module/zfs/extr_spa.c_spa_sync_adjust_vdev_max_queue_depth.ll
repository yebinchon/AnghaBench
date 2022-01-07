; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_adjust_vdev_max_queue_depth.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_adjust_vdev_max_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__** }
%struct.TYPE_16__ = type { i32, i64*, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i8**, i32* }

@zfs_vdev_async_write_max_active = common dso_local global i32 0, align 4
@zfs_vdev_queue_depth_pct = common dso_local global i32 0, align 4
@zfs_vdev_def_queue_depth = common dso_local global i64 0, align 8
@zio_dva_throttle_enabled = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @spa_sync_adjust_vdev_max_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_sync_adjust_vdev_max_queue_depth(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = call i32 @spa_writeable(%struct.TYPE_15__* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %3, align 8
  %22 = load i32, i32* @zfs_vdev_async_write_max_active, align 4
  %23 = load i32, i32* @zfs_vdev_queue_depth_pct, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sdiv i32 %24, 100
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = call %struct.TYPE_17__* @spa_normal_class(%struct.TYPE_15__* %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %5, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = call %struct.TYPE_17__* @spa_special_class(%struct.TYPE_15__* %28)
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %6, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = call %struct.TYPE_17__* @spa_dedup_class(%struct.TYPE_15__* %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %116, %1
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %41, i64 %43
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %10, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %11, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %50 = icmp eq %struct.TYPE_16__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %53 = call i32 @metaslab_group_initialized(%struct.TYPE_16__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %38
  br label %116

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %12, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = icmp ne %struct.TYPE_17__* %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = icmp ne %struct.TYPE_17__* %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = icmp ne %struct.TYPE_17__* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %116

72:                                               ; preds = %67, %63, %56
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %88, %72
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @zfs_refcount_count(i32* %85)
  %87 = call i32 @ASSERT0(i32 %86)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %73

91:                                               ; preds = %73
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %109, %91
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load i64, i64* @zfs_vdev_def_queue_depth, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %102, i64* %108, align 8
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %95

112:                                              ; preds = %95
  %113 = load i64, i64* @zfs_vdev_def_queue_depth, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr i8, i8* %114, i64 %113
  store i8* %115, i8** %8, align 8
  br label %116

116:                                              ; preds = %112, %71, %55
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %32

119:                                              ; preds = %32
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %172, %119
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %175

126:                                              ; preds = %120
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = call i32 @zfs_refcount_count(i32* %132)
  %134 = call i32 @ASSERT0(i32 %133)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @zfs_refcount_count(i32* %140)
  %142 = call i32 @ASSERT0(i32 %141)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = call i32 @zfs_refcount_count(i32* %148)
  %150 = call i32 @ASSERT0(i32 %149)
  %151 = load i8*, i8** %8, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  store i8* %158, i8** %164, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %165, i8** %171, align 8
  br label %172

172:                                              ; preds = %126
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %120

175:                                              ; preds = %120
  %176 = load i8*, i8** @zio_dva_throttle_enabled, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** @zio_dva_throttle_enabled, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @zio_dva_throttle_enabled, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @spa_normal_class(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @spa_special_class(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @spa_dedup_class(%struct.TYPE_15__*) #1

declare dso_local i32 @metaslab_group_initialized(%struct.TYPE_16__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @zfs_refcount_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
