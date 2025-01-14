; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_lock_from_addr.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_lock_from_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extents_rtree = common dso_local global i32 0, align 4
@lock_result_failure = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @extent_lock_from_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_lock_from_addr(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call i32* @rtree_leaf_elm_lookup(i32* %11, i32* @extents_rtree, i32* %12, i64 %14, i32 0, i32 0)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %30

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @extent_rtree_leaf_elm_try_lock(i32* %21, i32* %22, i32** %8)
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @lock_result_failure, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %20, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %28, %18
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i32* @rtree_leaf_elm_lookup(i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i64 @extent_rtree_leaf_elm_try_lock(i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
