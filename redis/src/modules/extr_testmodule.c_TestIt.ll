; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestIt.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestIt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"dbsize\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"test.call\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"test.ctxflags\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"test.string.append\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"test.unlink\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"test.string.append.am\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"test.string.printf\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Got 3 args. argv[1]: foo, argv[2]: bar\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"test.notify\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"ALL TESTS PASSED\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"SOME TEST NOT PASSED! Check server logs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestIt(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32**, i32*** %6, align 8
  %10 = ptrtoint i32** %9 to i32
  %11 = call i32 @REDISMODULE_NOT_USED(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @REDISMODULE_NOT_USED(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @RedisModule_AutoMemory(i32* %14)
  %16 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @TestAssertIntegerReply(i32* %17, i32* %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %82

22:                                               ; preds = %3
  %23 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @TestAssertStringReply(i32* %24, i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %82

29:                                               ; preds = %22
  %30 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @TestAssertStringReply(i32* %31, i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %82

36:                                               ; preds = %29
  %37 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @TestAssertStringReply(i32* %38, i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %82

43:                                               ; preds = %36
  %44 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @TestAssertStringReply(i32* %45, i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %82

50:                                               ; preds = %43
  %51 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @TestAssertStringReply(i32* %52, i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %82

57:                                               ; preds = %50
  %58 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @TestAssertStringReply(i32* %59, i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %82

64:                                               ; preds = %57
  %65 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @TestAssertStringReply(i32* %66, i32* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 38)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %82

71:                                               ; preds = %64
  %72 = call i32 (i8*, i8*, ...) @T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @TestAssertStringReply(i32* %73, i32* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %82

78:                                               ; preds = %71
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @RedisModule_ReplyWithSimpleString(i32* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %81 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %86

82:                                               ; preds = %77, %70, %63, %56, %49, %42, %35, %28, %21
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @RedisModule_ReplyWithSimpleString(i32* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %85 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @T(i8*, i8*, ...) #1

declare dso_local i32 @TestAssertIntegerReply(i32*, i32*, i32) #1

declare dso_local i32 @TestAssertStringReply(i32*, i32*, i8*, i32) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
