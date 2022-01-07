; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_term_select.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_term_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TERM_SELECT_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32*, i32*)* @term_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @term_select(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @TERM_SELECT_STMT, align 4
  %18 = call i32 @sql_get_statement(i32* %16, i32 %17, i32** %14)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %7, align 4
  br label %75

24:                                               ; preds = %6
  %25 = load i32*, i32** %14, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SQLITE_STATIC, align 4
  %29 = call i32 @sqlite3_bind_text(i32* %25, i32 1, i8* %26, i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %75

35:                                               ; preds = %24
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @sqlite3_bind_int(i32* %36, i32 2, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @SQLITE_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %7, align 4
  br label %75

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @TERM_SELECT_STMT, align 4
  %47 = call i32 @sql_step_statement(i32* %45, i32 %46, i32** %14)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @SQLITE_ROW, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %7, align 4
  br label %75

53:                                               ; preds = %44
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @sqlite3_column_int64(i32* %54, i32 0)
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @DL_DEFAULT, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @sqlite3_column_blob(i32* %59, i32 1)
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @sqlite3_column_bytes(i32* %61, i32 1)
  %63 = call i32 @docListInit(i32* %57, i32 %58, i32 %60, i32 %62)
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @sqlite3_step(i32* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @SQLITE_DONE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i32, i32* @SQLITE_ROW, align 4
  br label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %15, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %51, %42, %33, %22
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sql_step_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @docListInit(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
