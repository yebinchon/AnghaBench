; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterProcessGossipSection.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterProcessGossipSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i64, i64, i32, i64, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }

@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@LL_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GOSSIP %.40s %s:%d@%d %s\00", align 1
@myself = common dso_local global %struct.TYPE_21__* null, align 8
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Node %.40s reported node %.40s as not reachable.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Node %.40s reported node %.40s is back online.\00", align 1
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@NET_IP_STR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterProcessGossipSection(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ntohs(i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %6, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_21__* @clusterLookupNode(i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi %struct.TYPE_21__* [ %30, %27 ], [ %35, %31 ]
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %7, align 8
  br label %38

38:                                               ; preds = %286, %36
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %289

42:                                               ; preds = %38
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ntohs(i32 %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 8
  %49 = load i64, i64* @LL_DEBUG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %42
  %52 = call i32 (...) @sdsempty()
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @representClusterNodeFlags(i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i64, i64* @LL_DEBUG, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ntohs(i32 %64)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ntohs(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i64, i8*, i32, i32, ...) @serverLog(i64 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i64 %65, i64 %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @sdsfree(i32 %72)
  br label %74

74:                                               ; preds = %51, %42
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_21__* @clusterLookupNode(i32 %77)
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %9, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %80 = icmp ne %struct.TYPE_21__* %79, null
  br i1 %80, label %81, label %258

81:                                               ; preds = %74
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = icmp ne %struct.TYPE_21__* %82, null
  br i1 %83, label %84, label %134

84:                                               ; preds = %81
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = call i64 @nodeIsMaster(%struct.TYPE_21__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %134

88:                                               ; preds = %84
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  %91 = icmp ne %struct.TYPE_21__* %89, %90
  br i1 %91, label %92, label %134

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %95 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %92
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %102 = call i64 @clusterNodeAddFailureReport(%struct.TYPE_21__* %100, %struct.TYPE_21__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* @LL_VERBOSE, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i64, i8*, i32, i32, ...) @serverLog(i64 %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %116 = call i32 @markNodeAsFailingIfNeeded(%struct.TYPE_21__* %115)
  br label %133

117:                                              ; preds = %92
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %120 = call i64 @clusterNodeDelFailureReport(%struct.TYPE_21__* %118, %struct.TYPE_21__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i32, i32* @LL_VERBOSE, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i64, i8*, i32, i32, ...) @serverLog(i64 %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %122, %117
  br label %133

133:                                              ; preds = %132, %114
  br label %134

134:                                              ; preds = %133, %88, %84, %81
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %137 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %172, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %148 = call i64 @clusterNodeFailureReportsCount(%struct.TYPE_21__* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %146
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ntohl(i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %155, 1000
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 1), align 8
  %159 = add nsw i32 %158, 500
  %160 = icmp sle i32 %157, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %150
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %167, %161, %150
  br label %172

172:                                              ; preds = %171, %146, %141, %134
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %177 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %257

181:                                              ; preds = %172
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %257, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %189 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %190 = or i32 %188, %189
  %191 = and i32 %187, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %257, label %193

193:                                              ; preds = %186
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @strcasecmp(i32 %196, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %220, label %202

202:                                              ; preds = %193
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @ntohs(i32 %208)
  %210 = icmp ne i64 %205, %209
  br i1 %210, label %220, label %211

211:                                              ; preds = %202
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @ntohs(i32 %217)
  %219 = icmp ne i64 %214, %218
  br i1 %219, label %220, label %257

220:                                              ; preds = %211, %202, %193
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 6
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @freeClusterLink(i64 %228)
  br label %230

230:                                              ; preds = %225, %220
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @NET_IP_STR_LEN, align 4
  %238 = call i32 @memcpy(i32 %233, i32 %236, i32 %237)
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @ntohs(i32 %241)
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 3
  store i64 %242, i64* %244, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @ntohs(i32 %247)
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 4
  store i64 %248, i64* %250, align 8
  %251 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %252 = xor i32 %251, -1
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %230, %211, %186, %181, %172
  br label %286

258:                                              ; preds = %74
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %260 = icmp ne %struct.TYPE_21__* %259, null
  br i1 %260, label %261, label %285

261:                                              ; preds = %258
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %285, label %266

266:                                              ; preds = %261
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @clusterBlacklistExists(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %285, label %272

272:                                              ; preds = %266
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i64 @ntohs(i32 %278)
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @ntohs(i32 %282)
  %284 = call i32 @clusterStartHandshake(i32 %275, i64 %279, i64 %283)
  br label %285

285:                                              ; preds = %272, %266, %261, %258
  br label %286

286:                                              ; preds = %285, %257
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 1
  store %struct.TYPE_22__* %288, %struct.TYPE_22__** %6, align 8
  br label %38

289:                                              ; preds = %38
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.TYPE_21__* @clusterLookupNode(i32) #1

declare dso_local i32 @representClusterNodeFlags(i32, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @serverLog(i64, i8*, i32, i32, ...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_21__*) #1

declare dso_local i64 @clusterNodeAddFailureReport(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @markNodeAsFailingIfNeeded(%struct.TYPE_21__*) #1

declare dso_local i64 @clusterNodeDelFailureReport(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @clusterNodeFailureReportsCount(%struct.TYPE_21__*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @strcasecmp(i32, i32) #1

declare dso_local i32 @freeClusterLink(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @clusterBlacklistExists(i32) #1

declare dso_local i32 @clusterStartHandshake(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
