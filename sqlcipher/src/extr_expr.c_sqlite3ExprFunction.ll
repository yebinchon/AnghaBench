; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_21__ = type { i64 }

@TK_FUNCTION = common dso_local global i32 0, align 4
@SQLITE_LIMIT_FUNCTION_ARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"too many arguments on function %T\00", align 1
@EP_HasFunc = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@SF_Distinct = common dso_local global i32 0, align 4
@EP_Distinct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @sqlite3ExprFunction(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %19 = load i32, i32* @TK_FUNCTION, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.TYPE_22__* @sqlite3ExprAlloc(%struct.TYPE_19__* %18, i32 %19, i32* %20, i32 1)
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %10, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %23 = icmp eq %struct.TYPE_22__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %27 = call i32 @sqlite3ExprListDelete(%struct.TYPE_19__* %25, %struct.TYPE_21__* %26)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %75

28:                                               ; preds = %4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = icmp ne %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @SQLITE_LIMIT_FUNCTION_ARG, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %34, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @sqlite3ErrorMsg(%struct.TYPE_20__* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %46)
  br label %48

48:                                               ; preds = %44, %31, %28
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  store %struct.TYPE_21__* %49, %struct.TYPE_21__** %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %54 = load i32, i32* @EP_HasFunc, align 4
  %55 = call i32 @ExprSetProperty(%struct.TYPE_22__* %53, i32 %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %57 = load i32, i32* @EP_xIsSelect, align 4
  %58 = call i32 @ExprHasProperty(%struct.TYPE_22__* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = call i32 @sqlite3ExprSetHeightAndFlags(%struct.TYPE_20__* %63, %struct.TYPE_22__* %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @SF_Distinct, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %48
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %71 = load i32, i32* @EP_Distinct, align 4
  %72 = call i32 @ExprSetProperty(%struct.TYPE_22__* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %48
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %74, %struct.TYPE_22__** %5, align 8
  br label %75

75:                                               ; preds = %73, %24
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  ret %struct.TYPE_22__* %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_22__* @sqlite3ExprAlloc(%struct.TYPE_19__*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @sqlite3ExprSetHeightAndFlags(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
