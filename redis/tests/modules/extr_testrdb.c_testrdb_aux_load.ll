; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_aux_load.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_aux_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conf_aux_count = common dso_local global i32 0, align 4
@REDISMODULE_AUX_AFTER_RDB = common dso_local global i32 0, align 4
@REDISMODULE_AUX_BEFORE_RDB = common dso_local global i32 0, align 4
@before_str = common dso_local global i32* null, align 8
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@after_str = common dso_local global i32* null, align 8
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testrdb_aux_load(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @conf_aux_count, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @REDISMODULE_AUX_AFTER_RDB, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @conf_aux_count, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @assert(i32 0)
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @RedisModule_GetContextFromIO(i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @REDISMODULE_AUX_BEFORE_RDB, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load i32*, i32** @before_str, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** @before_str, align 8
  %40 = call i32 @RedisModule_FreeString(i32* %38, i32* %39)
  br label %41

41:                                               ; preds = %37, %34
  store i32* null, i32** @before_str, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @RedisModule_LoadSigned(i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @RedisModule_IsIOError(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %48, i32* %4, align 4
  br label %86

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = call i32* @RedisModule_LoadString(i32* %53)
  store i32* %54, i32** @before_str, align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %78

56:                                               ; preds = %28
  %57 = load i32*, i32** @after_str, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** @after_str, align 8
  %62 = call i32 @RedisModule_FreeString(i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %56
  store i32* null, i32** @after_str, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @RedisModule_LoadSigned(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @RedisModule_IsIOError(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %70, i32* %4, align 4
  br label %86

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %5, align 8
  %76 = call i32* @RedisModule_LoadString(i32* %75)
  store i32* %76, i32** @after_str, align 8
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @RedisModule_IsIOError(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %82, %69, %47
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @RedisModule_GetContextFromIO(i32*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i32 @RedisModule_LoadSigned(i32*) #1

declare dso_local i64 @RedisModule_IsIOError(i32*) #1

declare dso_local i32* @RedisModule_LoadString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
