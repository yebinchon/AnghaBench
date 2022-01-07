; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_purge_lazy_impl.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_purge_lazy_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__**, i32*, i64, i64, i32)* @extent_purge_lazy_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_purge_lazy_impl(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @tsdn_witness_tsdp_get(i32* %17)
  %19 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @witness_assert_depth_to_rank(i32 %18, i32 %19, i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %27 = call i32 @extent_hooks_assure_initialized(i32* %25, %struct.TYPE_6__** %26)
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)** %30, align 8
  %32 = icmp eq i32 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %66

34:                                               ; preds = %7
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, @extent_hooks_default
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @extent_hook_pre_reentrancy(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)** %45, align 8
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @extent_base_get(i32* %49)
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @extent_size_get(i32* %51)
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @arena_ind_get(i32* %55)
  %57 = call i32 %46(%struct.TYPE_6__* %48, i32 %50, i32 %52, i64 %53, i64 %54, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, @extent_hooks_default
  br i1 %60, label %61, label %64

61:                                               ; preds = %42
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @extent_hook_post_reentrancy(i32* %62)
  br label %64

64:                                               ; preds = %61, %42
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %33
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @extent_base_get(i32*) #1

declare dso_local i32 @extent_size_get(i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
