; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloListSpliceAuto_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloListSpliceAuto_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_LIST = common dso_local global i64 0, align 8
@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i8* null, align 8
@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ERR invalid count\00", align 1
@REDISMODULE_LIST_TAIL = common dso_local global i32 0, align 4
@REDISMODULE_LIST_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloListSpliceAuto_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RedisModule_WrongArity(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %98

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @RedisModule_AutoMemory(i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @REDISMODULE_READ, align 4
  %26 = load i32, i32* @REDISMODULE_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @RedisModule_OpenKey(i32* %21, i32* %24, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @REDISMODULE_READ, align 4
  %34 = load i32, i32* @REDISMODULE_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = call i32* @RedisModule_OpenKey(i32* %29, i32* %32, i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @RedisModule_KeyType(i32* %37)
  %39 = load i64, i64* @REDISMODULE_KEYTYPE_LIST, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %18
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @RedisModule_KeyType(i32* %42)
  %44 = load i64, i64* @REDISMODULE_KEYTYPE_EMPTY, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %41, %18
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @RedisModule_KeyType(i32* %47)
  %49 = load i64, i64* @REDISMODULE_KEYTYPE_LIST, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @RedisModule_KeyType(i32* %52)
  %54 = load i64, i64* @REDISMODULE_KEYTYPE_EMPTY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %41
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** @REDISMODULE_ERRORMSG_WRONGTYPE, align 8
  %59 = call i32 @RedisModule_ReplyWithError(i32* %57, i8* %58)
  store i32 %59, i32* %4, align 4
  br label %98

60:                                               ; preds = %51, %46
  %61 = load i32**, i32*** %6, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 3
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @RedisModule_StringToLongLong(i32* %63, i64* %10)
  %65 = load i64, i64* @REDISMODULE_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %10, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %60
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @RedisModule_ReplyWithError(i32* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  br label %98

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %10, align 8
  %77 = icmp sgt i64 %75, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @REDISMODULE_LIST_TAIL, align 4
  %81 = call i32* @RedisModule_ListPop(i32* %79, i32 %80)
  store i32* %81, i32** %11, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %90

85:                                               ; preds = %78
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* @REDISMODULE_LIST_HEAD, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @RedisModule_ListPush(i32* %86, i32 %87, i32* %88)
  br label %74

90:                                               ; preds = %84, %74
  %91 = load i32*, i32** %8, align 8
  %92 = call i64 @RedisModule_ValueLength(i32* %91)
  store i64 %92, i64* %12, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @RedisModule_ReplyWithLongLong(i32* %93, i64 %94)
  %96 = load i64, i64* @REDISMODULE_OK, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %90, %70, %56, %15
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i64 @RedisModule_KeyType(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32* @RedisModule_ListPop(i32*, i32) #1

declare dso_local i32 @RedisModule_ListPush(i32*, i32, i32*) #1

declare dso_local i64 @RedisModule_ValueLength(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
