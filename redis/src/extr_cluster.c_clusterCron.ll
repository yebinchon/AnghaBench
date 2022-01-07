; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterCron.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterCron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i32, i32, %struct.TYPE_19__*, i32*, i32, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_20__*, i64, i32, i64 }
%struct.TYPE_20__ = type { i8*, i32, i32, i64, i32, i64, i32, %struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@clusterCron.iteration = internal global i64 0, align 8
@clusterCron.prev_ip = internal global i8* null, align 8
@server = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@myself = common dso_local global %struct.TYPE_20__* null, align 8
@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@NET_FIRST_BIND_ADDR = common dso_local global i32 0, align 4
@clusterLinkConnectHandler = common dso_local global i32 0, align 4
@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to connect to Cluster Node [%s]:%d -> %s\00", align 1
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Pinging node %.40s\00", align 1
@CLUSTERMSG_TYPE_PING = common dso_local global i32 0, align 4
@CLUSTER_NODE_MIGRATE_TO = common dso_local global i32 0, align 4
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"*** NODE %.40s possibly failing\00", align 1
@CLUSTER_MODULE_FLAG_NO_FAILOVER = common dso_local global i32 0, align 4
@CLUSTER_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterCron() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %20 = call i8* (...) @mstime()
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %8, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %22 = load i64, i64* @clusterCron.iteration, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @clusterCron.iteration, align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 0), align 8
  store i8* %24, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load i8*, i8** @clusterCron.prev_ip, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %0
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %52

31:                                               ; preds = %27, %0
  %32 = load i8*, i8** @clusterCron.prev_ip, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  br label %51

38:                                               ; preds = %34, %31
  %39 = load i8*, i8** @clusterCron.prev_ip, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** @clusterCron.prev_ip, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %44, %41, %38
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load i8*, i8** @clusterCron.prev_ip, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** @clusterCron.prev_ip, align 8
  %60 = call i32 @zfree(i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %11, align 8
  store i8* %62, i8** @clusterCron.prev_ip, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i8*, i8** @clusterCron.prev_ip, align 8
  %67 = call i8* @zstrdup(i8* %66)
  store i8* %67, i8** @clusterCron.prev_ip, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 0), align 8
  %72 = load i32, i32* @NET_IP_STR_LEN, align 4
  %73 = call i32 @strncpy(i8* %70, i8* %71, i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* @NET_IP_STR_LEN, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 0, i8* %80, align 1
  br label %86

81:                                               ; preds = %61
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %81, %65
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 1), align 8
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 1000
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 1000, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = call i32 (...) @clusterUpdateMyselfFlags()
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32* @dictGetSafeIterator(i32 %96)
  store i32* %97, i32** %1, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %205, %189, %140, %115, %92
  %101 = load i32*, i32** %1, align 8
  %102 = call i32* @dictNext(i32* %101)
  store i32* %102, i32** %2, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %206

104:                                              ; preds = %100
  %105 = load i32*, i32** %2, align 8
  %106 = call %struct.TYPE_20__* @dictGetVal(i32* %105)
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %13, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %111 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %100

116:                                              ; preds = %104
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %123, %116
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %130 = call i64 @nodeInHandshake(%struct.TYPE_20__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = load i32, i32* %10, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %142 = call i32 @clusterDelNode(%struct.TYPE_20__* %141)
  br label %100

143:                                              ; preds = %132, %128
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 9
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = icmp eq %struct.TYPE_21__* %146, null
  br i1 %147, label %148, label %205

148:                                              ; preds = %143
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %150 = call %struct.TYPE_21__* @createClusterLink(%struct.TYPE_20__* %149)
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %14, align 8
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 6), align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 (...) @connCreateTLS()
  br label %157

155:                                              ; preds = %148
  %156 = call i32 (...) @connCreateSocket()
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %165 = call i32 @connSetPrivateData(i32 %163, %struct.TYPE_21__* %164)
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @NET_FIRST_BIND_ADDR, align 4
  %176 = load i32, i32* @clusterLinkConnectHandler, align 4
  %177 = call i32 @connConnect(i32 %168, i8* %171, i32 %174, i32 %175, i32 %176)
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %201

179:                                              ; preds = %157
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = call i8* (...) @mstime()
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 3
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %184, %179
  %190 = load i32, i32* @LL_DEBUG, align 4
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 5), align 8
  %198 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %190, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %193, i32 %196, i32 %197)
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %200 = call i32 @freeClusterLink(%struct.TYPE_21__* %199)
  br label %100

201:                                              ; preds = %157
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 9
  store %struct.TYPE_21__* %202, %struct.TYPE_21__** %204, align 8
  br label %205

205:                                              ; preds = %201, %143
  br label %100

206:                                              ; preds = %100
  %207 = load i32*, i32** %1, align 8
  %208 = call i32 @dictReleaseIterator(i32* %207)
  %209 = load i64, i64* @clusterCron.iteration, align 8
  %210 = urem i64 %209, 10
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %278, label %212

212:                                              ; preds = %206
  store i32 0, i32* %15, align 4
  br label %213

213:                                              ; preds = %258, %212
  %214 = load i32, i32* %15, align 4
  %215 = icmp slt i32 %214, 5
  br i1 %215, label %216, label %261

216:                                              ; preds = %213
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = call i32* @dictGetRandomKey(i32 %219)
  store i32* %220, i32** %2, align 8
  %221 = load i32*, i32** %2, align 8
  %222 = call %struct.TYPE_20__* @dictGetVal(i32* %221)
  store %struct.TYPE_20__* %222, %struct.TYPE_20__** %16, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 9
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = icmp eq %struct.TYPE_21__* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %216
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227, %216
  br label %258

233:                                              ; preds = %227
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %238 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %239 = or i32 %237, %238
  %240 = and i32 %236, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  br label %258

243:                                              ; preds = %233
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %245 = icmp eq %struct.TYPE_20__* %244, null
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %7, align 4
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = icmp sgt i32 %247, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %246, %243
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %253, %struct.TYPE_20__** %9, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %252, %246
  br label %258

258:                                              ; preds = %257, %242, %232
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %15, align 4
  br label %213

261:                                              ; preds = %213
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %263 = icmp ne %struct.TYPE_20__* %262, null
  br i1 %263, label %264, label %277

264:                                              ; preds = %261
  %265 = load i32, i32* @LL_DEBUG, align 4
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %265, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %270)
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 9
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %273, align 8
  %275 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  %276 = call i32 @clusterSendPing(%struct.TYPE_21__* %274, i32 %275)
  br label %277

277:                                              ; preds = %264, %261
  br label %278

278:                                              ; preds = %277, %206
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call i32* @dictGetSafeIterator(i32 %281)
  store i32* %282, i32** %1, align 8
  br label %283

283:                                              ; preds = %490, %455, %444, %418, %302, %278
  %284 = load i32*, i32** %1, align 8
  %285 = call i32* @dictNext(i32* %284)
  store i32* %285, i32** %2, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %491

287:                                              ; preds = %283
  %288 = load i32*, i32** %2, align 8
  %289 = call %struct.TYPE_20__* @dictGetVal(i32* %288)
  store %struct.TYPE_20__* %289, %struct.TYPE_20__** %17, align 8
  %290 = call i8* (...) @mstime()
  %291 = ptrtoint i8* %290 to i32
  store i32 %291, i32* %8, align 4
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %296 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %299 = or i32 %297, %298
  %300 = and i32 %294, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %287
  br label %283

303:                                              ; preds = %287
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %305 = call i64 @nodeIsSlave(%struct.TYPE_20__* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %354

307:                                              ; preds = %303
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %309 = call i64 @nodeIsMaster(%struct.TYPE_20__* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %354

311:                                              ; preds = %307
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %313 = call i32 @nodeFailed(%struct.TYPE_20__* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %354, label %315

315:                                              ; preds = %311
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %317 = call i32 @clusterCountNonFailingSlaves(%struct.TYPE_20__* %316)
  store i32 %317, i32* %19, align 4
  %318 = load i32, i32* %19, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %315
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = icmp sgt i64 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %320
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @CLUSTER_NODE_MIGRATE_TO, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %325
  %333 = load i32, i32* %4, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %4, align 4
  br label %335

335:                                              ; preds = %332, %325, %320, %315
  %336 = load i32, i32* %19, align 4
  %337 = load i32, i32* %5, align 4
  %338 = icmp sgt i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = load i32, i32* %19, align 4
  store i32 %340, i32* %5, align 4
  br label %341

341:                                              ; preds = %339, %335
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %343 = call i64 @nodeIsSlave(%struct.TYPE_20__* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 7
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %347, align 8
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %350 = icmp eq %struct.TYPE_20__* %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %345
  %352 = load i32, i32* %19, align 4
  store i32 %352, i32* %6, align 4
  br label %353

353:                                              ; preds = %351, %345, %341
  br label %354

354:                                              ; preds = %353, %311, %307, %303
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 9
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %356, align 8
  %358 = icmp ne %struct.TYPE_21__* %357, null
  br i1 %358, label %359, label %399

359:                                              ; preds = %354
  %360 = load i32, i32* %8, align 4
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 9
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = sub nsw i32 %360, %365
  %367 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 1), align 8
  %368 = icmp sgt i32 %366, %367
  br i1 %368, label %369, label %399

369:                                              ; preds = %359
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %399

374:                                              ; preds = %369
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = icmp slt i64 %378, %381
  br i1 %382, label %383, label %399

383:                                              ; preds = %374
  %384 = load i32, i32* %8, align 4
  %385 = sext i32 %384 to i64
  %386 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 3
  %388 = load i64, i64* %387, align 8
  %389 = sub nsw i64 %385, %388
  %390 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 1), align 8
  %391 = sdiv i32 %390, 2
  %392 = sext i32 %391 to i64
  %393 = icmp sgt i64 %389, %392
  br i1 %393, label %394, label %399

394:                                              ; preds = %383
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 9
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %396, align 8
  %398 = call i32 @freeClusterLink(%struct.TYPE_21__* %397)
  br label %399

399:                                              ; preds = %394, %383, %374, %369, %359, %354
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 9
  %402 = load %struct.TYPE_21__*, %struct.TYPE_21__** %401, align 8
  %403 = icmp ne %struct.TYPE_21__* %402, null
  br i1 %403, label %404, label %424

404:                                              ; preds = %399
  %405 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 3
  %407 = load i64, i64* %406, align 8
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %424

409:                                              ; preds = %404
  %410 = load i32, i32* %8, align 4
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = sub nsw i32 %410, %413
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 1), align 8
  %416 = sdiv i32 %415, 2
  %417 = icmp sgt i32 %414, %416
  br i1 %417, label %418, label %424

418:                                              ; preds = %409
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 9
  %421 = load %struct.TYPE_21__*, %struct.TYPE_21__** %420, align 8
  %422 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  %423 = call i32 @clusterSendPing(%struct.TYPE_21__* %421, i32 %422)
  br label %283

424:                                              ; preds = %409, %404, %399
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %450

429:                                              ; preds = %424
  %430 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %431 = call i64 @nodeIsMaster(%struct.TYPE_20__* %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %450

433:                                              ; preds = %429
  %434 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %435, align 8
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %438 = icmp eq %struct.TYPE_20__* %436, %437
  br i1 %438, label %439, label %450

439:                                              ; preds = %433
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 9
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %441, align 8
  %443 = icmp ne %struct.TYPE_21__* %442, null
  br i1 %443, label %444, label %450

444:                                              ; preds = %439
  %445 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 9
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %446, align 8
  %448 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  %449 = call i32 @clusterSendPing(%struct.TYPE_21__* %447, i32 %448)
  br label %283

450:                                              ; preds = %439, %433, %429, %424
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %452 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %451, i32 0, i32 3
  %453 = load i64, i64* %452, align 8
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %450
  br label %283

456:                                              ; preds = %450
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = sub nsw i64 %458, %461
  %463 = trunc i64 %462 to i32
  store i32 %463, i32* %18, align 4
  %464 = load i32, i32* %18, align 4
  %465 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 1), align 8
  %466 = icmp sgt i32 %464, %465
  br i1 %466, label %467, label %490

467:                                              ; preds = %456
  %468 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %469 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %472 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %473 = or i32 %471, %472
  %474 = and i32 %470, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %489, label %476

476:                                              ; preds = %467
  %477 = load i32, i32* @LL_DEBUG, align 4
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i32 0, i32 8
  %480 = load i32, i32* %479, align 8
  %481 = sext i32 %480 to i64
  %482 = inttoptr i64 %481 to i8*
  %483 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %477, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %482)
  %484 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 8
  %488 = or i32 %487, %484
  store i32 %488, i32* %486, align 8
  store i32 1, i32* %3, align 4
  br label %489

489:                                              ; preds = %476, %467
  br label %490

490:                                              ; preds = %489, %456
  br label %283

491:                                              ; preds = %283
  %492 = load i32*, i32** %1, align 8
  %493 = call i32 @dictReleaseIterator(i32* %492)
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %495 = call i64 @nodeIsSlave(%struct.TYPE_20__* %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %523

497:                                              ; preds = %491
  %498 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 4), align 8
  %499 = icmp eq i32* %498, null
  br i1 %499, label %500, label %523

500:                                              ; preds = %497
  %501 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %502 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %501, i32 0, i32 7
  %503 = load %struct.TYPE_20__*, %struct.TYPE_20__** %502, align 8
  %504 = icmp ne %struct.TYPE_20__* %503, null
  br i1 %504, label %505, label %523

505:                                              ; preds = %500
  %506 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %506, i32 0, i32 7
  %508 = load %struct.TYPE_20__*, %struct.TYPE_20__** %507, align 8
  %509 = call i64 @nodeHasAddr(%struct.TYPE_20__* %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %523

511:                                              ; preds = %505
  %512 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %513 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %512, i32 0, i32 7
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %514, i32 0, i32 0
  %516 = load i8*, i8** %515, align 8
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 7
  %519 = load %struct.TYPE_20__*, %struct.TYPE_20__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 6
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @replicationSetMaster(i8* %516, i32 %521)
  br label %523

523:                                              ; preds = %511, %505, %500, %497, %491
  %524 = call i32 (...) @manualFailoverCheckTimeout()
  %525 = load %struct.TYPE_20__*, %struct.TYPE_20__** @myself, align 8
  %526 = call i64 @nodeIsSlave(%struct.TYPE_20__* %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %550

528:                                              ; preds = %523
  %529 = call i32 (...) @clusterHandleManualFailover()
  %530 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 2), align 4
  %531 = load i32, i32* @CLUSTER_MODULE_FLAG_NO_FAILOVER, align 4
  %532 = and i32 %530, %531
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %528
  %535 = call i32 (...) @clusterHandleSlaveFailover()
  br label %536

536:                                              ; preds = %534, %528
  %537 = load i32, i32* %4, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %549

539:                                              ; preds = %536
  %540 = load i32, i32* %5, align 4
  %541 = icmp sge i32 %540, 2
  br i1 %541, label %542, label %549

542:                                              ; preds = %539
  %543 = load i32, i32* %6, align 4
  %544 = load i32, i32* %5, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %549

546:                                              ; preds = %542
  %547 = load i32, i32* %5, align 4
  %548 = call i32 @clusterHandleSlaveMigration(i32 %547)
  br label %549

549:                                              ; preds = %546, %542, %539, %536
  br label %550

550:                                              ; preds = %549, %523
  %551 = load i32, i32* %3, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %559, label %553

553:                                              ; preds = %550
  %554 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %555 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = load i64, i64* @CLUSTER_FAIL, align 8
  %558 = icmp eq i64 %556, %557
  br i1 %558, label %559, label %561

559:                                              ; preds = %553, %550
  %560 = call i32 (...) @clusterUpdateState()
  br label %561

561:                                              ; preds = %559, %553
  ret void
}

declare dso_local i8* @mstime(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @clusterUpdateMyselfFlags(...) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_20__* @dictGetVal(i32*) #1

declare dso_local i64 @nodeInHandshake(%struct.TYPE_20__*) #1

declare dso_local i32 @clusterDelNode(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @createClusterLink(%struct.TYPE_20__*) #1

declare dso_local i32 @connCreateTLS(...) #1

declare dso_local i32 @connCreateSocket(...) #1

declare dso_local i32 @connSetPrivateData(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @connConnect(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i8*, ...) #1

declare dso_local i32 @freeClusterLink(%struct.TYPE_21__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local i32 @clusterSendPing(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @nodeIsSlave(%struct.TYPE_20__*) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_20__*) #1

declare dso_local i32 @nodeFailed(%struct.TYPE_20__*) #1

declare dso_local i32 @clusterCountNonFailingSlaves(%struct.TYPE_20__*) #1

declare dso_local i64 @nodeHasAddr(%struct.TYPE_20__*) #1

declare dso_local i32 @replicationSetMaster(i8*, i32) #1

declare dso_local i32 @manualFailoverCheckTimeout(...) #1

declare dso_local i32 @clusterHandleManualFailover(...) #1

declare dso_local i32 @clusterHandleSlaveFailover(...) #1

declare dso_local i32 @clusterHandleSlaveMigration(i32) #1

declare dso_local i32 @clusterUpdateState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
