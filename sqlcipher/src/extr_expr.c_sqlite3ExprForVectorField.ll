; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprForVectorField.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprForVectorField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i64, %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }

@TK_SELECT = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@TK_SELECT_COLUMN = common dso_local global i32 0, align 4
@TK_VECTOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @sqlite3ExprForVectorField(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TK_SELECT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %3
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EP_xIsSelect, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = load i32, i32* @TK_SELECT_COLUMN, align 4
  %22 = call %struct.TYPE_20__* @sqlite3PExpr(%struct.TYPE_19__* %20, i32 %21, i32 0, i32 0)
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %7, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = icmp ne %struct.TYPE_20__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 5
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %31, align 8
  br label %32

32:                                               ; preds = %25, %13
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = icmp eq %struct.TYPE_20__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ true, %32 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %72

44:                                               ; preds = %3
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TK_VECTOR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %5, align 8
  br label %62

62:                                               ; preds = %50, %44
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = call %struct.TYPE_20__* @sqlite3ExprDup(i32 %65, %struct.TYPE_20__* %66, i32 0)
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %7, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = call i32 @sqlite3RenameTokenRemap(%struct.TYPE_19__* %68, %struct.TYPE_20__* %69, %struct.TYPE_20__* %70)
  br label %72

72:                                               ; preds = %62, %40
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  ret %struct.TYPE_20__* %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_20__* @sqlite3PExpr(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @sqlite3ExprDup(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @sqlite3RenameTokenRemap(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
