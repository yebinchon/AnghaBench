; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_block_remapped.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_block_remapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_block_remapped(%struct.TYPE_21__* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.TYPE_22__* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_22__* %5, %struct.TYPE_22__** %12, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %24 = call i32 @dmu_tx_is_syncing(%struct.TYPE_22__* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = call %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_21__* %41)
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %40, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %6
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %52 = call i32 @spa_vdev_indirect_mark_obsolete(i32* %47, i64 %48, i64 %49, i64 %50, %struct.TYPE_22__* %51)
  br label %92

53:                                               ; preds = %6
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32* %56, i32** %15, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = call i32 @mutex_enter(i32* %62)
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = call i32 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_21__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %53
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %70 = call i32 @dsl_dataset_create_remap_deadlist(%struct.TYPE_21__* %68, %struct.TYPE_22__* %69)
  br label %71

71:                                               ; preds = %67, %53
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = call i32 @mutex_exit(i32* %73)
  %75 = call i32 @BP_ZERO(%struct.TYPE_23__* %14)
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @DVA_SET_VDEV(i32* %78, i64 %79)
  %81 = load i32*, i32** %15, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @DVA_SET_OFFSET(i32* %81, i64 %82)
  %84 = load i32*, i32** %15, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @DVA_SET_ASIZE(i32* %84, i64 %85)
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* @B_FALSE, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %91 = call i32 @dsl_deadlist_insert(i32* %88, %struct.TYPE_23__* %14, i32 %89, %struct.TYPE_22__* %90)
  br label %92

92:                                               ; preds = %71, %46
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_21__*) #1

declare dso_local i32 @spa_vdev_indirect_mark_obsolete(i32*, i64, i64, i64, %struct.TYPE_22__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_21__*) #1

declare dso_local i32 @dsl_dataset_create_remap_deadlist(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @BP_ZERO(%struct.TYPE_23__*) #1

declare dso_local i32 @DVA_SET_VDEV(i32*, i64) #1

declare dso_local i32 @DVA_SET_OFFSET(i32*, i64) #1

declare dso_local i32 @DVA_SET_ASIZE(i32*, i64) #1

declare dso_local i32 @dsl_deadlist_insert(i32*, %struct.TYPE_23__*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
