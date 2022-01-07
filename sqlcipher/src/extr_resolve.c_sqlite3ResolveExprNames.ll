; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3ResolveExprNames.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3ResolveExprNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, %struct.TYPE_11__, i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@NC_HasAgg = common dso_local global i32 0, align 4
@NC_MinMaxAgg = common dso_local global i32 0, align 4
@NC_HasWin = common dso_local global i32 0, align 4
@resolveExprStep = common dso_local global i32 0, align 4
@resolveSelectStep = common dso_local global i32 0, align 4
@EP_Agg = common dso_local global i32 0, align 4
@EP_Win = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ResolveExprNames(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %9 = icmp eq %struct.TYPE_14__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %3, align 4
  br label %95

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NC_HasAgg, align 4
  %17 = load i32, i32* @NC_MinMaxAgg, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NC_HasWin, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @NC_HasAgg, align 4
  %23 = load i32, i32* @NC_MinMaxAgg, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @NC_HasWin, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %35, align 8
  %36 = load i32, i32* @resolveExprStep, align 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @resolveSelectStep, align 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = call i32 @sqlite3WalkExpr(%struct.TYPE_12__* %7, %struct.TYPE_14__* %44)
  %46 = load i32, i32* @EP_Agg, align 4
  %47 = load i32, i32* @NC_HasAgg, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* @EP_Win, align 4
  %52 = load i32, i32* @NC_HasWin, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NC_HasAgg, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @testcase(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NC_HasWin, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @testcase(i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NC_HasAgg, align 4
  %73 = load i32, i32* @NC_HasWin, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = call i32 @ExprSetProperty(%struct.TYPE_14__* %68, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %12
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br label %92

92:                                               ; preds = %86, %12
  %93 = phi i1 [ true, %12 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %10
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @sqlite3WalkExpr(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
