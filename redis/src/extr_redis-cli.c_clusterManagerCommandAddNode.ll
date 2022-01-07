; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandAddNode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandAddNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i8* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i8*, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }

@.str = private unnamed_addr constant [40 x i8] c">>> Adding node %s:%d to cluster %s:%d\0A\00", align 1
@config = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@CLUSTER_MANAGER_CMD_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"[ERR] No such master ID %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Automatically selected master %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"[ERR] Sorry, can't connect to node %s:%d\0A\00", align 1
@cluster_manager = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c">>> Send CLUSTER MEET to node %s:%d to make it join the cluster.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"CLUSTER MEET %s %d\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c">>> Configure node as replica of %s:%d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"CLUSTER REPLICATE %s\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"[OK] New node added correctly.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_INVALID_HOST_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clusterManagerCommandAddNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerCommandAddNode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = call i32 @getClusterHostFromCmdArgs(i32 %20, i8** %22, i8** %8, i32* %10)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %204

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getClusterHostFromCmdArgs(i32 1, i8** %27, i8** %9, i32* %11)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %204

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, i8*, i32, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.TYPE_22__* @clusterManagerNewNode(i8* %37, i32 %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %12, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %41 = call i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_22__* %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %208

44:                                               ; preds = %31
  %45 = call i32 @clusterManagerCheckCluster(i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %208

48:                                               ; preds = %44
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %13, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @config, i32 0, i32 0, i32 0), align 8
  %50 = load i32, i32* @CLUSTER_MANAGER_CMD_FLAG_SLAVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load i8*, i8** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @config, i32 0, i32 0, i32 1), align 8
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8*, i8** %14, align 8
  %59 = call %struct.TYPE_22__* @clusterManagerNodeByName(i8* %58)
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %13, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %61 = icmp eq %struct.TYPE_22__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 (i8*, i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  store i32 0, i32* %3, align 4
  br label %208

65:                                               ; preds = %57
  br label %79

66:                                               ; preds = %53
  %67 = call %struct.TYPE_22__* (...) @clusterManagerNodeWithLeastReplicas()
  store %struct.TYPE_22__* %67, %struct.TYPE_22__** %13, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %69 = icmp ne %struct.TYPE_22__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %74, i32 %77)
  br label %79

79:                                               ; preds = %66, %65
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call %struct.TYPE_22__* @clusterManagerNewNode(i8* %81, i32 %82)
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %15, align 8
  store i32 0, i32* %16, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %85 = call i32 @clusterManagerNodeConnect(%struct.TYPE_22__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (i8*, i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %88, i32 %89)
  store i32 0, i32* %6, align 4
  br label %187

91:                                               ; preds = %80
  store i8* null, i8** %17, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %93 = call i32 @clusterManagerNodeIsCluster(%struct.TYPE_22__* %92, i8** %17)
  store i32 %93, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @clusterManagerPrintNotClusterNodeError(%struct.TYPE_22__* %96, i8* %97)
  %99 = load i8*, i8** %17, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** %17, align 8
  %103 = call i32 @zfree(i8* %102)
  br label %104

104:                                              ; preds = %101, %95
  br label %187

105:                                              ; preds = %91
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %107 = call i32 @clusterManagerNodeLoadInfo(%struct.TYPE_22__* %106, i32 0, i8** %17)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = load i8*, i8** %17, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_22__* %113, i8* %114)
  %116 = load i8*, i8** %17, align 8
  %117 = call i32 @zfree(i8* %116)
  br label %118

118:                                              ; preds = %112, %109
  store i32 0, i32* %6, align 4
  br label %187

119:                                              ; preds = %105
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %121 = call i32 @clusterManagerNodeIsEmpty(%struct.TYPE_22__* %120, i8** %17)
  store i32 %121, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %119
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @clusterManagerPrintNotEmptyNodeError(%struct.TYPE_22__* %124, i8* %125)
  %127 = load i8*, i8** %17, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i8*, i8** %17, align 8
  %131 = call i32 @zfree(i8* %130)
  br label %132

132:                                              ; preds = %129, %123
  br label %187

133:                                              ; preds = %119
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cluster_manager, i32 0, i32 0), align 4
  %135 = call %struct.TYPE_23__* @listFirst(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %18, align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cluster_manager, i32 0, i32 0), align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %140 = call i32 @listAddNodeTail(i32 %138, %struct.TYPE_22__* %139)
  store i32 1, i32* %16, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (i8*, i8*, i32, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* %141, i32 %142)
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32* (%struct.TYPE_22__*, i8*, i8*, ...) @CLUSTER_MANAGER_COMMAND(%struct.TYPE_22__* %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %147, i32 %150)
  store i32* %151, i32** %7, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_22__* %152, i32* %153, i32* null)
  store i32 %154, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %133
  br label %187

157:                                              ; preds = %133
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %159 = icmp ne %struct.TYPE_22__* %158, null
  br i1 %159, label %160, label %185

160:                                              ; preds = %157
  %161 = call i32 @sleep(i32 1)
  %162 = call i32 (...) @clusterManagerWaitForClusterJoin()
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, i8*, i32, ...) @clusterManagerLogInfo(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %165, i32 %168)
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @freeReplyObject(i32* %170)
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32* (%struct.TYPE_22__*, i8*, i8*, ...) @CLUSTER_MANAGER_COMMAND(%struct.TYPE_22__* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %177)
  store i32* %178, i32** %7, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_22__* %179, i32* %180, i32* null)
  store i32 %181, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %160
  br label %187

184:                                              ; preds = %160
  br label %185

185:                                              ; preds = %184, %157
  %186 = call i32 @clusterManagerLogOk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %183, %156, %132, %118, %104, %87
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %192 = icmp ne %struct.TYPE_22__* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %195 = call i32 @freeClusterManagerNode(%struct.TYPE_22__* %194)
  br label %196

196:                                              ; preds = %193, %190, %187
  %197 = load i32*, i32** %7, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @freeReplyObject(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %208

204:                                              ; preds = %30, %25
  %205 = load i32, i32* @stderr, align 4
  %206 = load i8*, i8** @CLUSTER_MANAGER_INVALID_HOST_ARG, align 8
  %207 = call i32 @fprintf(i32 %205, i8* %206)
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %202, %62, %47, %43
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @getClusterHostFromCmdArgs(i32, i8**, i8**, i32*) #1

declare dso_local i32 @clusterManagerLogInfo(i8*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_22__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @clusterManagerCheckCluster(i32) #1

declare dso_local %struct.TYPE_22__* @clusterManagerNodeByName(i8*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_22__* @clusterManagerNodeWithLeastReplicas(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @clusterManagerNodeConnect(%struct.TYPE_22__*) #1

declare dso_local i32 @clusterManagerNodeIsCluster(%struct.TYPE_22__*, i8**) #1

declare dso_local i32 @clusterManagerPrintNotClusterNodeError(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32 @clusterManagerNodeLoadInfo(%struct.TYPE_22__*, i32, i8**) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @clusterManagerNodeIsEmpty(%struct.TYPE_22__*, i8**) #1

declare dso_local i32 @clusterManagerPrintNotEmptyNodeError(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_23__* @listFirst(i32) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_22__*) #1

declare dso_local i32* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_22__*, i8*, i8*, ...) #1

declare dso_local i32 @clusterManagerCheckRedisReply(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @clusterManagerWaitForClusterJoin(...) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32 @clusterManagerLogOk(i8*) #1

declare dso_local i32 @freeClusterManagerNode(%struct.TYPE_22__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
