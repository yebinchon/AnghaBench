; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeHintLoad.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeHintLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SQL_SELECT_STAT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@FTS_STAT_INCRMERGEHINT = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @fts3IncrmergeHintLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3IncrmergeHintLoad(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @SQL_SELECT_STAT, align 4
  %14 = call i32 @fts3SqlStmt(i32* %12, i32 %13, i32** %5, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @FTS_STAT_INCRMERGEHINT, align 4
  %21 = call i32 @sqlite3_bind_int(i32* %19, i32 1, i32 %20)
  %22 = load i64, i64* @SQLITE_ROW, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @sqlite3_step(i32* %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @sqlite3_column_blob(i32* %27, i32 0)
  store i8* %28, i8** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sqlite3_column_bytes(i32* %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @blobGrowBuffer(%struct.TYPE_4__* %34, i32 %35, i32* %6)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32 %43, i8* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %33
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @sqlite3_reset(i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @fts3SqlStmt(i32*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @blobGrowBuffer(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
