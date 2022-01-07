; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_alloc_wrapper.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_alloc_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@opt_retain = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @extent_alloc_wrapper(i32* %0, i32* %1, i32** %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32** %2, i32*** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @tsdn_witness_tsdp_get(i32* %25)
  %27 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %28 = call i32 @witness_assert_depth_to_rank(i32 %26, i32 %27, i32 0)
  %29 = load i32*, i32** %14, align 8
  %30 = load i32**, i32*** %15, align 8
  %31 = call i32 @extent_hooks_assure_initialized(i32* %29, i32** %30)
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32**, i32*** %15, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* %19, align 8
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %21, align 4
  %41 = load i32*, i32** %22, align 8
  %42 = load i32*, i32** %23, align 8
  %43 = call i32* @extent_alloc_retained(i32* %32, i32* %33, i32** %34, i8* %35, i64 %36, i64 %37, i64 %38, i32 %39, i32 %40, i32* %41, i32* %42)
  store i32* %43, i32** %24, align 8
  %44 = load i32*, i32** %24, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %11
  %47 = load i64, i64* @opt_retain, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32* null, i32** %12, align 8
  br label %78

53:                                               ; preds = %49, %46
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32**, i32*** %15, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load i64, i64* %19, align 8
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32*, i32** %22, align 8
  %64 = load i32*, i32** %23, align 8
  %65 = call i32* @extent_alloc_wrapper_hard(i32* %54, i32* %55, i32** %56, i8* %57, i64 %58, i64 %59, i64 %60, i32 %61, i32 %62, i32* %63, i32* %64)
  store i32* %65, i32** %24, align 8
  br label %66

66:                                               ; preds = %53, %11
  %67 = load i32*, i32** %24, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** %24, align 8
  %71 = call i64 @extent_dumpable_get(i32* %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ true, %66 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32*, i32** %24, align 8
  store i32* %77, i32** %12, align 8
  br label %78

78:                                               ; preds = %73, %52
  %79 = load i32*, i32** %12, align 8
  ret i32* %79
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, i32**) #1

declare dso_local i32* @extent_alloc_retained(i32*, i32*, i32**, i8*, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32* @extent_alloc_wrapper_hard(i32*, i32*, i32**, i8*, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_dumpable_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
