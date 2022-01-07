; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleLoad.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8*, i64 }

@REDISMODULE_CTX_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@RTLD_NOW = common dso_local global i32 0, align 4
@RTLD_LOCAL = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Module %s failed to load: %s\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"RedisModule_OnLoad\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Module %s does not export RedisModule_OnLoad() symbol. Module not loaded.\00", align 1
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Module %s initialization failed. Module not loaded\00", align 1
@modules = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Module '%s' loaded from %s\00", align 1
@REDISMODULE_EVENT_MODULE_CHANGE = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_MODULE_LOADED = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moduleLoad(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i8**, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_10__* @REDISMODULE_CTX_INIT to i8*), i64 8, i1 false)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @RTLD_NOW, align 4
  %14 = load i32, i32* @RTLD_LOCAL, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @dlopen(i8* %12, i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* (...) @dlerror()
  %23 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load i32, i32* @C_ERR, align 4
  store i32 %24, i32* %4, align 4
  br label %100

25:                                               ; preds = %3
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @dlsym(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i32 (i8*, i8**, i32)*
  store i32 (i8*, i8**, i32)* %28, i32 (i8*, i8**, i32)** %8, align 8
  %29 = load i32 (i8*, i8**, i32)*, i32 (i8*, i8**, i32)** %8, align 8
  %30 = icmp eq i32 (i8*, i8**, i32)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @dlclose(i8* %32)
  %34 = load i32, i32* @LL_WARNING, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %34, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @C_ERR, align 4
  store i32 %37, i32* %4, align 4
  br label %100

38:                                               ; preds = %25
  %39 = load i32 (i8*, i8**, i32)*, i32 (i8*, i8**, i32)** %8, align 8
  %40 = bitcast %struct.TYPE_10__* %10 to i8*
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 %39(i8* %40, i8** %41, i32 %42)
  %44 = load i32, i32* @REDISMODULE_ERR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @moduleUnregisterCommands(%struct.TYPE_11__* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = call i32 @moduleUnregisterSharedAPI(%struct.TYPE_11__* %55)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = call i32 @moduleUnregisterUsedAPI(%struct.TYPE_11__* %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = call i32 @moduleFreeModuleStructure(%struct.TYPE_11__* %61)
  br label %63

63:                                               ; preds = %50, %46
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @dlclose(i8* %64)
  %66 = load i32, i32* @LL_WARNING, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @C_ERR, align 4
  store i32 %69, i32* %4, align 4
  br label %100

70:                                               ; preds = %38
  %71 = load i32, i32* @modules, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = call i32 @dictAdd(i32 %71, i8* %75, %struct.TYPE_11__* %77)
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @LL_NOTICE, align 4
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %90, i8* %91)
  %93 = load i32, i32* @REDISMODULE_EVENT_MODULE_CHANGE, align 4
  %94 = load i32, i32* @REDISMODULE_SUBEVENT_MODULE_LOADED, align 4
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = call i32 @moduleFireServerEvent(i32 %93, i32 %94, %struct.TYPE_11__* %96)
  %98 = call i32 @moduleFreeContext(%struct.TYPE_10__* %10)
  %99 = load i32, i32* @C_OK, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %70, %63, %31, %19
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @dlopen(i8*, i32) #2

declare dso_local i32 @serverLog(i32, i8*, i8*, ...) #2

declare dso_local i8* @dlerror(...) #2

declare dso_local i64 @dlsym(i8*, i8*) #2

declare dso_local i32 @dlclose(i8*) #2

declare dso_local i32 @moduleUnregisterCommands(%struct.TYPE_11__*) #2

declare dso_local i32 @moduleUnregisterSharedAPI(%struct.TYPE_11__*) #2

declare dso_local i32 @moduleUnregisterUsedAPI(%struct.TYPE_11__*) #2

declare dso_local i32 @moduleFreeModuleStructure(%struct.TYPE_11__*) #2

declare dso_local i32 @dictAdd(i32, i8*, %struct.TYPE_11__*) #2

declare dso_local i32 @moduleFireServerEvent(i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @moduleFreeContext(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
