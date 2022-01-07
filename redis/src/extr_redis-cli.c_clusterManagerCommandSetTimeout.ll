; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandSetTimeout.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandSetTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Setting a node timeout of less than 100 milliseconds is a bad idea.\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c">>> Reconfiguring node timeout in every cluster node...\0A\00", align 1
@cluster_manager = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CONFIG %s %s %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cluster-node-timeout\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CONFIG %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"REWRITE\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"*** New timeout set for %s:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"ERR setting node-timeot for %s:%d: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c">>> New node timeout set. %d OK, %d ERR.\0A\00", align 1
@CLUSTER_MANAGER_INVALID_HOST_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clusterManagerCommandSetTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerCommandSetTimeout(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @UNUSED(i32 %19)
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getClusterHostFromCmdArgs(i32 1, i8** %21, i8** %7, i32* %6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %120

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %124

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.TYPE_10__* @clusterManagerNewNode(i8* %36, i32 %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = call i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_10__* %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %124

43:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %44 = call i32 (i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cluster_manager, i32 0, i32 0), align 4
  %46 = call i32 @listRewind(i32 %45, i32* %12)
  br label %47

47:                                               ; preds = %113, %84, %43
  %48 = call %struct.TYPE_9__* @listNext(i32* %12)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %13, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %116

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %14, align 8
  store i8* null, i8** %15, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32* (%struct.TYPE_10__*, i8*, i8*, ...) @CLUSTER_MANAGER_COMMAND(%struct.TYPE_10__* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32* %56, i32** %16, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %94

60:                                               ; preds = %50
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_10__* %61, i32* %62, i8** %15)
  store i32 %63, i32* %17, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @freeReplyObject(i32* %64)
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %94

69:                                               ; preds = %60
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %71 = call i32* (%struct.TYPE_10__*, i8*, i8*, ...) @CLUSTER_MANAGER_COMMAND(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32* %71, i32** %16, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %94

75:                                               ; preds = %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_10__* %76, i32* %77, i8** %15)
  store i32 %78, i32* %17, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @freeReplyObject(i32* %79)
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %94

84:                                               ; preds = %75
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clusterManagerLogWarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %87, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %47

94:                                               ; preds = %83, %74, %68, %59
  store i32 0, i32* %18, align 4
  %95 = load i8*, i8** %15, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %15, align 8
  br label %99

98:                                               ; preds = %94
  store i32 1, i32* %18, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @clusterManagerLogErr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 %105, i8* %106)
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 @zfree(i8* %111)
  br label %113

113:                                              ; preds = %110, %99
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %47

116:                                              ; preds = %47
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %117, i32 %118)
  store i32 1, i32* %3, align 4
  br label %124

120:                                              ; preds = %24
  %121 = load i32, i32* @stderr, align 4
  %122 = load i8*, i8** @CLUSTER_MANAGER_INVALID_HOST_ARG, align 8
  %123 = call i32 @fprintf(i32 %121, i8* %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %116, %42, %32
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @getClusterHostFromCmdArgs(i32, i8**, i8**, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.TYPE_10__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @clusterManagerLogInfo(i8*, ...) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @listNext(i32*) #1

declare dso_local i32* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_10__*, i8*, i8*, ...) #1

declare dso_local i32 @clusterManagerCheckRedisReply(%struct.TYPE_10__*, i32*, i8**) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32 @clusterManagerLogWarn(i8*, i32, i32) #1

declare dso_local i32 @clusterManagerLogErr(i8*, i32, i32, i8*) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
