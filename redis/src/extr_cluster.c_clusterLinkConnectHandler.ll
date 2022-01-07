; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterLinkConnectHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterLinkConnectHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }

@CONN_STATE_CONNECTED = common dso_local global i64 0, align 8
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Connection with Node %.40s at %s:%d failed: %s\00", align 1
@clusterReadHandler = common dso_local global i32 0, align 4
@CLUSTER_NODE_MEET = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_MEET = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_PING = common dso_local global i32 0, align 4
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Connecting with Node %.40s at %s:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterLinkConnectHandler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_7__* @connGetPrivateData(i32* %6)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @connGetState(i32* %11)
  %13 = load i64, i64* @CONN_STATE_CONNECTED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @LL_VERBOSE, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @connGetLastError(i32* %26)
  %28 = call i32 (i32, i8*, i32, i32, i32, ...) @serverLog(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call i32 @freeClusterLink(%struct.TYPE_7__* %29)
  br label %76

31:                                               ; preds = %1
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @clusterReadHandler, align 4
  %34 = call i32 @connSetReadHandler(i32* %32, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %5, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CLUSTER_NODE_MEET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* @CLUSTERMSG_TYPE_MEET, align 4
  br label %49

47:                                               ; preds = %31
  %48 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @clusterSendPing(%struct.TYPE_7__* %38, i32 %50)
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* @CLUSTER_NODE_MEET, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @LL_DEBUG, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, i32, i32, i32, ...) @serverLog(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %58, %15
  ret void
}

declare dso_local %struct.TYPE_7__* @connGetPrivateData(i32*) #1

declare dso_local i64 @connGetState(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @connGetLastError(i32*) #1

declare dso_local i32 @freeClusterLink(%struct.TYPE_7__*) #1

declare dso_local i32 @connSetReadHandler(i32*, i32) #1

declare dso_local i32 @clusterSendPing(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
