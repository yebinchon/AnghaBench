; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segdir_span.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segdir_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGDIR_SPAN_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @segdir_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segdir_span(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @SEGDIR_SPAN_STMT, align 4
  %15 = call i32 @sql_get_statement(i32* %13, i32 %14, i32** %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %81

21:                                               ; preds = %4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sqlite3_bind_int(i32* %22, i32 1, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %21
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @sqlite3_step(i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @SQLITE_DONE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %37, i32* %5, align 4
  br label %81

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @SQLITE_ROW, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %81

44:                                               ; preds = %38
  %45 = load i64, i64* @SQLITE_NULL, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @sqlite3_column_type(i32* %46, i32 0)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @sqlite3_step(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @SQLITE_ROW, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %56, i32* %5, align 4
  br label %81

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %81

59:                                               ; preds = %44
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @sqlite3_column_int64(i32* %60, i32 0)
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @sqlite3_column_int64(i32* %63, i32 1)
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @sqlite3_step(i32* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SQLITE_ROW, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %72, i32* %5, align 4
  br label %81

73:                                               ; preds = %59
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @SQLITE_DONE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @SQLITE_ROW, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %77, %71, %57, %55, %42, %36, %28, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
