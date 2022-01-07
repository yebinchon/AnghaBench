; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloZsumRange_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloZsumRange_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ERR invalid range\00", align 1
@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_ZSET = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloZsumRange_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @RedisModule_WrongArity(i32* %20)
  store i32 %21, i32* %4, align 4
  br label %115

22:                                               ; preds = %3
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @RedisModule_StringToDouble(i32* %25, double* %8)
  %27 = load i64, i64* @REDISMODULE_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @RedisModule_StringToDouble(i32* %32, double* %9)
  %34 = load i64, i64* @REDISMODULE_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %22
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @RedisModule_ReplyWithError(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %115

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = load i32**, i32*** %6, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @REDISMODULE_READ, align 4
  %45 = load i32, i32* @REDISMODULE_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = call i32* @RedisModule_OpenKey(i32* %40, i32* %43, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @RedisModule_KeyType(i32* %48)
  %50 = load i64, i64* @REDISMODULE_KEYTYPE_ZSET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** @REDISMODULE_ERRORMSG_WRONGTYPE, align 8
  %55 = call i32 @RedisModule_ReplyWithError(i32* %53, i8* %54)
  store i32 %55, i32* %4, align 4
  br label %115

56:                                               ; preds = %39
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load double, double* %8, align 8
  %59 = load double, double* %9, align 8
  %60 = call i32 @RedisModule_ZsetFirstInScoreRange(i32* %57, double %58, double %59, i32 0, i32 0)
  br label %61

61:                                               ; preds = %66, %56
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @RedisModule_ZsetRangeEndReached(i32* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32*, i32** %10, align 8
  %68 = call i32* @RedisModule_ZsetRangeCurrentElement(i32* %67, double* %13)
  store i32* %68, i32** %14, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @RedisModule_FreeString(i32* %69, i32* %70)
  %72 = load double, double* %13, align 8
  %73 = load double, double* %11, align 8
  %74 = fadd double %73, %72
  store double %74, double* %11, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @RedisModule_ZsetRangeNext(i32* %75)
  br label %61

77:                                               ; preds = %61
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @RedisModule_ZsetRangeStop(i32* %78)
  %80 = load i32*, i32** %10, align 8
  %81 = load double, double* %8, align 8
  %82 = load double, double* %9, align 8
  %83 = call i32 @RedisModule_ZsetLastInScoreRange(i32* %80, double %81, double %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %89, %77
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @RedisModule_ZsetRangeEndReached(i32* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load i32*, i32** %10, align 8
  %91 = call i32* @RedisModule_ZsetRangeCurrentElement(i32* %90, double* %15)
  store i32* %91, i32** %16, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @RedisModule_FreeString(i32* %92, i32* %93)
  %95 = load double, double* %15, align 8
  %96 = load double, double* %12, align 8
  %97 = fadd double %96, %95
  store double %97, double* %12, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @RedisModule_ZsetRangePrev(i32* %98)
  br label %84

100:                                              ; preds = %84
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @RedisModule_ZsetRangeStop(i32* %101)
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @RedisModule_CloseKey(i32* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @RedisModule_ReplyWithArray(i32* %105, i32 2)
  %107 = load i32*, i32** %5, align 8
  %108 = load double, double* %11, align 8
  %109 = call i32 @RedisModule_ReplyWithDouble(i32* %107, double %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load double, double* %12, align 8
  %112 = call i32 @RedisModule_ReplyWithDouble(i32* %110, double %111)
  %113 = load i64, i64* @REDISMODULE_OK, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %100, %52, %36, %19
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToDouble(i32*, double*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i64 @RedisModule_KeyType(i32*) #1

declare dso_local i32 @RedisModule_ZsetFirstInScoreRange(i32*, double, double, i32, i32) #1

declare dso_local i32 @RedisModule_ZsetRangeEndReached(i32*) #1

declare dso_local i32* @RedisModule_ZsetRangeCurrentElement(i32*, double*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i32 @RedisModule_ZsetRangeNext(i32*) #1

declare dso_local i32 @RedisModule_ZsetRangeStop(i32*) #1

declare dso_local i32 @RedisModule_ZsetLastInScoreRange(i32*, double, double, i32, i32) #1

declare dso_local i32 @RedisModule_ZsetRangePrev(i32*) #1

declare dso_local i32 @RedisModule_CloseKey(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i32) #1

declare dso_local i32 @RedisModule_ReplyWithDouble(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
