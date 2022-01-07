; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloMoreExpire_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloMoreExpire_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ERR invalid expire time\00", align 1
@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_NO_EXPIRE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloMoreExpire_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @RedisModule_AutoMemory(i32* %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RedisModule_WrongArity(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @RedisModule_StringToLongLong(i32* %21, i64* %8)
  %23 = load i64, i64* @REDISMODULE_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @RedisModule_ReplyWithError(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %18
  %29 = load i32*, i32** %5, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @REDISMODULE_READ, align 4
  %34 = load i32, i32* @REDISMODULE_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = call i32* @RedisModule_OpenKey(i32* %29, i32* %32, i32 %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @RedisModule_GetExpire(i32* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @REDISMODULE_NO_EXPIRE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @RedisModule_SetExpire(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %42, %28
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @RedisModule_ReplyWithSimpleString(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %25, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i64 @RedisModule_GetExpire(i32*) #1

declare dso_local i32 @RedisModule_SetExpire(i32*, i64) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
