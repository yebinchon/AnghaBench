; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_dalloc_wrapper.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_dalloc_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)* }
%struct.TYPE_17__ = type { i32 }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@extent_state_muzzy = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_dalloc_wrapper(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i32 @extent_dumpable_get(i32* %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @tsdn_witness_tsdp_get(i32* %13)
  %15 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %16 = call i32 @witness_assert_depth_to_rank(i32 %14, i32 %15, i32 0)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @extent_deregister(i32* %17, i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @extent_dalloc_wrapper_try(i32* %20, %struct.TYPE_17__* %21, %struct.TYPE_16__** %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %135

27:                                               ; preds = %4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @extent_reregister(i32* %28, i32* %29)
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = icmp ne %struct.TYPE_16__* %32, @extent_hooks_default
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = call i32 @extent_hook_pre_reentrancy(i32* %35, %struct.TYPE_17__* %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @extent_committed_get(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %110

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @extent_size_get(i32* %48)
  %50 = call i32 @extent_decommit_wrapper(i32* %44, %struct.TYPE_17__* %45, %struct.TYPE_16__** %46, i32* %47, i32 0, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %109

53:                                               ; preds = %43
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %62, align 8
  %64 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @extent_base_get(i32* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @extent_size_get(i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @extent_size_get(i32* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = call i32 @arena_ind_get(%struct.TYPE_17__* %72)
  %74 = call i32 %63(%struct.TYPE_16__* %65, i32 %67, i32 %69, i32 0, i32 %71, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %108

77:                                               ; preds = %59, %53
  %78 = load i32*, i32** %8, align 8
  %79 = call i64 @extent_state_get(i32* %78)
  %80 = load i64, i64* @extent_state_muzzy, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %105, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %91, align 8
  %93 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @extent_base_get(i32* %95)
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @extent_size_get(i32* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @extent_size_get(i32* %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = call i32 @arena_ind_get(%struct.TYPE_17__* %101)
  %103 = call i32 %92(%struct.TYPE_16__* %94, i32 %96, i32 %98, i32 0, i32 %100, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %88, %77
  store i32 0, i32* %9, align 4
  br label %107

106:                                              ; preds = %88, %82
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %76
  br label %109

109:                                              ; preds = %108, %52
  br label %110

110:                                              ; preds = %109, %42
  %111 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = icmp ne %struct.TYPE_16__* %112, @extent_hooks_default
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @extent_hook_post_reentrancy(i32* %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @extent_zeroed_set(i32* %118, i32 %119)
  %121 = load i64, i64* @config_prof, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @extent_gdump_sub(i32* %124, i32* %125)
  br label %127

127:                                              ; preds = %123, %117
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @extent_record(i32* %128, %struct.TYPE_17__* %129, %struct.TYPE_16__** %130, i32* %132, i32* %133, i32 0)
  br label %135

135:                                              ; preds = %127, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_dumpable_get(i32*) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_deregister(i32*, i32*) #1

declare dso_local i32 @extent_dalloc_wrapper_try(i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i32*) #1

declare dso_local i32 @extent_reregister(i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i32 @extent_decommit_wrapper(i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i32*, i32, i32) #1

declare dso_local i32 @extent_size_get(i32*) #1

declare dso_local i32 @extent_base_get(i32*) #1

declare dso_local i32 @arena_ind_get(%struct.TYPE_17__*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i32 @extent_gdump_sub(i32*, i32*) #1

declare dso_local i32 @extent_record(i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
