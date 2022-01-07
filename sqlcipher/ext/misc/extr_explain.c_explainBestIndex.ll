; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_explain.c_explainBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_explain.c_explainBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, double, i32, %struct.TYPE_4__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i32 }

@EXPLN_COLUMN_SQL = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @explainBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @explainBestIndex(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sqlite3_index_constraint*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 500, i32* %11, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %47, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  %21 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %21, i64 %23
  store %struct.sqlite3_index_constraint* %24, %struct.sqlite3_index_constraint** %9, align 8
  %25 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %9, align 8
  %26 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EXPLN_COLUMN_SQL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %47

31:                                               ; preds = %18
  %32 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %9, align 8
  %33 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %46

37:                                               ; preds = %31
  %38 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %9, align 8
  %39 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store double 1.000000e+01, double* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %78

72:                                               ; preds = %50
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32, i32* @SQLITE_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
