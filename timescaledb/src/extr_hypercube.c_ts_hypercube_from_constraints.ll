; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypercube.c_ts_hypercube_from_constraints.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypercube.c_ts_hypercube_from_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32** }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @ts_hypercube_from_constraints(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MemoryContextSwitchTo(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.TYPE_14__* @ts_hypercube_alloc(i64 %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @MemoryContextSwitchTo(i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %61, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_16__* @chunk_constraints_get(%struct.TYPE_15__* %25, i32 %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %8, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = call i64 @is_dimension_constraint(%struct.TYPE_16__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32* @ts_dimension_slice_scan_by_id(i32 %44, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds i32*, i32** %54, i64 %57
  store i32* %51, i32** %59, align 8
  br label %60

60:                                               ; preds = %31, %24
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %18

64:                                               ; preds = %18
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = call i32 @ts_hypercube_slice_sort(%struct.TYPE_14__* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = call i32 @hypercube_is_sorted(%struct.TYPE_14__* %67)
  %69 = call i32 @Assert(i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %70
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_14__* @ts_hypercube_alloc(i64) #1

declare dso_local %struct.TYPE_16__* @chunk_constraints_get(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @is_dimension_constraint(%struct.TYPE_16__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @ts_dimension_slice_scan_by_id(i32, i32) #1

declare dso_local i32 @ts_hypercube_slice_sort(%struct.TYPE_14__*) #1

declare dso_local i32 @hypercube_is_sorted(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
