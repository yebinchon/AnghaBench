; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_timescale_rebuild_relation.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_timescale_rebuild_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8, i32 }

@NoLock = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32, i32, i32)* @timescale_rebuild_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timescale_rebuild_relation(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = call i32 @RelationGetRelid(%struct.TYPE_8__* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @OidIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  br label %35

29:                                               ; preds = %6
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %29, %27
  %36 = phi i32 [ %28, %27 ], [ %34, %29 ]
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mark_index_clustered(%struct.TYPE_8__* %37, i32 %38, i32 1)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 4
  store i8 %44, i8* %18, align 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = load i32, i32* @NoLock, align 4
  %47 = call i32 @heap_close(%struct.TYPE_8__* %45, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i8, i8* %18, align 1
  %51 = load i32, i32* @ExclusiveLock, align 4
  %52 = call i32 @make_new_heap(i32 %48, i32 %49, i8 signext %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @copy_heap_data(i32 %53, i32 %54, i32 %55, i32 %56, i32* %19, i32* %20, i32* %21)
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32* @ts_chunk_index_duplicate(i32 %58, i32 %59, i32** %16, i32 %60)
  store i32* %61, i32** %17, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @finish_heap_swaps(i32 %62, i32 %63, i32* %64, i32* %65, i32 %66, i32 1, i32 %67, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @RelationGetRelid(%struct.TYPE_8__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @mark_index_clustered(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @heap_close(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @make_new_heap(i32, i32, i8 signext, i32) #1

declare dso_local i32 @copy_heap_data(i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @ts_chunk_index_duplicate(i32, i32, i32**, i32) #1

declare dso_local i32 @finish_heap_swaps(i32, i32, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
