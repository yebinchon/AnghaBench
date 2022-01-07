; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterHandleSlaveFailover.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterHandleSlaveFailover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_8__*, i64, i64, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i64, i32, i64, i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CLUSTER_TODO_HANDLE_FAILOVER = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_10__* null, align 8
@CLUSTER_CANT_FAILOVER_NONE = common dso_local global i32 0, align 4
@REPL_STATE_CONNECTED = common dso_local global i64 0, align 8
@CLUSTER_CANT_FAILOVER_DATA_AGE = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Start of election delayed for %lld milliseconds (rank #%d, offset %lld).\00", align 1
@CLUSTER_BROADCAST_LOCAL_SLAVES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Replica rank updated to #%d, added %lld milliseconds of delay.\00", align 1
@CLUSTER_CANT_FAILOVER_WAITING_DELAY = common dso_local global i32 0, align 4
@CLUSTER_CANT_FAILOVER_EXPIRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Starting a failover election for epoch %llu.\00", align 1
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@CLUSTER_TODO_FSYNC_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failover election won: I'm the new master.\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"configEpoch set to %llu after successful failover\00", align 1
@CLUSTER_CANT_FAILOVER_WAITING_VOTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterHandleSlaveFailover() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = call i64 (...) @mstime()
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 2
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %0
  %30 = phi i1 [ false, %0 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @CLUSTER_TODO_HANDLE_FAILOVER, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 2000, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %47 = call i64 @nodeIsMaster(%struct.TYPE_10__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = icmp eq %struct.TYPE_11__* %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = call i32 @nodeFailed(%struct.TYPE_11__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60, %54
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 8), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66, %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69, %66, %60, %49, %43
  %77 = load i32, i32* @CLUSTER_CANT_FAILOVER_NONE, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 8
  br label %298

80:                                               ; preds = %69
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 8
  %82 = load i64, i64* @REPL_STATE_CONNECTED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 6), align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 7), align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = trunc i64 %89 to i32
  %91 = mul nsw i32 %90, 1000
  store i32 %91, i32* %1, align 4
  br label %98

92:                                               ; preds = %80
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 6), align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 5), align 8
  %95 = sub nsw i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = mul nsw i32 %96, 1000
  store i32 %97, i32* %1, align 4
  br label %98

98:                                               ; preds = %92, %84
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %104 = load i32, i32* %1, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 2), align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load i32, i32* %1, align 4
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 4), align 8
  %112 = trunc i64 %111 to i32
  %113 = mul nsw i32 %112, 1000
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 2), align 8
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %113, %116
  %118 = icmp sgt i32 %110, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* @CLUSTER_CANT_FAILOVER_DATA_AGE, align 4
  %124 = call i32 @clusterLogCantFailover(i32 %123)
  br label %298

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %109, %106
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %182

130:                                              ; preds = %126
  %131 = call i64 (...) @mstime()
  %132 = add nsw i64 %131, 500
  %133 = call i32 (...) @random()
  %134 = srem i32 %133, 500
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %132, %135
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  store i32 0, i32* %140, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 5
  store i32 0, i32* %142, align 8
  %143 = call i8* (...) @clusterGetSlaveRank()
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 1000
  %151 = sext i32 %150 to i64
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %151
  store i64 %155, i64* %153, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %130
  %161 = call i64 (...) @mstime()
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 6
  store i32 0, i32* %165, align 4
  %166 = load i32, i32* @CLUSTER_TODO_HANDLE_FAILOVER, align 4
  %167 = call i32 @clusterDoBeforeSleep(i32 %166)
  br label %168

168:                                              ; preds = %160, %130
  %169 = load i32, i32* @LL_WARNING, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i64 (...) @mstime()
  %174 = sub nsw i64 %172, %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (...) @replicationGetSlaveOffset()
  %179 = call i32 (i32, i8*, ...) @serverLog(i32 %169, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %174, i32 %177, i32 %178)
  %180 = load i32, i32* @CLUSTER_BROADCAST_LOCAL_SLAVES, align 4
  %181 = call i32 @clusterBroadcastPong(i32 %180)
  br label %298

182:                                              ; preds = %126
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %221

187:                                              ; preds = %182
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %221

192:                                              ; preds = %187
  %193 = call i8* (...) @clusterGetSlaveRank()
  %194 = ptrtoint i8* %193 to i32
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %195, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %192
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  %206 = mul nsw i32 %205, 1000
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %8, align 8
  %208 = load i64, i64* %8, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @LL_WARNING, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load i64, i64* %8, align 8
  %219 = call i32 (i32, i8*, ...) @serverLog(i32 %216, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %217, i64 %218)
  br label %220

220:                                              ; preds = %200, %192
  br label %221

221:                                              ; preds = %220, %187, %182
  %222 = call i64 (...) @mstime()
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp slt i64 %222, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i32, i32* @CLUSTER_CANT_FAILOVER_WAITING_DELAY, align 4
  %229 = call i32 @clusterLogCantFailover(i32 %228)
  br label %298

230:                                              ; preds = %221
  %231 = load i32, i32* %2, align 4
  %232 = load i32, i32* %5, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, i32* @CLUSTER_CANT_FAILOVER_EXPIRED, align 4
  %236 = call i32 @clusterLogCantFailover(i32 %235)
  br label %298

237:                                              ; preds = %230
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %266

242:                                              ; preds = %237
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 7
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %244, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 7
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 8
  store i64 %249, i64* %251, align 8
  %252 = load i32, i32* @LL_WARNING, align 4
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = call i32 (i32, i8*, ...) @serverLog(i32 %252, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %255)
  %257 = call i32 (...) @clusterRequestFailoverAuth()
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 5
  store i32 1, i32* %259, align 8
  %260 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %261 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %264 = or i32 %262, %263
  %265 = call i32 @clusterDoBeforeSleep(i32 %264)
  br label %298

266:                                              ; preds = %237
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %3, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %272, label %295

272:                                              ; preds = %266
  %273 = load i32, i32* @LL_WARNING, align 4
  %274 = call i32 (i32, i8*, ...) @serverLog(i32 %273, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = icmp slt i64 %277, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %272
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 3), align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 8
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  %288 = load i32, i32* @LL_WARNING, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i32 (i32, i8*, ...) @serverLog(i32 %288, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %291)
  br label %293

293:                                              ; preds = %282, %272
  %294 = call i32 (...) @clusterFailoverReplaceYourMaster()
  br label %298

295:                                              ; preds = %266
  %296 = load i32, i32* @CLUSTER_CANT_FAILOVER_WAITING_VOTES, align 4
  %297 = call i32 @clusterLogCantFailover(i32 %296)
  br label %298

298:                                              ; preds = %76, %122, %168, %227, %234, %242, %295, %293
  ret void
}

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_10__*) #1

declare dso_local i32 @nodeFailed(%struct.TYPE_11__*) #1

declare dso_local i32 @clusterLogCantFailover(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i8* @clusterGetSlaveRank(...) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @replicationGetSlaveOffset(...) #1

declare dso_local i32 @clusterBroadcastPong(i32) #1

declare dso_local i32 @clusterRequestFailoverAuth(...) #1

declare dso_local i32 @clusterFailoverReplaceYourMaster(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
