; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_indirect_births.c_vdev_indirect_births_add_entry.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_indirect_births.c_vdev_indirect_births_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_indirect_births_add_entry(%struct.TYPE_13__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @dmu_tx_is_syncing(i32* %13)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @dmu_tx_pool(i32* %16)
  %18 = call i32 @dsl_pool_sync_context(i32 %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = call i32 @vdev_indirect_births_verify(%struct.TYPE_13__* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @dmu_buf_will_dirty(i32 %25, i32* %26)
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i64 @vdev_indirect_births_size_impl(%struct.TYPE_13__* %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @dmu_write(i32 %36, i32 %39, i64 %40, i32 16, %struct.TYPE_14__* %9, i32* %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = call i64 @vdev_indirect_births_size_impl(%struct.TYPE_13__* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @KM_SLEEP, align 4
  %53 = call %struct.TYPE_14__* @vmem_alloc(i64 %51, i32 %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %12, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @bcopy(%struct.TYPE_14__* %59, %struct.TYPE_14__* %60, i64 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @vmem_free(%struct.TYPE_14__* %65, i64 %66)
  br label %68

68:                                               ; preds = %56, %4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %76
  %78 = bitcast %struct.TYPE_14__* %77 to i8*
  %79 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %82, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @dsl_pool_sync_context(i32) #1

declare dso_local i32 @dmu_tx_pool(i32*) #1

declare dso_local i32 @vdev_indirect_births_verify(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i64 @vdev_indirect_births_size_impl(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_write(i32, i32, i64, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_14__* @vmem_alloc(i64, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_14__*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @vmem_free(%struct.TYPE_14__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
