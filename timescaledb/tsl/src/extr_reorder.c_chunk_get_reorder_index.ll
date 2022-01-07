; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_chunk_get_reorder_index.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_reorder.c_chunk_get_reorder_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*)* @chunk_get_reorder_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_get_reorder_index(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i64 @OidIsValid(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @ts_chunk_index_get_by_indexrelid(%struct.TYPE_8__* %14, i32 %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %52

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @ts_chunk_index_get_by_hypertable_indexrelid(%struct.TYPE_8__* %21, i32 %22, i32* %23)
  store i32 %24, i32* %5, align 4
  br label %52

25:                                               ; preds = %4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ts_indexing_find_clustered_index(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @OidIsValid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @ts_chunk_index_get_by_indexrelid(%struct.TYPE_8__* %34, i32 %35, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %52

38:                                               ; preds = %25
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ts_indexing_find_clustered_index(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @OidIsValid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @ts_chunk_index_get_by_hypertable_indexrelid(%struct.TYPE_8__* %47, i32 %48, i32* %49)
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %46, %33, %20, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ts_chunk_index_get_by_indexrelid(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @ts_chunk_index_get_by_hypertable_indexrelid(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @ts_indexing_find_clustered_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
