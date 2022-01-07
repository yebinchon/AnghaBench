; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_get_window.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_get_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@BackwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_chunk_get_window(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BackwardScanDirection, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_17__* @ts_dimension_slice_scan_by_dimension_before_point(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %92, %4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %95

31:                                               ; preds = %25
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %34, i64 %36
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.TYPE_19__* @ts_chunk_constraints_alloc(i32 1, i32 %39)
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %13, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ts_chunk_constraint_scan_by_dimension_slice_id(i32 %44, %struct.TYPE_19__* %45, i32 %46)
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %88, %31
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %48
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i64 %59
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %15, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_21__* @ts_chunk_get_by_id(i32 %64, i32 0, i32 1)
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %16, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ts_chunk_constraint_scan_by_chunk_id(i32 %69, i32 1, i32 %70)
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ts_hypercube_from_constraints(i32 %76, i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @MemoryContextSwitchTo(i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %85 = call i32* @lappend(i32* %83, %struct.TYPE_21__* %84)
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @MemoryContextSwitchTo(i32 %86)
  br label %88

88:                                               ; preds = %54
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %48

91:                                               ; preds = %48
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %25

95:                                               ; preds = %25
  %96 = load i32*, i32** %9, align 8
  ret i32* %96
}

declare dso_local %struct.TYPE_17__* @ts_dimension_slice_scan_by_dimension_before_point(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @ts_chunk_constraints_alloc(i32, i32) #1

declare dso_local i32 @ts_chunk_constraint_scan_by_dimension_slice_id(i32, %struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_21__* @ts_chunk_get_by_id(i32, i32, i32) #1

declare dso_local i32 @ts_chunk_constraint_scan_by_chunk_id(i32, i32, i32) #1

declare dso_local i32 @ts_hypercube_from_constraints(i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
