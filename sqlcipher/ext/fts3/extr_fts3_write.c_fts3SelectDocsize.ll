; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3SelectDocsize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3SelectDocsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQL_SELECT_DOCSIZE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i64 0, align 8
@FTS_CORRUPT_VTAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**)* @fts3SelectDocsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SelectDocsize(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @SQL_SELECT_DOCSIZE, align 4
  %11 = call i32 @fts3SqlStmt(i32* %9, i32 %10, i32** %7, i32 0)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sqlite3_bind_int64(i32* %16, i32 1, i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @sqlite3_step(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SQLITE_ROW, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @sqlite3_column_type(i32* %25, i32 0)
  %27 = load i64, i64* @SQLITE_BLOB, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %24, %15
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @sqlite3_reset(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @FTS_CORRUPT_VTAB, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %29
  store i32* null, i32** %7, align 8
  br label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @SQLITE_OK, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %37
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32*, i32** %7, align 8
  %43 = load i32**, i32*** %6, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @fts3SqlStmt(i32*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
