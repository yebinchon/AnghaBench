; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandRebalance.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandRebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i8**, i32, i32, float }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_20__ = type { float, i32, i64, i32, i8*, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }

@config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"*** No such master node %s\0A\00", align 1
@CLUSTER_MANAGER_CMD_FLAG_EMPTYMASTER = common dso_local global i32 0, align 4
@cluster_manager = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"*** Please fix your cluster problems before rebalancing\0A\00", align 1
@CLUSTER_MANAGER_SLOTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"*** No rebalancing needed! All nodes are within the %.2f%% threshold.\0A\00", align 1
@clusterManagerCompareNodeBalance = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c">>> Rebalancing across %d nodes. Total weight = %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s:%d balance is %d slots\0A\00", align 1
@CLUSTER_MANAGER_CMD_FLAG_SIMULATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Moving %d slots from %s:%d to %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"*** Assertion failed: Reshard table != number of slots\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@CLUSTER_MANAGER_OPT_QUIET = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_OPT_UPDATE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_INVALID_HOST_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clusterManagerCommandRebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerCommandRebalance(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca %struct.TYPE_20__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca %struct.TYPE_20__*, align 8
  %31 = alloca %struct.TYPE_20__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_20__*, align 8
  %36 = alloca %struct.TYPE_20__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store %struct.TYPE_20__** null, %struct.TYPE_20__*** %8, align 8
  store i32* null, i32** %9, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = call i32 @getClusterHostFromCmdArgs(i32 %45, i8** %46, i8** %7, i32* %6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %2
  br label %480

50:                                               ; preds = %2
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.TYPE_20__* @clusterManagerNewNode(i8* %51, i32 %52)
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %10, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %55 = call i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_20__* %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %484

58:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  %59 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0, i32 0), align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %97

61:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %93, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0, i32 1), align 8
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0, i32 0), align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 61)
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %466

77:                                               ; preds = %66
  %78 = load i8*, i8** %14, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %14, align 8
  %81 = call float @atof(i8* %80)
  store float %81, float* %15, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call %struct.TYPE_20__* @clusterManagerNodeByAbbreviatedName(i8* %82)
  store %struct.TYPE_20__* %83, %struct.TYPE_20__** %16, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %85 = icmp eq %struct.TYPE_20__* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %87)
  store i32 0, i32* %11, align 4
  br label %466

89:                                               ; preds = %77
  %90 = load float, float* %15, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  store float %90, float* %92, align 8
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %62

96:                                               ; preds = %62
  br label %97

97:                                               ; preds = %96, %58
  store float 0.000000e+00, float* %17, align 4
  store i32 0, i32* %18, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0, i32 2), align 4
  %99 = load i32, i32* @CLUSTER_MANAGER_CMD_FLAG_EMPTYMASTER, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %19, align 4
  %101 = call i32* (...) @listCreate()
  store i32* %101, i32** %9, align 8
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cluster_manager, i32 0, i32 1), align 8
  %103 = call i32 @listRewind(i32* %102, i32* %20)
  br label %104

104:                                              ; preds = %134, %131, %122, %97
  %105 = call %struct.TYPE_19__* @listNext(i32* %20)
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %21, align 8
  %106 = icmp ne %struct.TYPE_19__* %105, null
  br i1 %106, label %107, label %145

107:                                              ; preds = %104
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %22, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %107
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %107
  br label %104

123:                                              ; preds = %117
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  store float 0.000000e+00, float* %133, align 8
  br label %104

134:                                              ; preds = %126, %123
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load float, float* %136, align 8
  %138 = load float, float* %17, align 4
  %139 = fadd float %138, %137
  store float %139, float* %17, align 4
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %144 = call i32 @listAddNodeTail(i32* %142, %struct.TYPE_20__* %143)
  br label %104

145:                                              ; preds = %104
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 8
  %149 = trunc i64 %148 to i32
  %150 = call %struct.TYPE_20__** @zmalloc(i32 %149)
  store %struct.TYPE_20__** %150, %struct.TYPE_20__*** %8, align 8
  %151 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %152 = icmp eq %struct.TYPE_20__** %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %466

154:                                              ; preds = %145
  %155 = call i32 @clusterManagerCheckCluster(i32 1)
  %156 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cluster_manager, i32 0, i32 0), align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cluster_manager, i32 0, i32 0), align 8
  %160 = call i64 @listLength(i32* %159)
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %466

164:                                              ; preds = %158, %154
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %165 = load float, float* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0, i32 3), align 8
  store float %165, float* %25, align 4
  store i32 0, i32* %12, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = call i32 @listRewind(i32* %166, i32* %20)
  br label %168

168:                                              ; preds = %238, %164
  %169 = call %struct.TYPE_19__* @listNext(i32* %20)
  store %struct.TYPE_19__* %169, %struct.TYPE_19__** %21, align 8
  %170 = icmp ne %struct.TYPE_19__* %169, null
  br i1 %170, label %171, label %239

171:                                              ; preds = %168
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  store %struct.TYPE_20__* %174, %struct.TYPE_20__** %26, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %176 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %176, i64 %179
  store %struct.TYPE_20__* %175, %struct.TYPE_20__** %180, align 8
  %181 = load i64, i64* @CLUSTER_MANAGER_SLOTS, align 8
  %182 = sitofp i64 %181 to float
  %183 = load float, float* %17, align 4
  %184 = fdiv float %182, %183
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load float, float* %186, align 8
  %188 = fmul float %184, %187
  %189 = fptosi float %188 to i32
  store i32 %189, i32* %27, align 4
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %27, align 4
  %194 = sext i32 %193 to i64
  %195 = sub nsw i64 %192, %194
  %196 = trunc i64 %195 to i32
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %24, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %24, align 4
  store i32 0, i32* %28, align 4
  %204 = load float, float* %25, align 4
  %205 = fcmp ogt float %204, 0.000000e+00
  br i1 %205, label %206, label %234

206:                                              ; preds = %171
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %206
  %212 = load i32, i32* %27, align 4
  %213 = sitofp i32 %212 to double
  %214 = fmul double 1.000000e+02, %213
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = sitofp i64 %217 to double
  %219 = fdiv double %214, %218
  %220 = fsub double 1.000000e+02, %219
  %221 = fptosi double %220 to i32
  %222 = call float @fabs(i32 %221)
  store float %222, float* %29, align 4
  %223 = load float, float* %29, align 4
  %224 = load float, float* %25, align 4
  %225 = fcmp ogt float %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %211
  store i32 1, i32* %28, align 4
  br label %227

227:                                              ; preds = %226, %211
  br label %233

228:                                              ; preds = %206
  %229 = load i32, i32* %27, align 4
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 1, i32* %28, align 4
  br label %232

232:                                              ; preds = %231, %228
  br label %233

233:                                              ; preds = %232, %227
  br label %234

234:                                              ; preds = %233, %171
  %235 = load i32, i32* %28, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store i32 1, i32* %23, align 4
  br label %238

238:                                              ; preds = %237, %234
  br label %168

239:                                              ; preds = %168
  %240 = load i32, i32* %23, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load float, float* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0, i32 3), align 8
  %244 = call i32 @clusterManagerLogWarn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), float %243)
  br label %466

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %274, %245
  %247 = load i32, i32* %24, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %275

249:                                              ; preds = %246
  %250 = load i32*, i32** %9, align 8
  %251 = call i32 @listRewind(i32* %250, i32* %20)
  br label %252

252:                                              ; preds = %273, %249
  %253 = call %struct.TYPE_19__* @listNext(i32* %20)
  store %struct.TYPE_19__* %253, %struct.TYPE_19__** %21, align 8
  %254 = icmp ne %struct.TYPE_19__* %253, null
  br i1 %254, label %255, label %274

255:                                              ; preds = %252
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %257, align 8
  store %struct.TYPE_20__* %258, %struct.TYPE_20__** %30, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = icmp sle i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %255
  %264 = load i32, i32* %24, align 4
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %268, align 8
  %271 = load i32, i32* %24, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %24, align 4
  br label %273

273:                                              ; preds = %266, %263, %255
  br label %252

274:                                              ; preds = %252
  br label %246

275:                                              ; preds = %246
  %276 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* @clusterManagerCompareNodeBalance, align 4
  %279 = call i32 @qsort(%struct.TYPE_20__** %276, i32 %277, i32 8, i32 %278)
  %280 = load i32, i32* %18, align 4
  %281 = load float, float* %17, align 4
  %282 = call i32 @clusterManagerLogInfo(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %280, float %281)
  %283 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 1), align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %310

285:                                              ; preds = %275
  store i32 0, i32* %12, align 4
  br label %286

286:                                              ; preds = %306, %285
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %18, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %309

290:                                              ; preds = %286
  %291 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %291, i64 %293
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %294, align 8
  store %struct.TYPE_20__* %295, %struct.TYPE_20__** %31, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 4
  %298 = load i8*, i8** %297, align 8
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %298, i32 %301, i32 %304)
  br label %306

306:                                              ; preds = %290
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %12, align 4
  br label %286

309:                                              ; preds = %286
  br label %310

310:                                              ; preds = %309, %275
  store i32 0, i32* %32, align 4
  %311 = load i32, i32* %18, align 4
  %312 = sub nsw i32 %311, 1
  store i32 %312, i32* %33, align 4
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0, i32 2), align 4
  %314 = load i32, i32* @CLUSTER_MANAGER_CMD_FLAG_SIMULATE, align 4
  %315 = and i32 %313, %314
  store i32 %315, i32* %34, align 4
  br label %316

316:                                              ; preds = %464, %310
  %317 = load i32, i32* %32, align 4
  %318 = load i32, i32* %33, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %465

320:                                              ; preds = %316
  %321 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %322 = load i32, i32* %32, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %321, i64 %323
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %324, align 8
  store %struct.TYPE_20__* %325, %struct.TYPE_20__** %35, align 8
  %326 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %327 = load i32, i32* %33, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %326, i64 %328
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %329, align 8
  store %struct.TYPE_20__* %330, %struct.TYPE_20__** %36, align 8
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @abs(i32 %333) #3
  store i32 %334, i32* %37, align 4
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @abs(i32 %337) #3
  store i32 %338, i32* %38, align 4
  %339 = load i32, i32* %37, align 4
  %340 = load i32, i32* %38, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %320
  %343 = load i32, i32* %37, align 4
  br label %346

344:                                              ; preds = %320
  %345 = load i32, i32* %38, align 4
  br label %346

346:                                              ; preds = %344, %342
  %347 = phi i32 [ %343, %342 ], [ %345, %344 ]
  store i32 %347, i32* %39, align 4
  %348 = load i32, i32* %39, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %438

350:                                              ; preds = %346
  %351 = load i32, i32* %39, align 4
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 4
  %354 = load i8*, i8** %353, align 8
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 4
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 8
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %351, i8* %354, i32 %357, i8* %360, i32 %363)
  %365 = call i32* (...) @listCreate()
  store i32* %365, i32** %40, align 8
  store i32* null, i32** %41, align 8
  %366 = load i32*, i32** %40, align 8
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %368 = call i32 @listAddNodeTail(i32* %366, %struct.TYPE_20__* %367)
  %369 = load i32*, i32** %40, align 8
  %370 = load i32, i32* %39, align 4
  %371 = call i32* @clusterManagerComputeReshardTable(i32* %369, i32 %370)
  store i32* %371, i32** %41, align 8
  %372 = load i32*, i32** %40, align 8
  %373 = call i32 @listRelease(i32* %372)
  %374 = load i32*, i32** %41, align 8
  %375 = call i64 @listLength(i32* %374)
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %42, align 4
  %377 = load i32*, i32** %41, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %383

379:                                              ; preds = %350
  %380 = load i32, i32* %42, align 4
  %381 = load i32, i32* %39, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %379, %350
  %384 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %431

385:                                              ; preds = %379
  %386 = load i32, i32* %34, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %385
  store i32 0, i32* %12, align 4
  br label %389

389:                                              ; preds = %395, %388
  %390 = load i32, i32* %12, align 4
  %391 = load i32, i32* %42, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %398

393:                                              ; preds = %389
  %394 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %395

395:                                              ; preds = %393
  %396 = load i32, i32* %12, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %12, align 4
  br label %389

398:                                              ; preds = %389
  br label %429

399:                                              ; preds = %385
  %400 = load i32, i32* @CLUSTER_MANAGER_OPT_QUIET, align 4
  %401 = load i32, i32* @CLUSTER_MANAGER_OPT_UPDATE, align 4
  %402 = or i32 %400, %401
  store i32 %402, i32* %43, align 4
  %403 = load i32*, i32** %41, align 8
  %404 = call i32 @listRewind(i32* %403, i32* %20)
  br label %405

405:                                              ; preds = %424, %399
  %406 = call %struct.TYPE_19__* @listNext(i32* %20)
  store %struct.TYPE_19__* %406, %struct.TYPE_19__** %21, align 8
  %407 = icmp ne %struct.TYPE_19__* %406, null
  br i1 %407, label %408, label %428

408:                                              ; preds = %405
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %410, align 8
  store %struct.TYPE_20__* %411, %struct.TYPE_20__** %44, align 8
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 6
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %43, align 4
  %420 = call i32 @clusterManagerMoveSlot(i32 %414, %struct.TYPE_20__* %415, i32 %418, i32 %419, i32* null)
  store i32 %420, i32* %11, align 4
  %421 = load i32, i32* %11, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %408
  br label %431

424:                                              ; preds = %408
  %425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %426 = load i32, i32* @stdout, align 4
  %427 = call i32 @fflush(i32 %426)
  br label %405

428:                                              ; preds = %405
  br label %429

429:                                              ; preds = %428, %398
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %431

431:                                              ; preds = %429, %423, %383
  %432 = load i32*, i32** %41, align 8
  %433 = call i32 @clusterManagerReleaseReshardTable(i32* %432)
  %434 = load i32, i32* %11, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %431
  br label %466

437:                                              ; preds = %431
  br label %438

438:                                              ; preds = %437, %346
  %439 = load i32, i32* %39, align 4
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = add nsw i32 %442, %439
  store i32 %443, i32* %441, align 8
  %444 = load i32, i32* %39, align 4
  %445 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 8
  %448 = sub nsw i32 %447, %444
  store i32 %448, i32* %446, align 8
  %449 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 8
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %438
  %454 = load i32, i32* %32, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %32, align 4
  br label %456

456:                                              ; preds = %453, %438
  %457 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %458 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %456
  %462 = load i32, i32* %33, align 4
  %463 = add nsw i32 %462, -1
  store i32 %463, i32* %33, align 4
  br label %464

464:                                              ; preds = %461, %456
  br label %316

465:                                              ; preds = %316
  br label %466

466:                                              ; preds = %465, %436, %242, %162, %153, %86, %76
  %467 = load i32*, i32** %9, align 8
  %468 = icmp ne i32* %467, null
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = load i32*, i32** %9, align 8
  %471 = call i32 @listRelease(i32* %470)
  br label %472

472:                                              ; preds = %469, %466
  %473 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %474 = icmp ne %struct.TYPE_20__** %473, null
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %477 = call i32 @zfree(%struct.TYPE_20__** %476)
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i32, i32* %11, align 4
  store i32 %479, i32* %3, align 4
  br label %484

480:                                              ; preds = %49
  %481 = load i32, i32* @stderr, align 4
  %482 = load i8*, i8** @CLUSTER_MANAGER_INVALID_HOST_ARG, align 8
  %483 = call i32 @fprintf(i32 %481, i8* %482)
  store i32 0, i32* %3, align 4
  br label %484

484:                                              ; preds = %480, %478, %57
  %485 = load i32, i32* %3, align 4
  ret i32 %485
}

declare dso_local i32 @getClusterHostFromCmdArgs(i32, i8**, i8**, i32*) #1

declare dso_local %struct.TYPE_20__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_20__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local float @atof(i8*) #1

declare dso_local %struct.TYPE_20__* @clusterManagerNodeByAbbreviatedName(i8*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, ...) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @listNext(i32*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__** @zmalloc(i32) #1

declare dso_local i32 @clusterManagerCheckCluster(i32) #1

declare dso_local i64 @listLength(i32*) #1

declare dso_local float @fabs(i32) #1

declare dso_local i32 @clusterManagerLogWarn(i8*, float) #1

declare dso_local i32 @qsort(%struct.TYPE_20__**, i32, i32, i32) #1

declare dso_local i32 @clusterManagerLogInfo(i8*, i32, float) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32* @clusterManagerComputeReshardTable(i32*, i32) #1

declare dso_local i32 @listRelease(i32*) #1

declare dso_local i32 @clusterManagerMoveSlot(i32, %struct.TYPE_20__*, i32, i32, i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @clusterManagerReleaseReshardTable(i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_20__**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
