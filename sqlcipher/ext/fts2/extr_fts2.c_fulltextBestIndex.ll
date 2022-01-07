; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, double, i64, %struct.TYPE_4__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i32, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"FTS2 BestIndex\0A\00", align 1
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@QUERY_ROWID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"FTS2 QUERY_ROWID\0A\00", align 1
@SQLITE_INDEX_CONSTRAINT_MATCH = common dso_local global i64 0, align 8
@QUERY_FULLTEXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"FTS2 QUERY_FULLTEXT %d\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@QUERY_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @fulltextBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextBestIndex(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sqlite3_index_constraint*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %89, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %92

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %18, i64 %20
  store %struct.sqlite3_index_constraint* %21, %struct.sqlite3_index_constraint** %7, align 8
  %22 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %23 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %15
  %27 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %28 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %33 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i64, i64* @QUERY_ROWID, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %70

42:                                               ; preds = %31, %26
  %43 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %44 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %49 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_MATCH, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i64, i64* @QUERY_FULLTEXT, align 8
  %55 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %56 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %63 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @TRACE(i8* %66)
  br label %69

68:                                               ; preds = %47, %42
  br label %89

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store double 1.000000e+00, double* %86, align 8
  %87 = load i32, i32* @SQLITE_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %97

88:                                               ; preds = %15
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %9

92:                                               ; preds = %9
  %93 = load i64, i64* @QUERY_GENERIC, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @SQLITE_OK, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %70
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
