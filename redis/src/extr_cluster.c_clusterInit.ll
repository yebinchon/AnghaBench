; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterInit.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, %struct.TYPE_8__*, i32, i64, i64*, i64*, i64, i32, i64, i64, i64, i64, i8*, i8*, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CLUSTER_FAIL = common dso_local global i32 0, align 4
@clusterNodesDictType = common dso_local global i32 0, align 4
@clusterNodesBlackListDictType = common dso_local global i32 0, align 4
@CLUSTER_CANT_FAILOVER_NONE = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_COUNT = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@CLUSTER_NODE_MASTER = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_8__* null, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"No cluster configuration found, I'm %.40s\00", align 1
@CLUSTER_PORT_INCR = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [156 x i8] c"Redis port number too high. Cluster communication port is 10,000 port numbers higher than your Redis port. Your Redis port number must be lower than 55535.\00", align 1
@AE_READABLE = common dso_local global i32 0, align 4
@clusterAcceptHandler = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Unrecoverable error creating Redis Cluster file event.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call %struct.TYPE_6__* @zmalloc(i32 4)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 19
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @CLUSTER_FAIL, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 18
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 17
  store i64 0, i64* %16, align 8
  %17 = call i8* @dictCreate(i32* @clusterNodesDictType, i32* null)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 16
  store i8* %17, i8** %19, align 8
  %20 = call i8* @dictCreate(i32* @clusterNodesBlackListDictType, i32* null)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 15
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 14
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 13
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 12
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 11
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @CLUSTER_CANT_FAILOVER_NONE, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %53, %0
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @CLUSTERMSG_TYPE_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 8
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 7
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memset(i32 %61, i32 0, i32 4)
  %63 = call i32 (...) @clusterCloseAllSlots()
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 9), align 8
  %65 = call i64 @clusterLockConfig(i32 %64)
  %66 = load i64, i64* @C_ERR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %56
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 9), align 8
  %72 = call i64 @clusterLoadConfig(i32 %71)
  %73 = load i64, i64* @C_ERR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %77 = load i32, i32* @CLUSTER_NODE_MASTER, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.TYPE_8__* @createClusterNode(i32* null, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** @myself, align 8
  %82 = load i32, i32* @LL_NOTICE, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @serverLog(i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %88 = call i32 @clusterAddNode(%struct.TYPE_8__* %87)
  store i32 1, i32* %1, align 4
  br label %89

89:                                               ; preds = %75, %70
  %90 = load i32, i32* %1, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @clusterSaveConfigOrDie(i32 1)
  br label %94

94:                                               ; preds = %92, %89
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 8), align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @CLUSTER_PORT_INCR, align 4
  %105 = sub nsw i32 65535, %104
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @LL_WARNING, align 4
  %109 = call i32 (i32, i8*, ...) @serverLog(i32 %108, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.1, i64 0, i64 0))
  %110 = call i32 @exit(i32 1) #3
  unreachable

111:                                              ; preds = %101
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @CLUSTER_PORT_INCR, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 6), align 8
  %116 = call i64 @listenToPort(i32 %114, i32* %115, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0))
  %117 = load i64, i64* @C_ERR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %122
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 7), align 8
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 6), align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AE_READABLE, align 4
  %134 = load i32, i32* @clusterAcceptHandler, align 4
  %135 = call i64 @aeCreateFileEvent(i32 %127, i32 %132, i32 %133, i32 %134, i32* null)
  %136 = load i64, i64* @AE_ERR, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = call i32 @serverPanic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %126
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %122

144:                                              ; preds = %122
  br label %145

145:                                              ; preds = %144
  %146 = call i32 (...) @raxNew()
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @memset(i32 %151, i32 0, i32 4)
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @CLUSTER_PORT_INCR, align 4
  %158 = add nsw i32 %156, %157
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %145
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %145
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %167
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  %177 = call i32 (...) @resetManualFailover()
  %178 = call i32 (...) @clusterUpdateMyselfFlags()
  ret void
}

declare dso_local %struct.TYPE_6__* @zmalloc(i32) #1

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @clusterCloseAllSlots(...) #1

declare dso_local i64 @clusterLockConfig(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @clusterLoadConfig(i32) #1

declare dso_local %struct.TYPE_8__* @createClusterNode(i32*, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @clusterAddNode(%struct.TYPE_8__*) #1

declare dso_local i32 @clusterSaveConfigOrDie(i32) #1

declare dso_local i64 @listenToPort(i32, i32*, i32*) #1

declare dso_local i64 @aeCreateFileEvent(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @raxNew(...) #1

declare dso_local i32 @resetManualFailover(...) #1

declare dso_local i32 @clusterUpdateMyselfFlags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
