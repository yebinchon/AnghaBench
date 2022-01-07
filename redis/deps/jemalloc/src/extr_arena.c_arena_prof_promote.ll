; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_prof_promote.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_prof_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@config_prof = common dso_local global i32 0, align 4
@LARGE_MINCLASS = common dso_local global i64 0, align 8
@SMALL_MAXCLASS = common dso_local global i64 0, align 8
@extents_rtree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arena_prof_promote(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @config_prof, align 4
  %13 = call i32 @cassert(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @isalloc(i32* %18, i8* %19)
  %21 = load i64, i64* @LARGE_MINCLASS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SMALL_MAXCLASS, align 8
  %27 = icmp ule i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @tsdn_rtree_ctx(i32* %30, i32* %7)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = call i32* @rtree_extent_read(i32* %32, i32* @extents_rtree, i32* %33, i64 %35, i32 1)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call %struct.TYPE_3__* @extent_arena_get(i32* %37)
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @sz_size2index(i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @extent_szind_set(i32* %41, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @rtree_szind_slab_update(i32* %44, i32* @extents_rtree, i32* %45, i64 %47, i32 %48, i32 0)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @prof_accum_cancel(i32* %50, i32* %52, i64 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @isalloc(i32* %55, i8* %56)
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isalloc(i32*, i8*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32* @rtree_extent_read(i32*, i32*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_3__* @extent_arena_get(i32*) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @rtree_szind_slab_update(i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @prof_accum_cancel(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
