; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_misc.c_RedisModule_OnLoad.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_misc.c_RedisModule_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@REDISMODULE_APIVER_1 = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"test.call_generic\00", align 1
@test_call_generic = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"test.call_info\00", align 1
@test_call_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"test.flushall\00", align 1
@test_flushall = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"test.dbsize\00", align 1
@test_dbsize = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"test.randomkey\00", align 1
@test_randomkey = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"test.setlru\00", align 1
@test_setlru = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"test.getlru\00", align 1
@test_getlru = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RedisModule_OnLoad(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32**, i32*** %6, align 8
  %9 = ptrtoint i32** %8 to i32
  %10 = call i32 @REDISMODULE_NOT_USED(i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @REDISMODULE_NOT_USED(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @REDISMODULE_APIVER_1, align 4
  %15 = call i64 @RedisModule_Init(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i32 %14)
  %16 = load i64, i64* @REDISMODULE_ERR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* @REDISMODULE_ERR, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %86

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @test_call_generic, align 4
  %24 = call i64 @RedisModule_CreateCommand(i32* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %25 = load i64, i64* @REDISMODULE_ERR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i64, i64* @REDISMODULE_ERR, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %86

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @test_call_info, align 4
  %33 = call i64 @RedisModule_CreateCommand(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %34 = load i64, i64* @REDISMODULE_ERR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @REDISMODULE_ERR, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %86

39:                                               ; preds = %30
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @test_flushall, align 4
  %42 = call i64 @RedisModule_CreateCommand(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %43 = load i64, i64* @REDISMODULE_ERR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* @REDISMODULE_ERR, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %86

48:                                               ; preds = %39
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @test_dbsize, align 4
  %51 = call i64 @RedisModule_CreateCommand(i32* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %52 = load i64, i64* @REDISMODULE_ERR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, i64* @REDISMODULE_ERR, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %86

57:                                               ; preds = %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @test_randomkey, align 4
  %60 = call i64 @RedisModule_CreateCommand(i32* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %61 = load i64, i64* @REDISMODULE_ERR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i64, i64* @REDISMODULE_ERR, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %86

66:                                               ; preds = %57
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @test_setlru, align 4
  %69 = call i64 @RedisModule_CreateCommand(i32* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %70 = load i64, i64* @REDISMODULE_ERR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i64, i64* @REDISMODULE_ERR, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %86

75:                                               ; preds = %66
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @test_getlru, align 4
  %78 = call i64 @RedisModule_CreateCommand(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %79 = load i64, i64* @REDISMODULE_ERR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i64, i64* @REDISMODULE_ERR, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %81, %72, %63, %54, %45, %36, %27, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i64 @RedisModule_Init(i32*, i8*, i32, i32) #1

declare dso_local i64 @RedisModule_CreateCommand(i32*, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
