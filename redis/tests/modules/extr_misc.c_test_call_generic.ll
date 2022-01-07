; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_misc.c_test_call_generic.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_misc.c_test_call_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_call_generic(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @RedisModule_WrongArity(i32* %13)
  %15 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %15, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i8* @RedisModule_StringPtrLen(i32* %19, i32* null)
  store i8* %20, i8** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 2
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 2
  %27 = call i32* @RedisModule_Call(i32* %21, i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %24, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @RedisModule_ReplyWithCallReply(i32* %31, i32* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @RedisModule_FreeCallReply(i32* %34)
  br label %41

36:                                               ; preds = %16
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @RedisModule_ReplyWithError(i32* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i8* @RedisModule_StringPtrLen(i32*, i32*) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, i32**, i32) #1

declare dso_local i32 @RedisModule_ReplyWithCallReply(i32*, i32*) #1

declare dso_local i32 @RedisModule_FreeCallReply(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
