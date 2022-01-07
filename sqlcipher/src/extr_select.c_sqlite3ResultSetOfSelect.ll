; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3ResultSetOfSelect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3ResultSetOfSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_22__* }

@SQLITE_FullColNames = common dso_local global i64 0, align 8
@SQLITE_ShortColNames = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @sqlite3ResultSetOfSelect(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %7, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* @SQLITE_FullColNames, align 8
  %16 = trunc i64 %15 to i32
  %17 = xor i32 %16, -1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @SQLITE_ShortColNames, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = call i32 @sqlite3SelectPrep(%struct.TYPE_23__* %27, %struct.TYPE_22__* %28, i32 0)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %95

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %44, %38
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  %43 = icmp ne %struct.TYPE_22__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %5, align 8
  br label %39

48:                                               ; preds = %39
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = call %struct.TYPE_21__* @sqlite3DbMallocZero(%struct.TYPE_20__* %49, i32 32)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %6, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = icmp eq %struct.TYPE_21__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %95

54:                                               ; preds = %48
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  store i32 200, i32* %65, align 4
  %66 = call i32 @sqlite3LogEst(i32 1048576)
  %67 = icmp eq i32 200, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = call i32 @sqlite3ColumnsFromExprList(%struct.TYPE_23__* %70, i32 %73, i32* %75, i32* %77)
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = call i32 @sqlite3SelectAddColumnTypeAndCollation(%struct.TYPE_23__* %79, %struct.TYPE_21__* %80, %struct.TYPE_22__* %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  store i32 -1, i32* %84, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %54
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = call i32 @sqlite3DeleteTable(%struct.TYPE_20__* %90, %struct.TYPE_21__* %91)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %95

93:                                               ; preds = %54
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %94, %struct.TYPE_21__** %3, align 8
  br label %95

95:                                               ; preds = %93, %89, %53, %37
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %96
}

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_21__* @sqlite3DbMallocZero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3LogEst(i32) #1

declare dso_local i32 @sqlite3ColumnsFromExprList(%struct.TYPE_23__*, i32, i32*, i32*) #1

declare dso_local i32 @sqlite3SelectAddColumnTypeAndCollation(%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
