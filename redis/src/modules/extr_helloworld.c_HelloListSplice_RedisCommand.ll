; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloListSplice_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloListSplice_RedisCommand.c"
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
define dso_local i32 @HelloListSplice_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
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
  br label %111

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
  %27 = load i32*, i32** %5, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @REDISMODULE_READ, align 4
  %32 = load i32, i32* @REDISMODULE_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32* @RedisModule_OpenKey(i32* %27, i32* %30, i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @RedisModule_KeyType(i32* %35)
  %37 = load i64, i64* @REDISMODULE_KEYTYPE_LIST, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %18
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @RedisModule_KeyType(i32* %40)
  %42 = load i64, i64* @REDISMODULE_KEYTYPE_EMPTY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %39, %18
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @RedisModule_KeyType(i32* %45)
  %47 = load i64, i64* @REDISMODULE_KEYTYPE_LIST, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @RedisModule_KeyType(i32* %50)
  %52 = load i64, i64* @REDISMODULE_KEYTYPE_EMPTY, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49, %39
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @RedisModule_CloseKey(i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @RedisModule_CloseKey(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** @REDISMODULE_ERRORMSG_WRONGTYPE, align 8
  %61 = call i32 @RedisModule_ReplyWithError(i32* %59, i8* %60)
  store i32 %61, i32* %4, align 4
  br label %111

62:                                               ; preds = %49, %44
  %63 = load i32**, i32*** %6, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @RedisModule_StringToLongLong(i32* %65, i64* %10)
  %67 = load i64, i64* @REDISMODULE_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %10, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69, %62
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @RedisModule_CloseKey(i32* %73)
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @RedisModule_CloseKey(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @RedisModule_ReplyWithError(i32* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %4, align 4
  br label %111

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %10, align 8
  %83 = icmp sgt i64 %81, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @REDISMODULE_LIST_TAIL, align 4
  %87 = call i32* @RedisModule_ListPop(i32* %85, i32 %86)
  store i32* %87, i32** %11, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %99

91:                                               ; preds = %84
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* @REDISMODULE_LIST_HEAD, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @RedisModule_ListPush(i32* %92, i32 %93, i32* %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @RedisModule_FreeString(i32* %96, i32* %97)
  br label %80

99:                                               ; preds = %90, %80
  %100 = load i32*, i32** %8, align 8
  %101 = call i64 @RedisModule_ValueLength(i32* %100)
  store i64 %101, i64* %12, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @RedisModule_CloseKey(i32* %102)
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @RedisModule_CloseKey(i32* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @RedisModule_ReplyWithLongLong(i32* %106, i64 %107)
  %109 = load i64, i64* @REDISMODULE_OK, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %99, %72, %54, %15
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i64 @RedisModule_KeyType(i32*) #1

declare dso_local i32 @RedisModule_CloseKey(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32* @RedisModule_ListPop(i32*, i32) #1

declare dso_local i32 @RedisModule_ListPush(i32*, i32, i32*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i64 @RedisModule_ValueLength(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
