; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloblock.c_HelloKeys_ThreadMain.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloblock.c_HelloKeys_ThreadMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_POSTPONED_ARRAY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HelloKeys_ThreadMain(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @RedisModule_GetThreadSafeContext(i32* %16)
  store i32* %17, i32** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @REDISMODULE_POSTPONED_ARRAY_LEN, align 4
  %20 = call i32 @RedisModule_ReplyWithArray(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %61, %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @RedisModule_ThreadSafeContextLock(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32* @RedisModule_Call(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @RedisModule_ThreadSafeContextUnlock(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @RedisModule_CallReplyArrayElement(i32* %29, i64 0)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @RedisModule_CallReplyArrayElement(i32* %31, i64 1)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @RedisModule_CreateStringFromCallReply(i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @RedisModule_StringToLongLong(i32* %35, i64* %5)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @RedisModule_FreeString(i32* %37, i32* %38)
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @RedisModule_CallReplyLength(i32* %40)
  store i64 %41, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %55, %21
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32* @RedisModule_CallReplyArrayElement(i32* %47, i64 %48)
  store i32* %49, i32** %13, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @RedisModule_ReplyWithCallReply(i32* %50, i32* %51)
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %42

58:                                               ; preds = %42
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @RedisModule_FreeCallReply(i32* %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %21, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @RedisModule_ReplySetArrayLength(i32* %65, i64 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @RedisModule_FreeThreadSafeContext(i32* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @RedisModule_UnblockClient(i32* %70, i32* null)
  ret i8* null
}

declare dso_local i32* @RedisModule_GetThreadSafeContext(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i32) #1

declare dso_local i32 @RedisModule_ThreadSafeContextLock(i32*) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, i64) #1

declare dso_local i32 @RedisModule_ThreadSafeContextUnlock(i32*) #1

declare dso_local i32* @RedisModule_CallReplyArrayElement(i32*, i64) #1

declare dso_local i32* @RedisModule_CreateStringFromCallReply(i32*) #1

declare dso_local i32 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i64 @RedisModule_CallReplyLength(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithCallReply(i32*, i32*) #1

declare dso_local i32 @RedisModule_FreeCallReply(i32*) #1

declare dso_local i32 @RedisModule_ReplySetArrayLength(i32*, i64) #1

declare dso_local i32 @RedisModule_FreeThreadSafeContext(i32*) #1

declare dso_local i32 @RedisModule_UnblockClient(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
