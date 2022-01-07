; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_vsalloc.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_vsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extents_rtree = common dso_local global i32 0, align 4
@extent_state_active = common dso_local global i64 0, align 8
@NSIZES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @vsalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vsalloc(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @tsdn_rtree_ctx(i32* %10, i32* %6)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = call i64 @rtree_extent_szind_read(i32* %12, i32* @extents_rtree, i32* %13, i64 %15, i32 0, i32** %8, i64* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %37

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @extent_state_get(i32* %24)
  %26 = load i64, i64* @extent_state_active, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %37

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @NSIZES, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %37

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @sz_index2size(i64 %35)
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %34, %33, %28, %22, %18
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i64 @rtree_extent_szind_read(i32*, i32*, i32*, i64, i32, i32**, i64*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i64 @sz_index2size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
