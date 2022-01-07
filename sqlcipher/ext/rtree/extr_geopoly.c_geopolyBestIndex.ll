; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, double, i32, %struct.TYPE_4__*, i32, %struct.sqlite3_index_constraint* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i32 }

@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_FUNCTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@SQLITE_INDEX_SCAN_UNIQUE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rtree\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fullscan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @geopolyBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geopolyBestIndex(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sqlite3_index_constraint*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %63, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 7
  %20 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %20, i64 %22
  store %struct.sqlite3_index_constraint* %23, %struct.sqlite3_index_constraint** %10, align 8
  %24 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %25 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %63

29:                                               ; preds = %17
  %30 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %31 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %36 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  br label %66

42:                                               ; preds = %34, %29
  %43 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %44 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %49 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_FUNCTION, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %56 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_FUNCTION, align 8
  %59 = sub nsw i64 %57, %58
  %60 = add nsw i64 %59, 2
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %53, %47, %42
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %11

66:                                               ; preds = %40, %11
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store double 3.000000e+01, double* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  store i32 1, i32* %91, align 8
  %92 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @SQLITE_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %134

96:                                               ; preds = %66
  %97 = load i32, i32* %8, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %104, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  store double 3.000000e+02, double* %120, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  store i32 10, i32* %122, align 8
  %123 = load i32, i32* @SQLITE_OK, align 4
  store i32 %123, i32* %3, align 4
  br label %134

124:                                              ; preds = %96
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 4, i32* %126, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %128, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store double 3.000000e+06, double* %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  store i32 100000, i32* %132, align 8
  %133 = load i32, i32* @SQLITE_OK, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %124, %99, %69
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
