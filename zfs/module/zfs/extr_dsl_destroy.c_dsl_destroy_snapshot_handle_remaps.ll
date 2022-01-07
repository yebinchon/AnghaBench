; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_destroy_snapshot_handle_remaps.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_destroy_snapshot_handle_remaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_15__*, i32*)* @dsl_destroy_snapshot_handle_remaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_destroy_snapshot_handle_remaps(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = call i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_15__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = call i32 @bpobj_is_open(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @dsl_pool_create_obsolete_bpobj(%struct.TYPE_14__* %23, i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__* %31)
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @dsl_deadlist_move_bpobj(i32* %28, i32* %30, i32 %34, i32* %35)
  br label %37

37:                                               ; preds = %26, %3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = call i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_15__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = call i64 @dsl_dataset_get_remap_deadlist_object(%struct.TYPE_15__* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = call i32 @mutex_enter(i32* %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = call i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_15__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @dsl_dataset_create_remap_deadlist(%struct.TYPE_15__* %55, i32* %56)
  br label %58

58:                                               ; preds = %54, %41
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = call i32 @mutex_exit(i32* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @dsl_deadlist_merge(i32* %63, i64 %64, i32* %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @dsl_dataset_destroy_remap_deadlist(%struct.TYPE_15__* %67, i32* %68)
  br label %70

70:                                               ; preds = %58, %37
  ret void
}

declare dso_local i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_15__*) #1

declare dso_local i32 @bpobj_is_open(i32*) #1

declare dso_local i32 @dsl_pool_create_obsolete_bpobj(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dsl_deadlist_move_bpobj(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__*) #1

declare dso_local i64 @dsl_dataset_get_remap_deadlist_object(%struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_dataset_create_remap_deadlist(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dsl_deadlist_merge(i32*, i64, i32*) #1

declare dso_local i32 @dsl_dataset_destroy_remap_deadlist(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
