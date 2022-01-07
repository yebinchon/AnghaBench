; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeInsert_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeInsert_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HelloTypeObject = type { i32 }

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i32 0, align 4
@HelloType = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i8* null, align 8
@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"ERR invalid value: must be a signed 64 bit integer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloTypeInsert_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.HelloTypeObject*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @RedisModule_AutoMemory(i32* %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @RedisModule_WrongArity(i32* %17)
  store i32 %18, i32* %4, align 4
  br label %83

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
  %29 = call i32 @RedisModule_KeyType(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %19
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
  br label %83

42:                                               ; preds = %33, %19
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @RedisModule_StringToLongLong(i32* %45, i64* %10)
  %47 = load i64, i64* @REDISMODULE_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @RedisModule_ReplyWithError(i32* %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  br label %83

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = call %struct.HelloTypeObject* (...) @createHelloTypeObject()
  store %struct.HelloTypeObject* %57, %struct.HelloTypeObject** %11, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* @HelloType, align 8
  %60 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %11, align 8
  %61 = call i32 @RedisModule_ModuleTypeSetValue(i32* %58, i64 %59, %struct.HelloTypeObject* %60)
  br label %65

62:                                               ; preds = %52
  %63 = load i32*, i32** %8, align 8
  %64 = call %struct.HelloTypeObject* @RedisModule_ModuleTypeGetValue(i32* %63)
  store %struct.HelloTypeObject* %64, %struct.HelloTypeObject** %11, align 8
  br label %65

65:                                               ; preds = %62, %56
  %66 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @HelloTypeInsert(%struct.HelloTypeObject* %66, i64 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32**, i32*** %6, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @RedisModule_SignalKeyAsReady(i32* %69, i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %11, align 8
  %76 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @RedisModule_ReplyWithLongLong(i32* %74, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @RedisModule_ReplicateVerbatim(i32* %79)
  %81 = load i64, i64* @REDISMODULE_OK, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %65, %49, %38, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i32 @RedisModule_KeyType(i32*) #1

declare dso_local i64 @RedisModule_ModuleTypeGetType(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local %struct.HelloTypeObject* @createHelloTypeObject(...) #1

declare dso_local i32 @RedisModule_ModuleTypeSetValue(i32*, i64, %struct.HelloTypeObject*) #1

declare dso_local %struct.HelloTypeObject* @RedisModule_ModuleTypeGetValue(i32*) #1

declare dso_local i32 @HelloTypeInsert(%struct.HelloTypeObject*, i64) #1

declare dso_local i32 @RedisModule_SignalKeyAsReady(i32*, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

declare dso_local i32 @RedisModule_ReplicateVerbatim(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
