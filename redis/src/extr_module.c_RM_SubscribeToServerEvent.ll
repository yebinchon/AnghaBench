; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_SubscribeToServerEvent.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_SubscribeToServerEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_14__, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@REDISMODULE_ERR = common dso_local global i32 0, align 4
@RedisModule_EventListeners = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_SubscribeToServerEvent(%struct.TYPE_15__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load i32, i32* @RedisModule_EventListeners, align 4
  %20 = call i32 @listRewind(i32 %19, i32* %9)
  br label %21

21:                                               ; preds = %44, %18
  %22 = call %struct.TYPE_12__* @listNext(i32* %9)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %8, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %45

44:                                               ; preds = %35, %24
  br label %21

45:                                               ; preds = %43, %21
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32*, i32** %7, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @RedisModule_EventListeners, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = call i32 @listDelNode(i32 %52, %struct.TYPE_12__* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = call i32 @zfree(%struct.TYPE_13__* %55)
  br label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %81

63:                                               ; preds = %45
  %64 = call %struct.TYPE_13__* @zmalloc(i32 24)
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %8, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = bitcast %struct.TYPE_14__* %71 to i8*
  %73 = bitcast %struct.TYPE_14__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 8
  %77 = load i32, i32* @RedisModule_EventListeners, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = call i32 @listAddNodeTail(i32 %77, %struct.TYPE_13__* %78)
  %80 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %63, %61, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @listNext(i32*) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @zfree(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
