; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_commandfilter.c_RedisModule_OnLoad.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_commandfilter.c_RedisModule_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"commandfilter\00", align 1
@REDISMODULE_APIVER_1 = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Log key name not specified\00", align 1
@log_key_name = common dso_local global i32 0, align 4
@log_command_name = common dso_local global i32 0, align 4
@CommandFilter_LogCommand = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"write deny-oom\00", align 1
@ping_command_name = common dso_local global i32 0, align 4
@CommandFilter_PingCommand = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"deny-oom\00", align 1
@unregister_command_name = common dso_local global i32 0, align 4
@CommandFilter_UnregisterCommand = common dso_local global i32 0, align 4
@CommandFilter_CommandFilter = common dso_local global i32 0, align 4
@REDISMODULE_CMDFILTER_NOSELF = common dso_local global i32 0, align 4
@filter = common dso_local global i32* null, align 8
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RedisModule_OnLoad(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @REDISMODULE_APIVER_1, align 4
  %11 = call i64 @RedisModule_Init(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1, i32 %10)
  %12 = load i64, i64* @REDISMODULE_ERR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* @REDISMODULE_ERR, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %81

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @RedisModule_Log(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i64, i64* @REDISMODULE_ERR, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @RedisModule_CreateStringFromString(i32* %26, i32* %29)
  store i32 %30, i32* @log_key_name, align 4
  %31 = load i32**, i32*** %6, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @RedisModule_StringToLongLong(i32* %33, i64* %8)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @log_command_name, align 4
  %37 = load i32, i32* @CommandFilter_LogCommand, align 4
  %38 = call i64 @RedisModule_CreateCommand(i32* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1, i32 1)
  %39 = load i64, i64* @REDISMODULE_ERR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i64, i64* @REDISMODULE_ERR, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %81

44:                                               ; preds = %25
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @ping_command_name, align 4
  %47 = load i32, i32* @CommandFilter_PingCommand, align 4
  %48 = call i64 @RedisModule_CreateCommand(i32* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1, i32 1)
  %49 = load i64, i64* @REDISMODULE_ERR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i64, i64* @REDISMODULE_ERR, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %81

54:                                               ; preds = %44
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @unregister_command_name, align 4
  %57 = load i32, i32* @CommandFilter_UnregisterCommand, align 4
  %58 = call i64 @RedisModule_CreateCommand(i32* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1, i32 1)
  %59 = load i64, i64* @REDISMODULE_ERR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i64, i64* @REDISMODULE_ERR, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %81

64:                                               ; preds = %54
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @CommandFilter_CommandFilter, align 4
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @REDISMODULE_CMDFILTER_NOSELF, align 4
  br label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = call i32* @RedisModule_RegisterCommandFilter(i32* %65, i32 %66, i32 %73)
  store i32* %74, i32** @filter, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i64, i64* @REDISMODULE_ERR, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %76, %61, %51, %41, %20, %14
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @RedisModule_Init(i32*, i8*, i32, i32) #1

declare dso_local i32 @RedisModule_Log(i32*, i8*, i8*) #1

declare dso_local i32 @RedisModule_CreateStringFromString(i32*, i32*) #1

declare dso_local i32 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i64 @RedisModule_CreateCommand(i32*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32* @RedisModule_RegisterCommandFilter(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
