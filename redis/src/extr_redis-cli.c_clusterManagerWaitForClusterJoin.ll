; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerWaitForClusterJoin.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerWaitForClusterJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Waiting for the cluster to join\0A\00", align 1
@CLUSTER_JOIN_CHECK_AFTER = common dso_local global i32 0, align 4
@cluster_manager = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Warning: %d node(s) may be unreachable\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c" - The port %d of node %s may be unreachable from:\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c" - Node %s may be unreachable from:\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [128 x i8] c"Cluster bus ports must be reachable by every node.\0ARemember that cluster bus ports are different from standard instance ports.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clusterManagerWaitForClusterJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clusterManagerWaitForClusterJoin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %15 = load i32, i32* @CLUSTER_JOIN_CHECK_AFTER, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cluster_manager, i32 0, i32 0), align 4
  %17 = call float @listLength(i32 %16)
  %18 = fmul float %17, 0x3FC3333340000000
  %19 = fptosi float %18 to i32
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %104, %0
  %22 = call i32 (...) @clusterManagerIsConfigConsistent()
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %105

25:                                               ; preds = %21
  %26 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fflush(i32 %27)
  %29 = call i32 @sleep(i32 1)
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %104

34:                                               ; preds = %25
  %35 = call i32* (...) @clusterManagerGetLinkStatus()
  store i32* %35, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %91

38:                                               ; preds = %34
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @dictSize(i32* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %38
  %43 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @dictSize(i32* %44)
  %46 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @dictGetIterator(i32* %47)
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %86, %42
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @dictNext(i32* %50)
  store i32* %51, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @dictGetKey(i32* %54)
  store i32 %55, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @dictGetVal(i32* %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @parseClusterNodeAddress(i32 %59, i8** %7, i32* %8, i32* %9)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %66, i8* %67)
  br label %72

69:                                               ; preds = %62, %53
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @listRewind(i32* %73, i32* %11)
  br label %75

75:                                               ; preds = %78, %72
  %76 = call %struct.TYPE_4__* @listNext(i32* %11)
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %12, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @sdsfree(i32 %84)
  br label %75

86:                                               ; preds = %75
  %87 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @listEmpty(i32* %88)
  br label %49

90:                                               ; preds = %49
  br label %91

91:                                               ; preds = %90, %38, %34
  %92 = load i32*, i32** %4, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @dictReleaseIterator(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32*, i32** %3, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @dictRelease(i32* %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %1, align 4
  br label %104

104:                                              ; preds = %103, %25
  br label %21

105:                                              ; preds = %21
  %106 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local float @listLength(i32) #1

declare dso_local i32 @clusterManagerIsConfigConsistent(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32* @clusterManagerGetLinkStatus(...) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, ...) #1

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i64 @dictGetVal(i32*) #1

declare dso_local i64 @parseClusterNodeAddress(i32, i8**, i32*, i32*) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @listNext(i32*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @listEmpty(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @dictRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
