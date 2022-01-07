; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_extent.c_test_manual_hook_body.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_extent.c_test_manual_hook_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [14 x i8] c"arenas.create\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected mallctl() failure\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"arena.0.extent_hooks\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@hooks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Unexpected extent_hooks error\00", align 1
@extent_alloc_hook = common dso_local global i32 0, align 4
@extent_dalloc_hook = common dso_local global i32 0, align 4
@extent_commit_hook = common dso_local global i32 0, align 4
@extent_decommit_hook = common dso_local global i32 0, align 4
@extent_purge_lazy_hook = common dso_local global i32 0, align 4
@extent_purge_forced_hook = common dso_local global i32 0, align 4
@extent_split_hook = common dso_local global i32 0, align 4
@extent_merge_hook = common dso_local global i32 0, align 4
@default_hooks = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_manual_hook_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_manual_hook_body() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = call i32 (...) @extent_hooks_prep()
  store i64 4, i64* %4, align 8
  %10 = bitcast i32* %1 to i8*
  %11 = call i32 @mallctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %10, i64* %4, i32* null, i32 0)
  %12 = call i32 @assert_d_eq(i32 %11, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i64 3, i64* %6, align 8
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %14 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64* %13, i64* %6)
  %15 = call i32 @assert_d_eq(i32 %14, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %17, i64* %18, align 8
  store i64 8, i64* %2, align 8
  store %struct.TYPE_7__* @hooks, %struct.TYPE_7__** %7, align 8
  store i64 8, i64* %3, align 8
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %20 = load i64, i64* %6, align 8
  %21 = bitcast %struct.TYPE_7__** %8 to i8*
  %22 = bitcast %struct.TYPE_7__** %7 to i8*
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @mallctlbymib(i64* %19, i64 %20, i8* %21, i64* %2, i8* %22, i64 %23)
  %25 = call i32 @assert_d_eq(i32 %24, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* @extent_alloc_hook, align 4
  %30 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %28, i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* @extent_dalloc_hook, align 4
  %35 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %33, i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* @extent_commit_hook, align 4
  %40 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %38, i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* @extent_decommit_hook, align 4
  %45 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %43, i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* @extent_purge_lazy_hook, align 4
  %50 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %48, i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* @extent_purge_forced_hook, align 4
  %55 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %53, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* @extent_split_hook, align 4
  %60 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %58, i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* @extent_merge_hook, align 4
  %65 = call i32 @assert_ptr_ne(%struct.TYPE_7__* %63, i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %66 = call i32 (...) @check_background_thread_enabled()
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %0
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @test_extent_body(i32 %69)
  br label %71

71:                                               ; preds = %68, %0
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %73 = load i64, i64* %6, align 8
  %74 = bitcast %struct.TYPE_7__** %8 to i8*
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @mallctlbymib(i64* %72, i64 %73, i8* null, i64* null, i8* %74, i64 %75)
  %77 = call i32 @assert_d_eq(i32 %76, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %79 = load i64, i64* %6, align 8
  %80 = bitcast %struct.TYPE_7__** %8 to i8*
  %81 = call i32 @mallctlbymib(i64* %78, i64 %79, i8* %80, i64* %2, i8* null, i64 0)
  %82 = call i32 @assert_d_eq(i32 %81, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %85 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %83, %struct.TYPE_8__* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %88, %struct.TYPE_8__* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %95, %struct.TYPE_8__* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %102, %struct.TYPE_8__* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %109, %struct.TYPE_8__* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %116, %struct.TYPE_8__* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %123, %struct.TYPE_8__* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %130, %struct.TYPE_8__* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hooks, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = call i32 @assert_ptr_eq(%struct.TYPE_7__* %137, %struct.TYPE_8__* %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @extent_hooks_prep(...) #1

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i8*, i64*, i8*, i64) #1

declare dso_local i32 @assert_ptr_ne(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @check_background_thread_enabled(...) #1

declare dso_local i32 @test_extent_body(i32) #1

declare dso_local i32 @assert_ptr_eq(%struct.TYPE_7__*, %struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
