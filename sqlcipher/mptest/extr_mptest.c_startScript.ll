; ModuleID = '/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_startScript.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_startScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i64 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"BEGIN IMMEDIATE\00", align 1
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"in startScript: %s\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"UPDATE counters SET nError=nError+%d, nTest=nTest+%d\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"SELECT 1 FROM client WHERE id=%d AND wantHalt\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"DELETE FROM client WHERE id=%d\00", align 1
@DEFAULT_TIMEOUT = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"COMMIT TRANSACTION;\00", align 1
@SQLITE_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [92 x i8] c"SELECT script, id, name FROM task WHERE client=%d AND starttime IS NULL ORDER BY id LIMIT 1\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"UPDATE task   SET starttime=strftime('%%Y-%%m-%%d %%H:%%M:%%f','now') WHERE id=%d;\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Waited over 30 seconds with no work.  Giving up.\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"DELETE FROM client WHERE id=%d; COMMIT;\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, i8**)* @startScript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startScript(i32 %0, i8** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8**, i8*** %7, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %4, %21, %119, %123
  %17 = call i32 @trySql(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @SQLITE_BUSY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @sqlite3_sleep(i32 10)
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 10
  store i32 %24, i32* %13, align 4
  br label %16

25:                                               ; preds = %16
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %31 = call i32 @sqlite3_errmsg(i32 %30)
  %32 = call i32 @fatalError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36, %33
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %42 = call i32 (i8*, ...) @runSql(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %41)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %6, align 4
  %45 = call i32* @prepareSql(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @sqlite3_step(i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @sqlite3_finalize(i32* %48)
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SQLITE_ROW, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @runSql(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** @DEFAULT_TIMEOUT, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %57 = call i32 (i8*, ...) @runSql(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %58, i32* %5, align 4
  br label %127

59:                                               ; preds = %43
  %60 = load i32, i32* %6, align 4
  %61 = call i32* @prepareSql(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @sqlite3_step(i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @SQLITE_ROW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %59
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @sqlite3_column_bytes(i32* %68, i32 0)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i8* @sqlite3_malloc(i32 %71)
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8**, i8*** %7, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i64 @sqlite3_column_text(i32* %76, i32 0)
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @strcpy(i8* %75, i8* %78)
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @sqlite3_column_int(i32* %80, i32 1)
  store i32 %81, i32* %11, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = call i64 @sqlite3_column_text(i32* %83, i32 2)
  %85 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 %84)
  %86 = load i8**, i8*** %9, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @sqlite3_finalize(i32* %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (i8*, ...) @runSql(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** @DEFAULT_TIMEOUT, align 8
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %92 = call i32 (i8*, ...) @runSql(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @SQLITE_OK, align 4
  store i32 %93, i32* %5, align 4
  br label %127

94:                                               ; preds = %59
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @sqlite3_finalize(i32* %95)
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @SQLITE_DONE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 30000
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = call i32 @errorMessage(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i8*, ...) @runSql(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %108 = call i32 @sqlite3_close(i32 %107)
  %109 = call i32 @exit(i32 1) #3
  unreachable

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %115, %110
  %112 = call i32 @trySql(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %113 = load i32, i32* @SQLITE_BUSY, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = call i32 @sqlite3_sleep(i32 10)
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 10
  store i32 %118, i32* %13, align 4
  br label %111

119:                                              ; preds = %111
  %120 = call i32 @sqlite3_sleep(i32 100)
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 100
  store i32 %122, i32* %13, align 4
  br label %16

123:                                              ; preds = %94
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %125 = call i32 @sqlite3_errmsg(i32 %124)
  %126 = call i32 @fatalError(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  br label %16

127:                                              ; preds = %67, %53
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @trySql(i8*) #1

declare dso_local i32 @sqlite3_sleep(i32) #1

declare dso_local i32 @fatalError(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @runSql(i8*, ...) #1

declare dso_local i32* @prepareSql(i8*, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i64) #1

declare dso_local i32 @errorMessage(i8*) #1

declare dso_local i32 @sqlite3_close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
