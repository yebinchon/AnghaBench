; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_bin_malloc_hard.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_bin_malloc_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32* }

@bin_infos = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, %struct.TYPE_10__*, i64)* @arena_bin_malloc_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arena_bin_malloc_hard(i32* %0, i32* %1, %struct.TYPE_10__* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bin_infos, align 8
  %14 = load i64, i64* %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 %14
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @arena_is_auto(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @arena_bin_slabs_full_insert(i32* %25, %struct.TYPE_10__* %26, i32* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %19, %4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32* @arena_bin_nonfull_slab_get(i32* %34, i32* %35, %struct.TYPE_10__* %36, i64 %37)
  store i32* %38, i32** %11, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %88

43:                                               ; preds = %33
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @extent_nfree_get(i32* %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = call i8* @arena_slab_reg_alloc(i32* %52, %struct.TYPE_11__* %53)
  store i8* %54, i8** %12, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %49
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @extent_nfree_get(i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = call i32 @arena_dalloc_bin_slab(i32* %65, i32* %66, i32* %67, %struct.TYPE_10__* %68)
  br label %76

70:                                               ; preds = %57
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = call i32 @arena_bin_lower_slab(i32* %71, i32* %72, i32* %73, %struct.TYPE_10__* %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %49
  %78 = load i8*, i8** %12, align 8
  store i8* %78, i8** %5, align 8
  br label %106

79:                                               ; preds = %43
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @arena_bin_slabs_full_insert(i32* %80, %struct.TYPE_10__* %81, i32* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %79, %33
  %89 = load i32*, i32** %11, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i8* null, i8** %5, align 8
  br label %106

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @extent_nfree_get(i32* %98)
  %100 = icmp sgt i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %105 = call i8* @arena_slab_reg_alloc(i32* %103, %struct.TYPE_11__* %104)
  store i8* %105, i8** %5, align 8
  br label %106

106:                                              ; preds = %92, %91, %77
  %107 = load i8*, i8** %5, align 8
  ret i8* %107
}

declare dso_local i32 @arena_is_auto(i32*) #1

declare dso_local i32 @arena_bin_slabs_full_insert(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32* @arena_bin_nonfull_slab_get(i32*, i32*, %struct.TYPE_10__*, i64) #1

declare dso_local i64 @extent_nfree_get(i32*) #1

declare dso_local i8* @arena_slab_reg_alloc(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @arena_dalloc_bin_slab(i32*, i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @arena_bin_lower_slab(i32*, i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
