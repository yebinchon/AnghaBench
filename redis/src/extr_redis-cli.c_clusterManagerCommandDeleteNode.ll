; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandDeleteNode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandDeleteNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i8*, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@.str = private unnamed_addr constant [41 x i8] c">>> Removing node %s from cluster %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[ERR] No such node ID %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"[ERR] Node %s:%d is not empty! Reshard data away and try again.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c">>> Sending CLUSTER FORGET messages to the cluster...\0A\00", align 1
@cluster_manager = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c">>> %s:%d as replica of %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CLUSTER REPLICATE %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"CLUSTER FORGET %s\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c">>> Sending CLUSTER RESET SOFT to the deleted node.\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CLUSTER RESET %s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"SOFT\00", align 1
@stderr = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_INVALID_HOST_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clusterManagerCommandDeleteNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerCommandDeleteNode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @UNUSED(i32 %19)
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getClusterHostFromCmdArgs(i32 1, i8** %21, i8** %8, i32* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %160

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30, i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_12__* @clusterManagerNewNode(i8* %33, i32 %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = call i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_12__* %36, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %164

40:                                               ; preds = %25
  %41 = load i8*, i8** %9, align 8
  %42 = call %struct.TYPE_12__* @clusterManagerNodeByName(i8* %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %11, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = icmp eq %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i8*, i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 0, i32* %3, align 4
  br label %164

48:                                               ; preds = %40
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %61)
  store i32 0, i32* %3, align 4
  br label %164

63:                                               ; preds = %48
  %64 = call i32 (i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cluster_manager, i32 0, i32 0), align 4
  %66 = call i32 @listRewind(i32 %65, i32* %12)
  br label %67

67:                                               ; preds = %143, %77, %63
  %68 = call %struct.TYPE_11__* @listNext(i32* %12)
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %13, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %144

70:                                               ; preds = %67
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %14, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = icmp eq %struct.TYPE_12__* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %67

78:                                               ; preds = %70
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %127

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @strcasecmp(i64 %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %127, label %90

90:                                               ; preds = %83
  %91 = call %struct.TYPE_12__* (...) @clusterManagerNodeWithLeastReplicas()
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %15, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_12__* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  store i32* %113, i32** %16, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_12__* %114, i32* %115, i32* null)
  store i32 %116, i32* %6, align 4
  %117 = load i32*, i32** %16, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %90
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @freeReplyObject(i32* %120)
  br label %122

122:                                              ; preds = %119, %90
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %164

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %83, %78
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i32* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_12__* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %129)
  store i32* %130, i32** %17, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %132 = load i32*, i32** %17, align 8
  %133 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_12__* %131, i32* %132, i32* null)
  store i32 %133, i32* %6, align 4
  %134 = load i32*, i32** %17, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32*, i32** %17, align 8
  %138 = call i32 @freeReplyObject(i32* %137)
  br label %139

139:                                              ; preds = %136, %127
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %164

143:                                              ; preds = %139
  br label %67

144:                                              ; preds = %67
  %145 = call i32 (i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32* @redisCommand(i32 %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32* %149, i32** %18, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_12__* %150, i32* %151, i32* null)
  store i32 %152, i32* %6, align 4
  %153 = load i32*, i32** %18, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %144
  %156 = load i32*, i32** %18, align 8
  %157 = call i32 @freeReplyObject(i32* %156)
  br label %158

158:                                              ; preds = %155, %144
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %164

160:                                              ; preds = %24
  %161 = load i32, i32* @stderr, align 4
  %162 = load i8*, i8** @CLUSTER_MANAGER_INVALID_HOST_ARG, align 8
  %163 = call i32 @fprintf(i32 %161, i8* %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %158, %142, %125, %53, %45, %39
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @getClusterHostFromCmdArgs(i32, i8**, i8**, i32*) #1

declare dso_local i32 @clusterManagerLogInfo(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @clusterManagerNodeByName(i8*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, i8*, ...) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_11__* @listNext(i32*) #1

declare dso_local i32 @strcasecmp(i64, i8*) #1

declare dso_local %struct.TYPE_12__* @clusterManagerNodeWithLeastReplicas(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @clusterManagerCheckRedisReply(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32* @redisCommand(i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
