; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloblock.c_HelloBlock_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloblock.c_HelloBlock_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ERR invalid count\00", align 1
@HelloBlock_Reply = common dso_local global i32 0, align 4
@HelloBlock_Timeout = common dso_local global i32 0, align 4
@HelloBlock_FreeData = common dso_local global i32 0, align 4
@HelloBlock_Disconnected = common dso_local global i32 0, align 4
@HelloBlock_ThreadMain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"-ERR Can't start thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloBlock_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RedisModule_WrongArity(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @RedisModule_StringToLongLong(i32* %21, i64* %8)
  %23 = load i64, i64* @REDISMODULE_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @RedisModule_ReplyWithError(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %18
  %29 = load i32**, i32*** %6, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @RedisModule_StringToLongLong(i32* %31, i64* %9)
  %33 = load i64, i64* @REDISMODULE_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @RedisModule_ReplyWithError(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %69

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @HelloBlock_Reply, align 4
  %41 = load i32, i32* @HelloBlock_Timeout, align 4
  %42 = load i32, i32* @HelloBlock_FreeData, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32* @RedisModule_BlockClient(i32* %39, i32 %40, i32 %41, i32 %42, i64 %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @HelloBlock_Disconnected, align 4
  %47 = call i32 @RedisModule_SetDisconnectCallback(i32* %45, i32 %46)
  %48 = call i8** @RedisModule_Alloc(i32 16)
  store i8** %48, i8*** %12, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i8**, i8*** %12, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8**, i8*** %12, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @HelloBlock_ThreadMain, align 4
  %58 = load i8**, i8*** %12, align 8
  %59 = call i64 @pthread_create(i32* %10, i32* null, i32 %57, i8** %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %38
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @RedisModule_AbortBlock(i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @RedisModule_ReplyWithError(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %38
  %67 = load i64, i64* @REDISMODULE_OK, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %61, %35, %25, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32* @RedisModule_BlockClient(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @RedisModule_SetDisconnectCallback(i32*, i32) #1

declare dso_local i8** @RedisModule_Alloc(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8**) #1

declare dso_local i32 @RedisModule_AbortBlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
