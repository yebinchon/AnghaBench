; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_misc.c_test_call_info.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_misc.c_test_call_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@errno = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_call_info(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  store i32* %15, i32** %7, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @RedisModule_ReplyWithCallReply(i32* %23, i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @RedisModule_FreeCallReply(i32* %26)
  br label %33

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @RedisModule_ReplyWithError(i32* %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* @REDISMODULE_OK, align 4
  ret i32 %34
}

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, ...) #1

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
