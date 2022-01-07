; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_sqlite3Fts3ExprParse.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_sqlite3Fts3ExprParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_FTS3_MAX_EXPR_DEPTH = common dso_local global i8* null, align 8
@SQLITE_TOOBIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"FTS expression tree is too large (maximum depth %d)\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"malformed MATCH expression: [%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3ExprParse(i32* %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32** %8, i8** %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8** %2, i8*** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  store i8** %9, i8*** %20, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i8**, i8*** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i8*, i8** %17, align 8
  %29 = load i32, i32* %18, align 4
  %30 = load i32**, i32*** %19, align 8
  %31 = call i32 @fts3ExprParseUnbalanced(i32* %22, i32 %23, i8** %24, i32 %25, i32 %26, i32 %27, i8* %28, i32 %29, i32** %30)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %10
  %36 = load i32**, i32*** %19, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32**, i32*** %19, align 8
  %41 = load i8*, i8** @SQLITE_FTS3_MAX_EXPR_DEPTH, align 8
  %42 = call i32 @fts3ExprBalance(i32** %40, i8* %41)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32**, i32*** %19, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i8*, i8** @SQLITE_FTS3_MAX_EXPR_DEPTH, align 8
  %50 = call i32 @fts3ExprCheckDepth(i32* %48, i8* %49)
  store i32 %50, i32* %21, align 4
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %35, %10
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32**, i32*** %19, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @sqlite3Fts3ExprFree(i32* %58)
  %60 = load i32**, i32*** %19, align 8
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* @SQLITE_TOOBIG, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i8**, i8*** %20, align 8
  %66 = load i8*, i8** @SQLITE_FTS3_MAX_EXPR_DEPTH, align 8
  %67 = call i32 @sqlite3Fts3ErrMsg(i8** %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %68, i32* %21, align 4
  br label %78

69:                                               ; preds = %56
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* @SQLITE_ERROR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8**, i8*** %20, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @sqlite3Fts3ErrMsg(i8** %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i32, i32* %21, align 4
  ret i32 %80
}

declare dso_local i32 @fts3ExprParseUnbalanced(i32*, i32, i8**, i32, i32, i32, i8*, i32, i32**) #1

declare dso_local i32 @fts3ExprBalance(i32**, i8*) #1

declare dso_local i32 @fts3ExprCheckDepth(i32*, i8*) #1

declare dso_local i32 @sqlite3Fts3ExprFree(i32*) #1

declare dso_local i32 @sqlite3Fts3ErrMsg(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
