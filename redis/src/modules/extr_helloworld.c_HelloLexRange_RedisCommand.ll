; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloLexRange_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloLexRange_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_ZSET = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i8* null, align 8
@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@REDISMODULE_POSTPONED_ARRAY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloLexRange_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @RedisModule_AutoMemory(i32* %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @RedisModule_WrongArity(i32* %17)
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @REDISMODULE_READ, align 4
  %25 = load i32, i32* @REDISMODULE_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i32* @RedisModule_OpenKey(i32* %20, i32* %23, i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @RedisModule_KeyType(i32* %28)
  %30 = load i64, i64* @REDISMODULE_KEYTYPE_ZSET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** @REDISMODULE_ERRORMSG_WRONGTYPE, align 8
  %35 = call i32 @RedisModule_ReplyWithError(i32* %33, i8* %34)
  store i32 %35, i32* %4, align 4
  br label %82

36:                                               ; preds = %19
  %37 = load i32*, i32** %8, align 8
  %38 = load i32**, i32*** %6, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32**, i32*** %6, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @RedisModule_ZsetFirstInLexRange(i32* %37, i32* %40, i32* %43)
  %45 = load i64, i64* @REDISMODULE_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @RedisModule_ReplyWithError(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %4, align 4
  br label %82

50:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @REDISMODULE_POSTPONED_ARRAY_LEN, align 4
  %53 = call i32 @RedisModule_ReplyWithArray(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %59, %50
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @RedisModule_ZsetRangeEndReached(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = call i32* @RedisModule_ZsetRangeCurrentElement(i32* %60, double* %10)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @RedisModule_ReplyWithString(i32* %62, i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @RedisModule_FreeString(i32* %65, i32* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @RedisModule_ZsetRangeNext(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @RedisModule_ZsetRangeStop(i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @RedisModule_ReplySetArrayLength(i32* %75, i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @RedisModule_CloseKey(i32* %78)
  %80 = load i64, i64* @REDISMODULE_OK, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %72, %47, %32, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i64 @RedisModule_KeyType(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i64 @RedisModule_ZsetFirstInLexRange(i32*, i32*, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i32) #1

declare dso_local i32 @RedisModule_ZsetRangeEndReached(i32*) #1

declare dso_local i32* @RedisModule_ZsetRangeCurrentElement(i32*, double*) #1

declare dso_local i32 @RedisModule_ReplyWithString(i32*, i32*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i32 @RedisModule_ZsetRangeNext(i32*) #1

declare dso_local i32 @RedisModule_ZsetRangeStop(i32*) #1

declare dso_local i32 @RedisModule_ReplySetArrayLength(i32*, i32) #1

declare dso_local i32 @RedisModule_CloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
