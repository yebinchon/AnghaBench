; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_getNodeByQuery.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_getNodeByQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_21__**, i32**, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__**, %struct.redisCommand* }
%struct.redisCommand = type { i64, i32 }
%struct.TYPE_18__ = type { i64 }

@server = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@CLUSTER_MODULE_FLAG_NO_REDIRECTION = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_21__* null, align 8
@CLUSTER_REDIR_NONE = common dso_local global i32 0, align 4
@execCommand = common dso_local global i64 0, align 8
@CLIENT_MULTI = common dso_local global i32 0, align 4
@CLUSTER_REDIR_DOWN_UNBOUND = common dso_local global i32 0, align 4
@CLUSTER_REDIR_CROSS_SLOT = common dso_local global i32 0, align 4
@CLUSTER_OK = common dso_local global i64 0, align 8
@CLUSTER_REDIR_DOWN_STATE = common dso_local global i32 0, align 4
@migrateCommand = common dso_local global i64 0, align 8
@CLUSTER_REDIR_ASK = common dso_local global i32 0, align 4
@CLIENT_ASKING = common dso_local global i32 0, align 4
@CMD_ASKING = common dso_local global i32 0, align 4
@CLUSTER_REDIR_UNSTABLE = common dso_local global i32 0, align 4
@CLIENT_READONLY = common dso_local global i32 0, align 4
@CMD_READONLY = common dso_local global i32 0, align 4
@evalCommand = common dso_local global i64 0, align 8
@evalShaCommand = common dso_local global i64 0, align 8
@CLUSTER_REDIR_MOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @getNodeByQuery(%struct.TYPE_22__* %0, %struct.redisCommand* %1, %struct.TYPE_18__** %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.redisCommand*, align 8
  %10 = alloca %struct.TYPE_18__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca %struct.TYPE_20__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.redisCommand*, align 8
  %26 = alloca %struct.TYPE_18__**, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_18__*, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store %struct.redisCommand* %1, %struct.redisCommand** %9, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %34 = load i32, i32* @CLUSTER_MODULE_FLAG_NO_REDIRECTION, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %7, align 8
  br label %366

39:                                               ; preds = %6
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @CLUSTER_REDIR_NONE, align 4
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %47 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @execCommand, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CLIENT_MULTI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %7, align 8
  br label %366

60:                                               ; preds = %51
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %17, align 8
  br label %72

63:                                               ; preds = %45
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  store %struct.TYPE_18__** %66, %struct.TYPE_18__*** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  store %struct.redisCommand* %70, %struct.redisCommand** %71, align 8
  br label %72

72:                                               ; preds = %63, %60
  store i32 0, i32* %20, align 4
  br label %73

73:                                               ; preds = %223, %72
  %74 = load i32, i32* %20, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %226

79:                                               ; preds = %73
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 2
  %87 = load %struct.redisCommand*, %struct.redisCommand** %86, align 8
  store %struct.redisCommand* %87, %struct.redisCommand** %25, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %27, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %102, align 8
  store %struct.TYPE_18__** %103, %struct.TYPE_18__*** %26, align 8
  %104 = load %struct.redisCommand*, %struct.redisCommand** %25, align 8
  %105 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %26, align 8
  %106 = load i32, i32* %27, align 4
  %107 = call i32* @getKeysFromCommand(%struct.redisCommand* %104, %struct.TYPE_18__** %105, i32 %106, i32* %29)
  store i32* %107, i32** %28, align 8
  store i32 0, i32* %30, align 4
  br label %108

108:                                              ; preds = %217, %79
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* %29, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %220

112:                                              ; preds = %108
  %113 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %26, align 8
  %114 = load i32*, i32** %28, align 8
  %115 = load i32, i32* %30, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %113, i64 %119
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  store %struct.TYPE_18__* %121, %struct.TYPE_18__** %31, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @sdslen(i64 %128)
  %130 = call i32 @keyHashSlot(i8* %125, i32 %129)
  store i32 %130, i32* %32, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %132 = icmp eq %struct.TYPE_18__* %131, null
  br i1 %132, label %133, label %180

133:                                              ; preds = %112
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %134, %struct.TYPE_18__** %15, align 8
  %135 = load i32, i32* %32, align 4
  store i32 %135, i32* %21, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %137, align 8
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %138, i64 %140
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %141, align 8
  store %struct.TYPE_21__* %142, %struct.TYPE_21__** %14, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %144 = icmp eq %struct.TYPE_21__* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %133
  %146 = load i32*, i32** %28, align 8
  %147 = call i32 @getKeysFreeResult(i32* %146)
  %148 = load i32*, i32** %13, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* @CLUSTER_REDIR_DOWN_UNBOUND, align 4
  %152 = load i32*, i32** %13, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %145
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %366

154:                                              ; preds = %133
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  %157 = icmp eq %struct.TYPE_21__* %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %160, align 8
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %161, i64 %163
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = icmp ne %struct.TYPE_21__* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 1, i32* %22, align 4
  br label %179

168:                                              ; preds = %158, %154
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  store i32 1, i32* %23, align 4
  br label %178

178:                                              ; preds = %177, %168
  br label %179

179:                                              ; preds = %178, %167
  br label %201

180:                                              ; preds = %112
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %183 = call i32 @equalStringObjects(%struct.TYPE_18__* %181, %struct.TYPE_18__* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %200, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %32, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i32*, i32** %28, align 8
  %191 = call i32 @getKeysFreeResult(i32* %190)
  %192 = load i32*, i32** %13, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i32, i32* @CLUSTER_REDIR_CROSS_SLOT, align 4
  %196 = load i32*, i32** %13, align 8
  store i32 %195, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %189
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %366

198:                                              ; preds = %185
  store i32 1, i32* %16, align 4
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %180
  br label %201

201:                                              ; preds = %200, %179
  %202 = load i32, i32* %22, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %23, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204, %201
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 2), align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %211 = call i32* @lookupKeyRead(i32* %209, %struct.TYPE_18__* %210)
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i32, i32* %24, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %24, align 4
  br label %216

216:                                              ; preds = %213, %207, %204
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %30, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %30, align 4
  br label %108

220:                                              ; preds = %108
  %221 = load i32*, i32** %28, align 8
  %222 = call i32 @getKeysFreeResult(i32* %221)
  br label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %20, align 4
  br label %73

226:                                              ; preds = %73
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %228 = icmp eq %struct.TYPE_21__* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  store %struct.TYPE_21__* %230, %struct.TYPE_21__** %7, align 8
  br label %366

231:                                              ; preds = %226
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @CLUSTER_OK, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %231
  %238 = load i32*, i32** %13, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* @CLUSTER_REDIR_DOWN_STATE, align 4
  %242 = load i32*, i32** %13, align 8
  store i32 %241, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %237
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %366

244:                                              ; preds = %231
  %245 = load i32*, i32** %12, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i32, i32* %21, align 4
  %249 = load i32*, i32** %12, align 8
  store i32 %248, i32* %249, align 4
  br label %250

250:                                              ; preds = %247, %244
  %251 = load i32, i32* %22, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %23, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %253, %250
  %257 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %258 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @migrateCommand, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  store %struct.TYPE_21__* %263, %struct.TYPE_21__** %7, align 8
  br label %366

264:                                              ; preds = %256, %253
  %265 = load i32, i32* %22, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %284

267:                                              ; preds = %264
  %268 = load i32, i32* %24, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %284

270:                                              ; preds = %267
  %271 = load i32*, i32** %13, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* @CLUSTER_REDIR_ASK, align 4
  %275 = load i32*, i32** %13, align 8
  store i32 %274, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %278, align 8
  %280 = load i32, i32* %21, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %279, i64 %281
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %282, align 8
  store %struct.TYPE_21__* %283, %struct.TYPE_21__** %7, align 8
  br label %366

284:                                              ; preds = %267, %264
  %285 = load i32, i32* %23, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %316

287:                                              ; preds = %284
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @CLIENT_ASKING, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %301, label %294

294:                                              ; preds = %287
  %295 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %296 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @CMD_ASKING, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %316

301:                                              ; preds = %294, %287
  %302 = load i32, i32* %16, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %314

304:                                              ; preds = %301
  %305 = load i32, i32* %24, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %304
  %308 = load i32*, i32** %13, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, i32* @CLUSTER_REDIR_UNSTABLE, align 4
  %312 = load i32*, i32** %13, align 8
  store i32 %311, i32* %312, align 4
  br label %313

313:                                              ; preds = %310, %307
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %366

314:                                              ; preds = %304, %301
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  store %struct.TYPE_21__* %315, %struct.TYPE_21__** %7, align 8
  br label %366

316:                                              ; preds = %294, %284
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @CLIENT_READONLY, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %354

323:                                              ; preds = %316
  %324 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %325 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @CMD_READONLY, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %342, label %330

330:                                              ; preds = %323
  %331 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %332 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @evalCommand, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %342, label %336

336:                                              ; preds = %330
  %337 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8
  %338 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @evalShaCommand, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %354

342:                                              ; preds = %336, %330, %323
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  %344 = call i64 @nodeIsSlave(%struct.TYPE_21__* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %342
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %348, align 8
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %351 = icmp eq %struct.TYPE_21__* %349, %350
  br i1 %351, label %352, label %354

352:                                              ; preds = %346
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  store %struct.TYPE_21__* %353, %struct.TYPE_21__** %7, align 8
  br label %366

354:                                              ; preds = %346, %342, %336, %316
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** @myself, align 8
  %357 = icmp ne %struct.TYPE_21__* %355, %356
  br i1 %357, label %358, label %364

358:                                              ; preds = %354
  %359 = load i32*, i32** %13, align 8
  %360 = icmp ne i32* %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load i32, i32* @CLUSTER_REDIR_MOVED, align 4
  %363 = load i32*, i32** %13, align 8
  store i32 %362, i32* %363, align 4
  br label %364

364:                                              ; preds = %361, %358, %354
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %365, %struct.TYPE_21__** %7, align 8
  br label %366

366:                                              ; preds = %364, %352, %314, %313, %276, %262, %243, %229, %197, %153, %58, %37
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %367
}

declare dso_local i32* @getKeysFromCommand(%struct.redisCommand*, %struct.TYPE_18__**, i32, i32*) #1

declare dso_local i32 @keyHashSlot(i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @getKeysFreeResult(i32*) #1

declare dso_local i32 @equalStringObjects(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32* @lookupKeyRead(i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @nodeIsSlave(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
