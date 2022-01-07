; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterLoadConfig.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterLoadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__**, %struct.TYPE_12__**, i8* }
%struct.TYPE_12__ = type { i8*, i32, i8*, i8*, i8*, %struct.TYPE_12__*, i32, i8*, i8*, i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Loading the cluster node config from %s: %s\00", align 1
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"currentEpoch\00", align 1
@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"lastVoteEpoch\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Skipping unknown cluster config variable '%s'\00", align 1
@CLUSTER_PORT_INCR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"myself\00", align 1
@myself = common dso_local global %struct.TYPE_12__* null, align 8
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@CLUSTER_NODE_MASTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@CLUSTER_NODE_SLAVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"fail?\00", align 1
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"noaddr\00", align 1
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"nofailover\00", align 1
@CLUSTER_NODE_NOFAILOVER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"noflags\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Unknown flag in redis cluster config file\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"Node configuration loaded, I'm %.40s\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [52 x i8] c"Unrecoverable error: corrupted cluster config file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterLoadConfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @ENOENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @C_ERR, align 4
  store i32 %31, i32* %2, align 4
  br label %586

32:                                               ; preds = %26
  %33 = load i32, i32* @LL_WARNING, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @strerror(i64 %35)
  %37 = call i32 (i32, i8*, ...) @serverLog(i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %1
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fileno(i32* %40)
  %42 = call i32 @fstat(i32 %41, %struct.stat* %5)
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i32, i32* @C_ERR, align 4
  store i32 %51, i32* %2, align 4
  br label %586

52:                                               ; preds = %44, %39
  %53 = load i32, i32* @CLUSTER_SLOTS, align 4
  %54 = mul nsw i32 %53, 128
  %55 = add nsw i32 1024, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @zmalloc(i32 %56)
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %543, %149, %76, %52
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32* @fgets(i8* %59, i32 %60, i32* %61)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %547

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %64
  br label %58

77:                                               ; preds = %70
  %78 = load i8*, i8** %6, align 8
  %79 = call i8** @sdssplitargs(i8* %78, i32* %9)
  store i8** %79, i8*** %10, align 8
  %80 = load i8**, i8*** %10, align 8
  %81 = icmp eq i8** %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %574

83:                                               ; preds = %77
  %84 = load i8**, i8*** %10, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcasecmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %153

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = srem i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %574

94:                                               ; preds = %89
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %146, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %149

99:                                               ; preds = %95
  %100 = load i8**, i8*** %10, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcasecmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load i8**, i8*** %10, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @strtoull(i8* %113, i32* null, i32 10)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %145

118:                                              ; preds = %99
  %119 = load i8**, i8*** %10, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcasecmp(i8* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = load i8**, i8*** %10, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @strtoull(i8* %132, i32* null, i32 10)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  br label %144

136:                                              ; preds = %118
  %137 = load i32, i32* @LL_WARNING, align 4
  %138 = load i8**, i8*** %10, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i32, i8*, ...) @serverLog(i32 %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %136, %126
  br label %145

145:                                              ; preds = %144, %107
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %8, align 4
  br label %95

149:                                              ; preds = %95
  %150 = load i8**, i8*** %10, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @sdsfreesplitres(i8** %150, i32 %151)
  br label %58

153:                                              ; preds = %83
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 8
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %574

157:                                              ; preds = %153
  %158 = load i8**, i8*** %10, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call %struct.TYPE_12__* @clusterLookupNode(i8* %160)
  store %struct.TYPE_12__* %161, %struct.TYPE_12__** %11, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %163 = icmp ne %struct.TYPE_12__* %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %157
  %165 = load i8**, i8*** %10, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call %struct.TYPE_12__* @createClusterNode(i8* %167, i32 0)
  store %struct.TYPE_12__* %168, %struct.TYPE_12__** %11, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %170 = call i32 @clusterAddNode(%struct.TYPE_12__* %169)
  br label %171

171:                                              ; preds = %164, %157
  %172 = load i8**, i8*** %10, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @strrchr(i8* %174, i8 signext 58)
  store i8* %175, i8** %13, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %574

178:                                              ; preds = %171
  %179 = load i8*, i8** %13, align 8
  store i8 0, i8* %179, align 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 8
  %183 = load i8**, i8*** %10, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 1
  %185 = load i8*, i8** %184, align 8
  %186 = load i8**, i8*** %10, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @strlen(i8* %188)
  %190 = add nsw i64 %189, 1
  %191 = call i32 @memcpy(i32 %182, i8* %185, i64 %190)
  %192 = load i8*, i8** %13, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  store i8* %193, i8** %15, align 8
  %194 = load i8*, i8** %15, align 8
  %195 = call i8* @strchr(i8* %194, i8 signext 64)
  store i8* %195, i8** %16, align 8
  %196 = load i8*, i8** %16, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %178
  %199 = load i8*, i8** %16, align 8
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %16, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %16, align 8
  br label %202

202:                                              ; preds = %198, %178
  %203 = load i8*, i8** %15, align 8
  %204 = call i8* @atoi(i8* %203)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i8*, i8** %16, align 8
  %211 = call i8* @atoi(i8* %210)
  br label %219

212:                                              ; preds = %202
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* @CLUSTER_PORT_INCR, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr i8, i8* %215, i64 %217
  br label %219

219:                                              ; preds = %212, %209
  %220 = phi i8* [ %211, %209 ], [ %218, %212 ]
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 8
  store i8* %220, i8** %222, align 8
  %223 = load i8**, i8*** %10, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 2
  %225 = load i8*, i8** %224, align 8
  store i8* %225, i8** %14, align 8
  store i8* %225, i8** %13, align 8
  br label %226

226:                                              ; preds = %349, %219
  %227 = load i8*, i8** %13, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %350

229:                                              ; preds = %226
  %230 = load i8*, i8** %14, align 8
  %231 = call i8* @strchr(i8* %230, i8 signext 44)
  store i8* %231, i8** %13, align 8
  %232 = load i8*, i8** %13, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load i8*, i8** %13, align 8
  store i8 0, i8* %235, align 1
  br label %236

236:                                              ; preds = %234, %229
  %237 = load i8*, i8** %14, align 8
  %238 = call i64 @strcasecmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %255, label %240

240:                                              ; preds = %236
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = icmp eq %struct.TYPE_12__* %243, null
  %245 = zext i1 %244 to i32
  %246 = call i32 @serverAssert(i32 %245)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  store %struct.TYPE_12__* %247, %struct.TYPE_12__** %249, align 8
  store %struct.TYPE_12__* %247, %struct.TYPE_12__** @myself, align 8
  %250 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %343

255:                                              ; preds = %236
  %256 = load i8*, i8** %14, align 8
  %257 = call i64 @strcasecmp(i8* %256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* @CLUSTER_NODE_MASTER, align 4
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 8
  br label %342

265:                                              ; preds = %255
  %266 = load i8*, i8** %14, align 8
  %267 = call i64 @strcasecmp(i8* %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %265
  %270 = load i32, i32* @CLUSTER_NODE_SLAVE, align 4
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %341

275:                                              ; preds = %265
  %276 = load i8*, i8** %14, align 8
  %277 = call i64 @strcasecmp(i8* %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  %280 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  br label %340

285:                                              ; preds = %275
  %286 = load i8*, i8** %14, align 8
  %287 = call i64 @strcasecmp(i8* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %285
  %290 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = call i8* (...) @mstime()
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 7
  store i8* %295, i8** %297, align 8
  br label %339

298:                                              ; preds = %285
  %299 = load i8*, i8** %14, align 8
  %300 = call i64 @strcasecmp(i8* %299, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %298
  %303 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  br label %338

308:                                              ; preds = %298
  %309 = load i8*, i8** %14, align 8
  %310 = call i64 @strcasecmp(i8* %309, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %318, label %312

312:                                              ; preds = %308
  %313 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  br label %337

318:                                              ; preds = %308
  %319 = load i8*, i8** %14, align 8
  %320 = call i64 @strcasecmp(i8* %319, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %318
  %323 = load i32, i32* @CLUSTER_NODE_NOFAILOVER, align 4
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %336

328:                                              ; preds = %318
  %329 = load i8*, i8** %14, align 8
  %330 = call i64 @strcasecmp(i8* %329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %328
  br label %335

333:                                              ; preds = %328
  %334 = call i32 @serverPanic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  br label %335

335:                                              ; preds = %333, %332
  br label %336

336:                                              ; preds = %335, %322
  br label %337

337:                                              ; preds = %336, %312
  br label %338

338:                                              ; preds = %337, %302
  br label %339

339:                                              ; preds = %338, %289
  br label %340

340:                                              ; preds = %339, %279
  br label %341

341:                                              ; preds = %340, %269
  br label %342

342:                                              ; preds = %341, %259
  br label %343

343:                                              ; preds = %342, %240
  %344 = load i8*, i8** %13, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = load i8*, i8** %13, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 1
  store i8* %348, i8** %14, align 8
  br label %349

349:                                              ; preds = %346, %343
  br label %226

350:                                              ; preds = %226
  %351 = load i8**, i8*** %10, align 8
  %352 = getelementptr inbounds i8*, i8** %351, i64 3
  %353 = load i8*, i8** %352, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 0
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp ne i32 %356, 45
  br i1 %357, label %358, label %379

358:                                              ; preds = %350
  %359 = load i8**, i8*** %10, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i64 3
  %361 = load i8*, i8** %360, align 8
  %362 = call %struct.TYPE_12__* @clusterLookupNode(i8* %361)
  store %struct.TYPE_12__* %362, %struct.TYPE_12__** %12, align 8
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %364 = icmp ne %struct.TYPE_12__* %363, null
  br i1 %364, label %372, label %365

365:                                              ; preds = %358
  %366 = load i8**, i8*** %10, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i64 3
  %368 = load i8*, i8** %367, align 8
  %369 = call %struct.TYPE_12__* @createClusterNode(i8* %368, i32 0)
  store %struct.TYPE_12__* %369, %struct.TYPE_12__** %12, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %371 = call i32 @clusterAddNode(%struct.TYPE_12__* %370)
  br label %372

372:                                              ; preds = %365, %358
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 5
  store %struct.TYPE_12__* %373, %struct.TYPE_12__** %375, align 8
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %378 = call i32 @clusterNodeAddSlave(%struct.TYPE_12__* %376, %struct.TYPE_12__* %377)
  br label %379

379:                                              ; preds = %372, %350
  %380 = load i8**, i8*** %10, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 4
  %382 = load i8*, i8** %381, align 8
  %383 = call i8* @atoi(i8* %382)
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %389

385:                                              ; preds = %379
  %386 = call i8* (...) @mstime()
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 4
  store i8* %386, i8** %388, align 8
  br label %389

389:                                              ; preds = %385, %379
  %390 = load i8**, i8*** %10, align 8
  %391 = getelementptr inbounds i8*, i8** %390, i64 5
  %392 = load i8*, i8** %391, align 8
  %393 = call i8* @atoi(i8* %392)
  %394 = icmp ne i8* %393, null
  br i1 %394, label %395, label %399

395:                                              ; preds = %389
  %396 = call i8* (...) @mstime()
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 3
  store i8* %396, i8** %398, align 8
  br label %399

399:                                              ; preds = %395, %389
  %400 = load i8**, i8*** %10, align 8
  %401 = getelementptr inbounds i8*, i8** %400, i64 6
  %402 = load i8*, i8** %401, align 8
  %403 = call i8* @strtoull(i8* %402, i32* null, i32 10)
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 2
  store i8* %403, i8** %405, align 8
  store i32 8, i32* %8, align 4
  br label %406

406:                                              ; preds = %540, %399
  %407 = load i32, i32* %8, align 4
  %408 = load i32, i32* %9, align 4
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %410, label %543

410:                                              ; preds = %406
  %411 = load i8**, i8*** %10, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8*, i8** %411, i64 %413
  %415 = load i8*, i8** %414, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 0
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 91
  br i1 %419, label %420, label %483

420:                                              ; preds = %410
  %421 = load i8**, i8*** %10, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8*, i8** %421, i64 %423
  %425 = load i8*, i8** %424, align 8
  %426 = call i8* @strchr(i8* %425, i8 signext 45)
  store i8* %426, i8** %13, align 8
  %427 = load i8*, i8** %13, align 8
  %428 = icmp ne i8* %427, null
  %429 = zext i1 %428 to i32
  %430 = call i32 @serverAssert(i32 %429)
  %431 = load i8*, i8** %13, align 8
  store i8 0, i8* %431, align 1
  %432 = load i8*, i8** %13, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 1
  %434 = load i8, i8* %433, align 1
  store i8 %434, i8* %20, align 1
  %435 = load i8**, i8*** %10, align 8
  %436 = load i32, i32* %8, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8*, i8** %435, i64 %437
  %439 = load i8*, i8** %438, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 1
  %441 = call i8* @atoi(i8* %440)
  %442 = ptrtoint i8* %441 to i32
  store i32 %442, i32* %19, align 4
  %443 = load i32, i32* %19, align 4
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %449, label %445

445:                                              ; preds = %420
  %446 = load i32, i32* %19, align 4
  %447 = load i32, i32* @CLUSTER_SLOTS, align 4
  %448 = icmp sge i32 %446, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %445, %420
  br label %574

450:                                              ; preds = %445
  %451 = load i8*, i8** %13, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 3
  store i8* %452, i8** %13, align 8
  %453 = load i8*, i8** %13, align 8
  %454 = call %struct.TYPE_12__* @clusterLookupNode(i8* %453)
  store %struct.TYPE_12__* %454, %struct.TYPE_12__** %21, align 8
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %456 = icmp ne %struct.TYPE_12__* %455, null
  br i1 %456, label %462, label %457

457:                                              ; preds = %450
  %458 = load i8*, i8** %13, align 8
  %459 = call %struct.TYPE_12__* @createClusterNode(i8* %458, i32 0)
  store %struct.TYPE_12__* %459, %struct.TYPE_12__** %21, align 8
  %460 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %461 = call i32 @clusterAddNode(%struct.TYPE_12__* %460)
  br label %462

462:                                              ; preds = %457, %450
  %463 = load i8, i8* %20, align 1
  %464 = sext i8 %463 to i32
  %465 = icmp eq i32 %464, 62
  br i1 %465, label %466, label %474

466:                                              ; preds = %462
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 3
  %470 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %469, align 8
  %471 = load i32, i32* %19, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %470, i64 %472
  store %struct.TYPE_12__* %467, %struct.TYPE_12__** %473, align 8
  br label %482

474:                                              ; preds = %462
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i32 0, i32 2
  %478 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %477, align 8
  %479 = load i32, i32* %19, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %478, i64 %480
  store %struct.TYPE_12__* %475, %struct.TYPE_12__** %481, align 8
  br label %482

482:                                              ; preds = %474, %466
  br label %540

483:                                              ; preds = %410
  %484 = load i8**, i8*** %10, align 8
  %485 = load i32, i32* %8, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8*, i8** %484, i64 %486
  %488 = load i8*, i8** %487, align 8
  %489 = call i8* @strchr(i8* %488, i8 signext 45)
  store i8* %489, i8** %13, align 8
  %490 = icmp ne i8* %489, null
  br i1 %490, label %491, label %504

491:                                              ; preds = %483
  %492 = load i8*, i8** %13, align 8
  store i8 0, i8* %492, align 1
  %493 = load i8**, i8*** %10, align 8
  %494 = load i32, i32* %8, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8*, i8** %493, i64 %495
  %497 = load i8*, i8** %496, align 8
  %498 = call i8* @atoi(i8* %497)
  %499 = ptrtoint i8* %498 to i32
  store i32 %499, i32* %17, align 4
  %500 = load i8*, i8** %13, align 8
  %501 = getelementptr inbounds i8, i8* %500, i64 1
  %502 = call i8* @atoi(i8* %501)
  %503 = ptrtoint i8* %502 to i32
  store i32 %503, i32* %18, align 4
  br label %512

504:                                              ; preds = %483
  %505 = load i8**, i8*** %10, align 8
  %506 = load i32, i32* %8, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8*, i8** %505, i64 %507
  %509 = load i8*, i8** %508, align 8
  %510 = call i8* @atoi(i8* %509)
  %511 = ptrtoint i8* %510 to i32
  store i32 %511, i32* %18, align 4
  store i32 %511, i32* %17, align 4
  br label %512

512:                                              ; preds = %504, %491
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %17, align 4
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %520, label %516

516:                                              ; preds = %513
  %517 = load i32, i32* %17, align 4
  %518 = load i32, i32* @CLUSTER_SLOTS, align 4
  %519 = icmp sge i32 %517, %518
  br i1 %519, label %520, label %521

520:                                              ; preds = %516, %513
  br label %574

521:                                              ; preds = %516
  %522 = load i32, i32* %18, align 4
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %528, label %524

524:                                              ; preds = %521
  %525 = load i32, i32* %18, align 4
  %526 = load i32, i32* @CLUSTER_SLOTS, align 4
  %527 = icmp sge i32 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %524, %521
  br label %574

529:                                              ; preds = %524
  br label %530

530:                                              ; preds = %534, %529
  %531 = load i32, i32* %17, align 4
  %532 = load i32, i32* %18, align 4
  %533 = icmp sle i32 %531, %532
  br i1 %533, label %534, label %539

534:                                              ; preds = %530
  %535 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %536 = load i32, i32* %17, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %17, align 4
  %538 = call i32 @clusterAddSlot(%struct.TYPE_12__* %535, i32 %536)
  br label %530

539:                                              ; preds = %530
  br label %540

540:                                              ; preds = %539, %482
  %541 = load i32, i32* %8, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %8, align 4
  br label %406

543:                                              ; preds = %406
  %544 = load i8**, i8*** %10, align 8
  %545 = load i32, i32* %9, align 4
  %546 = call i32 @sdsfreesplitres(i8** %544, i32 %545)
  br label %58

547:                                              ; preds = %58
  %548 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %549 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %548, i32 0, i32 1
  %550 = load %struct.TYPE_12__*, %struct.TYPE_12__** %549, align 8
  %551 = icmp eq %struct.TYPE_12__* %550, null
  br i1 %551, label %552, label %553

552:                                              ; preds = %547
  br label %574

553:                                              ; preds = %547
  %554 = load i8*, i8** %6, align 8
  %555 = call i32 @zfree(i8* %554)
  %556 = load i32*, i32** %4, align 8
  %557 = call i32 @fclose(i32* %556)
  %558 = load i32, i32* @LL_NOTICE, align 4
  %559 = load %struct.TYPE_12__*, %struct.TYPE_12__** @myself, align 8
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 8
  %562 = call i32 (i32, i8*, ...) @serverLog(i32 %558, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %561)
  %563 = call i64 (...) @clusterGetMaxEpoch()
  %564 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = icmp sgt i64 %563, %566
  br i1 %567, label %568, label %572

568:                                              ; preds = %553
  %569 = call i64 (...) @clusterGetMaxEpoch()
  %570 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i32 0, i32 0
  store i64 %569, i64* %571, align 8
  br label %572

572:                                              ; preds = %568, %553
  %573 = load i32, i32* @C_OK, align 4
  store i32 %573, i32* %2, align 4
  br label %586

574:                                              ; preds = %552, %528, %520, %449, %177, %156, %93, %82
  %575 = load i32, i32* @LL_WARNING, align 4
  %576 = call i32 (i32, i8*, ...) @serverLog(i32 %575, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  %577 = load i8*, i8** %6, align 8
  %578 = call i32 @zfree(i8* %577)
  %579 = load i32*, i32** %4, align 8
  %580 = icmp ne i32* %579, null
  br i1 %580, label %581, label %584

581:                                              ; preds = %574
  %582 = load i32*, i32** %4, align 8
  %583 = call i32 @fclose(i32* %582)
  br label %584

584:                                              ; preds = %581, %574
  %585 = call i32 @exit(i32 1) #3
  unreachable

586:                                              ; preds = %572, %48, %30
  %587 = load i32, i32* %2, align 4
  ret i32 %587
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

declare dso_local %struct.TYPE_12__* @clusterLookupNode(i8*) #1

declare dso_local %struct.TYPE_12__* @createClusterNode(i8*, i32) #1

declare dso_local i32 @clusterAddNode(%struct.TYPE_12__*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i8* @mstime(...) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @clusterNodeAddSlave(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @clusterAddSlot(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i64 @clusterGetMaxEpoch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
