; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeQueryStat1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeQueryStat1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid'\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sqlite_stat1\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_DEFAULT_ROWEST = common dso_local global i8* null, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@RTREE_MIN_ROWEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @rtreeQueryStat1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeQueryStat1(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sqlite3_table_column_metadata(i32* %11, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load i8*, i8** @RTREE_DEFAULT_ROWEST, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SQLITE_ERROR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @SQLITE_OK, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %3, align 4
  br label %93

32:                                               ; preds = %2
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @sqlite3_mprintf(i8* %33, i32 %36, i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %44, i32* %9, align 4
  br label %91

45:                                               ; preds = %32
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @sqlite3_prepare_v2(i32* %46, i8* %47, i32 -1, i32** %8, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @sqlite3_step(i32* %53)
  %55 = load i64, i64* @SQLITE_ROW, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @sqlite3_column_int64(i32* %58, i32 0)
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @sqlite3_finalize(i32* %61)
  store i32 %62, i32* %9, align 4
  br label %70

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SQLITE_NOMEM, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @SQLITE_OK, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SQLITE_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** @RTREE_DEFAULT_ROWEST, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %87

81:                                               ; preds = %74
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @RTREE_MIN_ROWEST, align 4
  %84 = call i8* @MAX(i64 %82, i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %81, %77
  br label %88

88:                                               ; preds = %87, %70
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @sqlite3_free(i8* %89)
  br label %91

91:                                               ; preds = %88, %43
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %30
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @sqlite3_table_column_metadata(i32*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i8* @MAX(i64, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
