; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeBRange_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeBRange_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i32 0, align 4
@HelloType = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i8* null, align 8
@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"ERR invalid timeout parameter\00", align 1
@HelloBlock_Reply = common dso_local global i32 0, align 4
@HelloBlock_Timeout = common dso_local global i32 0, align 4
@HelloBlock_FreeData = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloTypeBRange_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 5
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @RedisModule_WrongArity(i32* %15)
  store i32 %16, i32* %4, align 4
  br label %75

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @RedisModule_AutoMemory(i32* %18)
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
  %29 = call i32 @RedisModule_KeyType(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %17
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @RedisModule_ModuleTypeGetType(i32* %34)
  %36 = load i64, i64* @HelloType, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** @REDISMODULE_ERRORMSG_WRONGTYPE, align 8
  %41 = call i32 @RedisModule_ReplyWithError(i32* %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %75

42:                                               ; preds = %33, %17
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @RedisModule_StringToLongLong(i32* %45, i64* %10)
  %47 = load i64, i64* @REDISMODULE_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @RedisModule_ReplyWithError(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @HelloTypeRange_RedisCommand(i32* %57, i32** %58, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %52
  %63 = call i8* @RedisModule_Alloc(i32 100)
  store i8* %63, i8** %11, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @HelloBlock_Reply, align 4
  %66 = load i32, i32* @HelloBlock_Timeout, align 4
  %67 = load i32, i32* @HelloBlock_FreeData, align 4
  %68 = load i64, i64* %10, align 8
  %69 = load i32**, i32*** %6, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @RedisModule_BlockClientOnKeys(i32* %64, i32 %65, i32 %66, i32 %67, i64 %68, i32** %70, i32 1, i8* %71)
  %73 = load i64, i64* @REDISMODULE_OK, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %62, %56, %49, %38, %14
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i32 @RedisModule_KeyType(i32*) #1

declare dso_local i64 @RedisModule_ModuleTypeGetType(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @HelloTypeRange_RedisCommand(i32*, i32**, i32) #1

declare dso_local i8* @RedisModule_Alloc(i32) #1

declare dso_local i32 @RedisModule_BlockClientOnKeys(i32*, i32, i32, i32, i64, i32**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
