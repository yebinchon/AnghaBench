; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_freeClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_freeClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32, i32, i32*, i32*, i64 }
%struct.TYPE_19__ = type { i32, i64, i32, i32*, %struct.TYPE_19__*, i64, i32*, i32, i32, i32, i32, %struct.TYPE_18__, i32*, i32*, i64 }
%struct.TYPE_18__ = type { i32 }

@CLIENT_PROTECTED = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_CLIENT_CHANGE = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_CLIENT_CHANGE_DISCONNECTED = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@CLIENT_MASTER = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Connection with master lost.\00", align 1
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@CLIENT_CLOSE_ASAP = common dso_local global i32 0, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@CLIENT_MONITOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Connection with replica %s lost.\00", align 1
@SLAVE_STATE_SEND_BULK = common dso_local global i64 0, align 8
@SLAVE_STATE_ONLINE = common dso_local global i64 0, align 8
@REDISMODULE_EVENT_REPLICA_CHANGE = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_REPLICA_CHANGE_OFFLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeClient(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CLIENT_PROTECTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = call i32 @freeClientAsync(%struct.TYPE_19__* %12)
  br label %252

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 14
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @REDISMODULE_EVENT_CLIENT_CHANGE, align 4
  %21 = load i32, i32* @REDISMODULE_SUBEVENT_CLIENT_CHANGE_DISCONNECTED, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = call i32 @moduleFireServerEvent(i32 %20, i32 %21, %struct.TYPE_19__* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 5), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CLIENT_MASTER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = call i32 (i32, i8*, ...) @serverLog(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %41 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CLIENT_BLOCKED, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %49 = call i32 @replicationCacheMaster(%struct.TYPE_19__* %48)
  br label %252

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %27, %24
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CLIENT_SLAVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CLIENT_MONITOR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @LL_WARNING, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = call i32 @replicationGetSlaveName(%struct.TYPE_19__* %67)
  %69 = call i32 (i32, i8*, ...) @serverLog(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %58, %51
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 12
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @sdsfree(i32* %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 13
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @sdsfree(i32* %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 12
  store i32* null, i32** %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CLIENT_BLOCKED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %70
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %89 = call i32 @unblockClient(%struct.TYPE_19__* %88)
  br label %90

90:                                               ; preds = %87, %70
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 11
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dictRelease(i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %97 = call i32 @unwatchAllKeys(%struct.TYPE_19__* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @listRelease(i32 %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = call i32 @pubsubUnsubscribeAllChannels(%struct.TYPE_19__* %102, i32 0)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = call i32 @pubsubUnsubscribeAllPatterns(%struct.TYPE_19__* %104, i32 0)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dictRelease(i32 %108)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @listRelease(i32 %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @listRelease(i32 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = call i32 @freeClientArgv(%struct.TYPE_19__* %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = call i32 @unlinkClient(%struct.TYPE_19__* %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CLIENT_SLAVE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %202

128:                                              ; preds = %90
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SLAVE_STATE_SEND_BULK, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %128
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @close(i32 %142)
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @sdsfree(i32* %152)
  br label %154

154:                                              ; preds = %149, %144
  br label %155

155:                                              ; preds = %154, %128
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CLIENT_MONITOR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 4), align 8
  br label %166

164:                                              ; preds = %155
  %165 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 3), align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32* [ %163, %162 ], [ %165, %164 ]
  store i32* %167, i32** %4, align 8
  %168 = load i32*, i32** %4, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %170 = call i32* @listSearchKey(i32* %168, %struct.TYPE_19__* %169)
  store i32* %170, i32** %3, align 8
  %171 = load i32*, i32** %3, align 8
  %172 = icmp ne i32* %171, null
  %173 = zext i1 %172 to i32
  %174 = call i32 @serverAssert(i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @listDelNode(i32* %175, i32* %176)
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CLIENT_SLAVE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %166
  %185 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 3), align 8
  %186 = call i64 @listLength(i32* %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 1), align 8
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 2), align 4
  br label %190

190:                                              ; preds = %188, %184, %166
  %191 = call i32 (...) @refreshGoodSlavesCount()
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @SLAVE_STATE_ONLINE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i32, i32* @REDISMODULE_EVENT_REPLICA_CHANGE, align 4
  %199 = load i32, i32* @REDISMODULE_SUBEVENT_REPLICA_CHANGE_OFFLINE, align 4
  %200 = call i32 @moduleFireServerEvent(i32 %198, i32 %199, %struct.TYPE_19__* null)
  br label %201

201:                                              ; preds = %197, %190
  br label %202

202:                                              ; preds = %201, %90
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CLIENT_MASTER, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = call i32 (...) @replicationHandleMasterDisconnection()
  br label %211

211:                                              ; preds = %209, %202
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %211
  %219 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %221 = call i32* @listSearchKey(i32* %219, %struct.TYPE_19__* %220)
  store i32* %221, i32** %3, align 8
  %222 = load i32*, i32** %3, align 8
  %223 = icmp ne i32* %222, null
  %224 = zext i1 %223 to i32
  %225 = call i32 @serverAssert(i32 %224)
  %226 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 @listDelNode(i32* %226, i32* %227)
  br label %229

229:                                              ; preds = %218, %211
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @decrRefCount(i64 %237)
  br label %239

239:                                              ; preds = %234, %229
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %241, align 8
  %243 = call i32 @zfree(%struct.TYPE_19__* %242)
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %245 = call i32 @freeClientMultiState(%struct.TYPE_19__* %244)
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @sdsfree(i32* %248)
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %251 = call i32 @zfree(%struct.TYPE_19__* %250)
  br label %252

252:                                              ; preds = %239, %47, %11
  ret void
}

declare dso_local i32 @freeClientAsync(%struct.TYPE_19__*) #1

declare dso_local i32 @moduleFireServerEvent(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @replicationCacheMaster(%struct.TYPE_19__*) #1

declare dso_local i32 @replicationGetSlaveName(%struct.TYPE_19__*) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_19__*) #1

declare dso_local i32 @dictRelease(i32) #1

declare dso_local i32 @unwatchAllKeys(%struct.TYPE_19__*) #1

declare dso_local i32 @listRelease(i32) #1

declare dso_local i32 @pubsubUnsubscribeAllChannels(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @pubsubUnsubscribeAllPatterns(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @freeClientArgv(%struct.TYPE_19__*) #1

declare dso_local i32 @unlinkClient(%struct.TYPE_19__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @listSearchKey(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @listDelNode(i32*, i32*) #1

declare dso_local i64 @listLength(i32*) #1

declare dso_local i32 @refreshGoodSlavesCount(...) #1

declare dso_local i32 @replicationHandleMasterDisconnection(...) #1

declare dso_local i32 @decrRefCount(i64) #1

declare dso_local i32 @zfree(%struct.TYPE_19__*) #1

declare dso_local i32 @freeClientMultiState(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
