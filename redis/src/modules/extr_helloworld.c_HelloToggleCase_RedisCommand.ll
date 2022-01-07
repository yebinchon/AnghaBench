; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloToggleCase_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloToggleCase_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_STRING = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i32 0, align 4
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloToggleCase_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RedisModule_WrongArity(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %92

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
  %30 = load i32, i32* @REDISMODULE_KEYTYPE_STRING, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @RedisModule_CloseKey(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @REDISMODULE_ERRORMSG_WRONGTYPE, align 4
  %41 = call i32 @RedisModule_ReplyWithError(i32* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %92

42:                                               ; preds = %32, %18
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @REDISMODULE_KEYTYPE_STRING, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @REDISMODULE_WRITE, align 4
  %49 = call i8* @RedisModule_StringDMA(i32* %47, i64* %10, i32 %48)
  store i8* %49, i8** %12, align 8
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %80, %46
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i8*, i8** %12, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isupper(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call signext i8 @tolower(i8 signext %65)
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 %66, i8* %69, align 1
  br label %79

70:                                               ; preds = %54
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call signext i8 @toupper(i8 signext %74)
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 %75, i8* %78, align 1
  br label %79

79:                                               ; preds = %70, %61
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %50

83:                                               ; preds = %50
  br label %84

84:                                               ; preds = %83, %42
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @RedisModule_CloseKey(i32* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @RedisModule_ReplyWithSimpleString(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @RedisModule_ReplicateVerbatim(i32* %89)
  %91 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %84, %36, %15
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i32 @RedisModule_KeyType(i32*) #1

declare dso_local i32 @RedisModule_CloseKey(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i32) #1

declare dso_local i8* @RedisModule_StringDMA(i32*, i64*, i32) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

declare dso_local i32 @RedisModule_ReplicateVerbatim(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
