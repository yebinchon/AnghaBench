; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SnippetFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SnippetFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"</b>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<b>...</b>\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"wrong number of arguments to function snippet()\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"snippet\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @fts3SnippetFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3SnippetFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 15, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 6
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @sqlite3_result_error(i32* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  br label %96

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @fts3FunctionArg(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %26, i32** %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %96

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %60 [
    i32 6, label %32
    i32 5, label %37
    i32 4, label %42
    i32 3, label %48
    i32 2, label %54
  ]

32:                                               ; preds = %30
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 5
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @sqlite3_value_int(i32* %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %30, %32
  %38 = load i32**, i32*** %6, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sqlite3_value_int(i32* %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %30, %37
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @sqlite3_value_text(i32* %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %30, %42
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @sqlite3_value_text(i32* %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %30, %48
  %55 = load i32**, i32*** %6, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @sqlite3_value_text(i32* %57)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %54, %30
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66, %63, %60
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @sqlite3_result_error_nomem(i32* %70)
  br label %96

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @SQLITE_STATIC, align 4
  %78 = call i32 @sqlite3_result_text(i32* %76, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 %77)
  br label %95

79:                                               ; preds = %72
  %80 = load i64, i64* @SQLITE_OK, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @fts3CursorSeek(i32* %81, i32* %82)
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @sqlite3Fts3Snippet(i32* %86, i32* %87, i8* %88, i8* %89, i8* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %79
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %19, %29, %95, %69
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @fts3FunctionArg(i32*, i8*, i32*, i32**) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i64 @fts3CursorSeek(i32*, i32*) #1

declare dso_local i32 @sqlite3Fts3Snippet(i32*, i32*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
