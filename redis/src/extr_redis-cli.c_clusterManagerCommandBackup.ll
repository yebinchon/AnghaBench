; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandBackup.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandBackup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@cluster_manager = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c">>> Node %s:%d -> Saving RDB...\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"nodes.json\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Saving cluster configuration to: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Could not save nodes to: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [104 x i8] c"*** Cluster seems to have some problems, please be aware of it if you're going to restore this backup.\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"[OK] Backup created into: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"[ERR] Failed to back cluster!\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_INVALID_HOST_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clusterManagerCommandBackup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerCommandBackup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @UNUSED(i32 %20)
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getClusterHostFromCmdArgs(i32 1, i8** %22, i8** %8, i32* %7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %147

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_13__* @clusterManagerNewNode(i8* %27, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %9, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = call i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_13__* %30, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %151

34:                                               ; preds = %26
  %35 = call i32 @clusterManagerCheckCluster(i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cluster_manager, i32 0, i32 1), align 4
  %41 = call i32 @listLength(i32 %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi i32 [ 0, %38 ], [ %41, %39 ]
  store i32 %43, i32* %11, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0, i32 0), align 8
  %47 = call i8* @sdsnew(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %47, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cluster_manager, i32 0, i32 0), align 4
  %49 = call i32 @listRewind(i32 %48, i32* %14)
  br label %50

50:                                               ; preds = %77, %76, %42
  %51 = call %struct.TYPE_12__* @listNext(i32* %14)
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %15, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %91

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = call i8* @sdscat(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %16, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i8* @clusterManagerNodeGetJSON(%struct.TYPE_13__* %64, i32 %65)
  store i8* %66, i8** %17, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = call i8* @sdscat(i8* %67, i8* %68)
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = call i32 @sdsfree(i8* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %50

77:                                               ; preds = %60
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 %85)
  %87 = load i32, i32* @stdout, align 4
  %88 = call i32 @fflush(i32 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %90 = call i32 @getRDB(%struct.TYPE_13__* %89)
  br label %50

91:                                               ; preds = %50
  %92 = load i8*, i8** %12, align 8
  %93 = call i8* @sdscat(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0, i32 0), align 8
  %95 = call i8* @sdsnew(i8* %94)
  store i8* %95, i8** %18, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = call i32 @sdslen(i8* %97)
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 47
  br i1 %104, label %105, label %108

105:                                              ; preds = %91
  %106 = load i8*, i8** %18, align 8
  %107 = call i8* @sdscat(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %107, i8** %18, align 8
  br label %108

108:                                              ; preds = %105, %91
  %109 = load i8*, i8** %18, align 8
  %110 = call i8* @sdscat(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %110, i8** %18, align 8
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @fflush(i32 %111)
  %113 = load i8*, i8** %18, align 8
  %114 = call i32 (i8*, i8*, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  %115 = load i8*, i8** %18, align 8
  %116 = call i32* @fopen(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %116, i32** %19, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %108
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @clusterManagerLogErr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %120)
  store i32 0, i32* %6, align 4
  br label %128

122:                                              ; preds = %108
  %123 = load i8*, i8** %12, align 8
  %124 = load i32*, i32** %19, align 8
  %125 = call i32 @fputs(i8* %123, i32* %124)
  %126 = load i32*, i32** %19, align 8
  %127 = call i32 @fclose(i32* %126)
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @sdsfree(i8* %129)
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @sdsfree(i8* %131)
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %128
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 @clusterManagerLogWarn(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.9, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0, i32 0), align 8
  %142 = call i32 (i8*, ...) @clusterManagerLogOk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %141)
  br label %145

143:                                              ; preds = %128
  %144 = call i32 (i8*, ...) @clusterManagerLogOk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %151

147:                                              ; preds = %25
  %148 = load i32, i32* @stderr, align 4
  %149 = load i8*, i8** @CLUSTER_MANAGER_INVALID_HOST_ARG, align 8
  %150 = call i32 @fprintf(i32 %148, i8* %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %145, %33
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @getClusterHostFromCmdArgs(i32, i8**, i8**, i32*) #1

declare dso_local %struct.TYPE_13__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @clusterManagerCheckCluster(i32) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @listNext(i32*) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @clusterManagerNodeGetJSON(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @clusterManagerLogInfo(i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @getRDB(%struct.TYPE_13__*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @clusterManagerLogWarn(i8*) #1

declare dso_local i32 @clusterManagerLogOk(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
