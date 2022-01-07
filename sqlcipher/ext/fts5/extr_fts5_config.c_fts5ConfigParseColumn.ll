; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigParseColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigParseColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i8** }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_RANK_NAME = common dso_local global i8* null, align 8
@FTS5_ROWID_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"reserved fts5 column name: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"unindexed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unrecognized column option: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i8**)* @fts5ConfigParseColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ConfigParseColumn(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** @FTS5_RANK_NAME, align 8
  %13 = call i64 @sqlite3_stricmp(i8* %11, i8* %12)
  %14 = icmp eq i64 0, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @FTS5_ROWID_NAME, align 8
  %18 = call i64 @sqlite3_stricmp(i8* %16, i8* %17)
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %4
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i8**, i8*** %8, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %24, i32* %9, align 4
  br label %47

25:                                               ; preds = %15
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @sqlite3_stricmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 0, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 1, i32* %39, align 4
  br label %45

40:                                               ; preds = %28
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8**, i8*** %8, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %32
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = getelementptr inbounds i8*, i8** %51, i64 %54
  store i8* %48, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
