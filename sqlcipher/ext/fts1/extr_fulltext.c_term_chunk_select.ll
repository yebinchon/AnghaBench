; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_term_chunk_select.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_term_chunk_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TERM_CHUNK_SELECT_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32*)* @term_chunk_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @term_chunk_select(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @TERM_CHUNK_SELECT_STMT, align 4
  %16 = call i32 @sql_get_statement(i32* %14, i32 %15, i32** %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %79

22:                                               ; preds = %5
  %23 = load i32*, i32** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SQLITE_STATIC, align 4
  %27 = call i32 @sqlite3_bind_text(i32* %23, i32 1, i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %79

33:                                               ; preds = %22
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @sqlite3_bind_int64(i32* %34, i32 2, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %79

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @TERM_CHUNK_SELECT_STMT, align 4
  %45 = call i32 @sql_step_statement(i32* %43, i32 %44, i32** %12)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @SQLITE_ROW, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @SQLITE_DONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @SQLITE_ERROR, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %6, align 4
  br label %79

59:                                               ; preds = %42
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @sqlite3_column_type(i32* %60, i32 0)
  switch i32 %61, label %68 [
    i32 128, label %62
    i32 129, label %64
  ]

62:                                               ; preds = %59
  %63 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %63, i32* %13, align 4
  br label %70

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @sqlite3_column_int64(i32* %65, i32 0)
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %69, i32* %6, align 4
  br label %79

70:                                               ; preds = %64, %62
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @sqlite3_step(i32* %71)
  %73 = load i32, i32* @SQLITE_DONE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %76, i32* %6, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %75, %68, %57, %40, %31, %20
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sql_step_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
