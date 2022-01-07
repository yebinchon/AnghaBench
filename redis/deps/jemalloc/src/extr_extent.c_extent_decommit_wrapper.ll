; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_decommit_wrapper.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_decommit_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extent_decommit_wrapper(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @tsdn_witness_tsdp_get(i32* %14)
  %16 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %17 = call i32 @witness_assert_depth_to_rank(i32 %15, i32 %16, i32 0)
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %20 = call i32 @extent_hooks_assure_initialized(i32* %18, %struct.TYPE_6__** %19)
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, @extent_hooks_default
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @extent_hook_pre_reentrancy(i32* %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %6
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)*, i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)** %31, align 8
  %33 = icmp eq i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)* %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)*, i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)** %37, align 8
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @extent_base_get(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @extent_size_get(i32* %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @arena_ind_get(i32* %47)
  %49 = call i64 %38(%struct.TYPE_6__* %40, i32 %42, i32 %44, i64 %45, i64 %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %34, %28
  %52 = phi i1 [ true, %28 ], [ %50, %34 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, @extent_hooks_default
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @extent_hook_post_reentrancy(i32* %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i64 @extent_committed_get(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i1 [ false, %60 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @extent_committed_set(i32* %61, i32 %70)
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @extent_base_get(i32*) #1

declare dso_local i32 @extent_size_get(i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_committed_set(i32*, i32) #1

declare dso_local i64 @extent_committed_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
