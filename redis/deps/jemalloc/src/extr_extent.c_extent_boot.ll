; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_boot.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extents_rtree = common dso_local global i32 0, align 4
@extent_mutex_pool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"extent_mutex_pool\00", align 1
@WITNESS_RANK_EXTENT_POOL = common dso_local global i32 0, align 4
@have_dss = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extent_boot() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @rtree_new(i32* @extents_rtree, i32 1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %16

5:                                                ; preds = %0
  %6 = load i32, i32* @WITNESS_RANK_EXTENT_POOL, align 4
  %7 = call i64 @mutex_pool_init(i32* @extent_mutex_pool, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 1, i32* %1, align 4
  br label %16

10:                                               ; preds = %5
  %11 = load i64, i64* @have_dss, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @extent_dss_boot()
  br label %15

15:                                               ; preds = %13, %10
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %9, %4
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @rtree_new(i32*, i32) #1

declare dso_local i64 @mutex_pool_init(i32*, i8*, i32) #1

declare dso_local i32 @extent_dss_boot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
