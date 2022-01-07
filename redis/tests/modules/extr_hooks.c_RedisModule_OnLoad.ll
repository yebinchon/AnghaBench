; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_RedisModule_OnLoad.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_RedisModule_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"testhook\00", align 1
@REDISMODULE_APIVER_1 = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@RedisModuleEvent_ReplicationRoleChanged = common dso_local global i32 0, align 4
@roleChangeCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_ReplicaChange = common dso_local global i32 0, align 4
@replicationChangeCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_MasterLinkChange = common dso_local global i32 0, align 4
@rasterLinkChangeCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_Persistence = common dso_local global i32 0, align 4
@persistenceCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_Loading = common dso_local global i32 0, align 4
@loadingCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_LoadingProgress = common dso_local global i32 0, align 4
@loadingProgressCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_ClientChange = common dso_local global i32 0, align 4
@clientChangeCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_FlushDB = common dso_local global i32 0, align 4
@flushdbCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_Shutdown = common dso_local global i32 0, align 4
@shutdownCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_CronLoop = common dso_local global i32 0, align 4
@cronLoopCallback = common dso_local global i32 0, align 4
@RedisModuleEvent_ModuleChange = common dso_local global i32 0, align 4
@moduleChangeCallback = common dso_local global i32 0, align 4
@event_log = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"hooks.event_count\00", align 1
@cmdEventCount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"hooks.event_last\00", align 1
@cmdEventLast = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"hooks.clear\00", align 1
@cmdEventsClear = common dso_local global i32 0, align 4
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
  %15 = call i64 @RedisModule_Init(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1, i32 %14)
  %16 = load i64, i64* @REDISMODULE_ERR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* @REDISMODULE_ERR, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %96

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @RedisModuleEvent_ReplicationRoleChanged, align 4
  %24 = load i32, i32* @roleChangeCallback, align 4
  %25 = call i32 @RedisModule_SubscribeToServerEvent(i32* %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @RedisModuleEvent_ReplicaChange, align 4
  %28 = load i32, i32* @replicationChangeCallback, align 4
  %29 = call i32 @RedisModule_SubscribeToServerEvent(i32* %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @RedisModuleEvent_MasterLinkChange, align 4
  %32 = load i32, i32* @rasterLinkChangeCallback, align 4
  %33 = call i32 @RedisModule_SubscribeToServerEvent(i32* %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @RedisModuleEvent_Persistence, align 4
  %36 = load i32, i32* @persistenceCallback, align 4
  %37 = call i32 @RedisModule_SubscribeToServerEvent(i32* %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @RedisModuleEvent_Loading, align 4
  %40 = load i32, i32* @loadingCallback, align 4
  %41 = call i32 @RedisModule_SubscribeToServerEvent(i32* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @RedisModuleEvent_LoadingProgress, align 4
  %44 = load i32, i32* @loadingProgressCallback, align 4
  %45 = call i32 @RedisModule_SubscribeToServerEvent(i32* %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @RedisModuleEvent_ClientChange, align 4
  %48 = load i32, i32* @clientChangeCallback, align 4
  %49 = call i32 @RedisModule_SubscribeToServerEvent(i32* %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @RedisModuleEvent_FlushDB, align 4
  %52 = load i32, i32* @flushdbCallback, align 4
  %53 = call i32 @RedisModule_SubscribeToServerEvent(i32* %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @RedisModuleEvent_Shutdown, align 4
  %56 = load i32, i32* @shutdownCallback, align 4
  %57 = call i32 @RedisModule_SubscribeToServerEvent(i32* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @RedisModuleEvent_CronLoop, align 4
  %60 = load i32, i32* @cronLoopCallback, align 4
  %61 = call i32 @RedisModule_SubscribeToServerEvent(i32* %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @RedisModuleEvent_ModuleChange, align 4
  %64 = load i32, i32* @moduleChangeCallback, align 4
  %65 = call i32 @RedisModule_SubscribeToServerEvent(i32* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @RedisModule_CreateDict(i32* %66)
  store i32 %67, i32* @event_log, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @cmdEventCount, align 4
  %70 = call i64 @RedisModule_CreateCommand(i32* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %71 = load i64, i64* @REDISMODULE_ERR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %21
  %74 = load i64, i64* @REDISMODULE_ERR, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %96

76:                                               ; preds = %21
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @cmdEventLast, align 4
  %79 = call i64 @RedisModule_CreateCommand(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %80 = load i64, i64* @REDISMODULE_ERR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* @REDISMODULE_ERR, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @cmdEventsClear, align 4
  %88 = call i64 @RedisModule_CreateCommand(i32* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %89 = load i64, i64* @REDISMODULE_ERR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i64, i64* @REDISMODULE_ERR, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %91, %82, %73, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i64 @RedisModule_Init(i32*, i8*, i32, i32) #1

declare dso_local i32 @RedisModule_SubscribeToServerEvent(i32*, i32, i32) #1

declare dso_local i32 @RedisModule_CreateDict(i32*) #1

declare dso_local i64 @RedisModule_CreateCommand(i32*, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
