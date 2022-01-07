; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloBlock_Reply.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloBlock_Reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_MODULE = common dso_local global i32 0, align 4
@HelloType = common dso_local global i64 0, align 8
@REDISMODULE_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloBlock_Reply(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = ptrtoint i32** %11 to i32
  %13 = call i32 @REDISMODULE_NOT_USED(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @REDISMODULE_NOT_USED(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @RedisModule_GetBlockedClientReadyKey(i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @REDISMODULE_READ, align 4
  %21 = call i32* @RedisModule_OpenKey(i32* %18, i32* %19, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @RedisModule_KeyType(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @REDISMODULE_KEYTYPE_MODULE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @RedisModule_ModuleTypeGetType(i32* %28)
  %30 = load i64, i64* @HelloType, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %3
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @RedisModule_CloseKey(i32* %33)
  %35 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %27
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @RedisModule_CloseKey(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @HelloTypeRange_RedisCommand(i32* %39, i32** %40, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32* @RedisModule_GetBlockedClientReadyKey(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i32 @RedisModule_KeyType(i32*) #1

declare dso_local i64 @RedisModule_ModuleTypeGetType(i32*) #1

declare dso_local i32 @RedisModule_CloseKey(i32*) #1

declare dso_local i32 @HelloTypeRange_RedisCommand(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
