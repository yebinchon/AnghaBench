; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeLen_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeLen_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HelloTypeObject = type { i32 }

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i32 0, align 4
@HelloType = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloTypeLen_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.HelloTypeObject*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @RedisModule_AutoMemory(i32* %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RedisModule_WrongArity(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @REDISMODULE_READ, align 4
  %24 = load i32, i32* @REDISMODULE_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = call i32* @RedisModule_OpenKey(i32* %19, i32* %22, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @RedisModule_KeyType(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @RedisModule_ModuleTypeGetType(i32* %33)
  %35 = load i64, i64* @HelloType, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @REDISMODULE_ERRORMSG_WRONGTYPE, align 4
  %40 = call i32 @RedisModule_ReplyWithError(i32* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %32, %18
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.HelloTypeObject* @RedisModule_ModuleTypeGetValue(i32* %42)
  store %struct.HelloTypeObject* %43, %struct.HelloTypeObject** %10, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %10, align 8
  %46 = icmp ne %struct.HelloTypeObject* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %10, align 8
  %49 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  %54 = call i32 @RedisModule_ReplyWithLongLong(i32* %44, i32 %53)
  %55 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %37, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i32 @RedisModule_KeyType(i32*) #1

declare dso_local i64 @RedisModule_ModuleTypeGetType(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i32) #1

declare dso_local %struct.HelloTypeObject* @RedisModule_ModuleTypeGetValue(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
