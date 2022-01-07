; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_stb.c_test_lex.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_stb.c_test_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"tok_en5.3 20.1 20. .20.1\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"[a-zA-Z_][a-zA-Z0-9_]*\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"[0-9]*\\.?[0-9]*\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[\0D\0A\09 ]+\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"stb_lex 1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"stb_lex 2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"stb_lex 3\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"stb_lex 4\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"stb_lex 5\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"stb_lex 6\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"stb_lex 7\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"stb_lex 8\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"stb_lex 9\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"stb_lex 10\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lex() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32* (...) @stb_lex_matcher()
  store i32* %3, i32** %1, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @stb_lex_item(i32* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @stb_lex_item(i32* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @stb_lex_item(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @stb_lex_item(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 -99)
  %12 = load i32*, i32** %1, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @expects(i32* %12, i8* %13, i32 1, i32 7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @expects(i32* %15, i8* %16, i32 2, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @expects(i32* %18, i8* %19, i32 3, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @expects(i32* %21, i8* %22, i32 2, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i8* %23, i8** %2, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i8* @expects(i32* %24, i8* %25, i32 3, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  %27 = load i32*, i32** %1, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i8* @expects(i32* %27, i8* %28, i32 2, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i8* %29, i8** %2, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i8* @expects(i32* %30, i8* %31, i32 3, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i8* @expects(i32* %33, i8* %34, i32 2, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  store i8* %35, i8** %2, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i8* @expects(i32* %36, i8* %37, i32 2, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store i8* %38, i8** %2, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i8* @expects(i32* %39, i8* %40, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store i8* %41, i8** %2, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @stb_matcher_free(i32* %42)
  ret void
}

declare dso_local i32* @stb_lex_matcher(...) #1

declare dso_local i32 @stb_lex_item(i32*, i8*, i32) #1

declare dso_local i8* @expects(i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @stb_matcher_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
