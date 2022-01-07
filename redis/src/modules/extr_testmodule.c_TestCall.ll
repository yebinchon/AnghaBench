; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestCall.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mylist\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RPUSH\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"csl\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"LRANGE\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ccc\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestCall(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = ptrtoint i32** %13 to i32
  %15 = call i32 @REDISMODULE_NOT_USED(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @REDISMODULE_NOT_USED(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @RedisModule_AutoMemory(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* (i32*, i8*, i8*, i8*, ...) @RedisModule_Call(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @RedisModule_CreateString(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* (i32*, i8*, i8*, i8*, ...) @RedisModule_Call(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %25, i64 1234)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* (i32*, i8*, i8*, i8*, ...) @RedisModule_Call(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @RedisModule_CallReplyLength(i32* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %52

34:                                               ; preds = %3
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @RedisModule_CallReplyArrayElement(i32* %35, i32 0)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @RedisModule_CallReplyArrayElement(i32* %37, i32 1)
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @TestMatchReply(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %52

43:                                               ; preds = %34
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @TestMatchReply(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @RedisModule_ReplyWithSimpleString(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %51 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %47, %42, %33
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @RedisModule_ReplyWithSimpleString(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %55 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32* @RedisModule_CreateString(i32*, i8*, i32) #1

declare dso_local i64 @RedisModule_CallReplyLength(i32*) #1

declare dso_local i32* @RedisModule_CallReplyArrayElement(i32*, i32) #1

declare dso_local i32 @TestMatchReply(i32*, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
