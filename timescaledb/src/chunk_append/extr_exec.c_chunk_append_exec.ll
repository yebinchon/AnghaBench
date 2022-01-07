; ModuleID = '/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_exec.c_chunk_append_exec.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_exec.c_chunk_append_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i64, i64, i32 (%struct.TYPE_14__*)*, i32** }

@INVALID_SUBPLAN_INDEX = common dso_local global i64 0, align 8
@NO_MATCHING_SUBPLANS = common dso_local global i64 0, align 8
@ExprEndResult = common dso_local global i64 0, align 8
@ExprMultipleResult = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*)* @chunk_append_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @chunk_append_exec(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = bitcast %struct.TYPE_13__* %8 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INVALID_SUBPLAN_INDEX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = call i32 %23(%struct.TYPE_14__* %24)
  br label %26

26:                                               ; preds = %20, %1
  br label %27

27:                                               ; preds = %26, %92
  %28 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NO_MATCHING_SUBPLANS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @ExecClearTuple(i32 %39)
  store i32* %40, i32** %2, align 8
  br label %98

41:                                               ; preds = %27
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp uge i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br label %54

54:                                               ; preds = %46, %41
  %55 = phi i1 [ false, %41 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load i32**, i32*** %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @ExecProcNode(i32* %66)
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @TupIsNull(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %54
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32*, i32** %5, align 8
  store i32* %79, i32** %2, align 8
  br label %98

80:                                               ; preds = %71
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = call i32 @ResetExprContext(%struct.TYPE_12__* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32* (i32*, ...) @ExecProject(i32* %90)
  store i32* %91, i32** %2, align 8
  br label %98

92:                                               ; preds = %54
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = call i32 %95(%struct.TYPE_14__* %96)
  br label %27

98:                                               ; preds = %80, %78, %34
  %99 = load i32*, i32** %2, align 8
  ret i32* %99
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32* @ExecClearTuple(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @ExecProcNode(i32*) #1

declare dso_local i32 @TupIsNull(i32*) #1

declare dso_local i32 @ResetExprContext(%struct.TYPE_12__*) #1

declare dso_local i32* @ExecProject(i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
