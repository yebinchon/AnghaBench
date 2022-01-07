; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloRepl2_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloRepl2_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_LIST = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i32 0, align 4
@REDISMODULE_LIST_TAIL = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i64 0, align 8
@REDISMODULE_LIST_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloRepl2_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @RedisModule_WrongArity(i32* %17)
  store i32 %18, i32* %4, align 4
  br label %75

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @RedisModule_AutoMemory(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @REDISMODULE_READ, align 4
  %27 = load i32, i32* @REDISMODULE_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i32* @RedisModule_OpenKey(i32* %22, i32* %25, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @RedisModule_KeyType(i32* %30)
  %32 = load i64, i64* @REDISMODULE_KEYTYPE_LIST, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @REDISMODULE_ERRORMSG_WRONGTYPE, align 4
  %37 = call i32 @RedisModule_ReplyWithError(i32* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %19
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @RedisModule_ValueLength(i32* %39)
  store i64 %40, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %54, %38
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %9, align 8
  %44 = icmp ne i64 %42, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @REDISMODULE_LIST_TAIL, align 4
  %48 = call i32* @RedisModule_ListPop(i32* %46, i32 %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i64 @RedisModule_StringToLongLong(i32* %49, i64* %12)
  %51 = load i64, i64* @REDISMODULE_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32* @RedisModule_CreateStringFromLongLong(i32* %60, i64 %61)
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @REDISMODULE_LIST_HEAD, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @RedisModule_ListPush(i32* %63, i32 %64, i32* %65)
  br label %41

67:                                               ; preds = %41
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @RedisModule_ReplyWithLongLong(i32* %68, i64 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @RedisModule_ReplicateVerbatim(i32* %71)
  %73 = load i64, i64* @REDISMODULE_OK, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %67, %34, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i64 @RedisModule_KeyType(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i32) #1

declare dso_local i64 @RedisModule_ValueLength(i32*) #1

declare dso_local i32* @RedisModule_ListPop(i32*, i32) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32* @RedisModule_CreateStringFromLongLong(i32*, i64) #1

declare dso_local i32 @RedisModule_ListPush(i32*, i32, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i64) #1

declare dso_local i32 @RedisModule_ReplicateVerbatim(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
