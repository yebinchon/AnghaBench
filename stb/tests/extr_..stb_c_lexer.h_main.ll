; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_c_lexer.h_main.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_c_lexer.h_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"stb_c_lexer.h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Error opening file\0A\00", align 1
@CLEX_parse_error = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"\0A<<<PARSE ERROR>>>\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = call i64 @malloc(i32 1048576)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @fread(i8* %16, i32 1, i32 1048576, i32* %17)
  %19 = trunc i64 %18 to i32
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ %19, %15 ], [ -1, %20 ]
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @fclose(i32* %30)
  store i32 1, i32* %3, align 4
  br label %57

32:                                               ; preds = %21
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = call i64 @malloc(i32 65536)
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @stb_c_lexer_init(%struct.TYPE_5__* %9, i8* %35, i8* %39, i8* %41, i32 65536)
  br label %43

43:                                               ; preds = %53, %32
  %44 = call i64 @stb_c_lexer_get_token(%struct.TYPE_5__* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CLEX_parse_error, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %56

53:                                               ; preds = %46
  %54 = call i32 @print_token(%struct.TYPE_5__* %9)
  %55 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %43

56:                                               ; preds = %51, %43
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @stb_c_lexer_init(%struct.TYPE_5__*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @stb_c_lexer_get_token(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_token(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
