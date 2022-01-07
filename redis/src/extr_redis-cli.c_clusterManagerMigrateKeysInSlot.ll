; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerMigrateKeysInSlot.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerMigrateKeysInSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i32, i8*, i64 }
%struct.TYPE_26__ = type { i8* }

@config = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@CLUSTER_MANAGER_CMD_FLAG_FIX = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_CMD_FLAG_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CLUSTER GETKEYSINSLOT %d %d\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"BUSYKEY\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"*** Slot was not served, setting owner to node %s:%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\0A*** Target key exists\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"*** Checking key values on both nodes...\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"*** Value check failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [141 x i8] c"*** Found %d key(s) in both source node and target node having different values.\0A    Source node: %s:%d\0A    Target node: %s:%d\0A    Keys(s):\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"    - %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [132 x i8] c"Please fix the above key(s) manually and try again or relaunch the command \0Awith --cluster-replace option to force key overriding.\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"*** Replacing target keys...\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_27__*, i32, i32, i32, i32, i8**)* @clusterManagerMigrateKeysInSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerMigrateKeysInSlot(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_27__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_26__*, align 8
  %30 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  store i32 1, i32* %16, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @config, i32 0, i32 0, i32 0), align 4
  %32 = load i32, i32* @CLUSTER_MANAGER_CMD_FLAG_FIX, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @config, i32 0, i32 0, i32 0), align 4
  %35 = load i32, i32* @CLUSTER_MANAGER_CMD_FLAG_REPLACE, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %18, align 4
  br label %37

37:                                               ; preds = %7, %317
  store i8* null, i8** %19, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %21, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call %struct.TYPE_25__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_27__* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %20, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %43 = icmp ne %struct.TYPE_25__* %42, null
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %320

48:                                               ; preds = %37
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  store i32 0, i32* %16, align 4
  %55 = load i8**, i8*** %15, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i8* @zmalloc(i32 %64)
  %66 = load i8**, i8*** %15, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %15, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcpy(i8* %68, i8* %71)
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %74 = load i8**, i8*** %15, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_27__* %73, i8* %75)
  br label %77

77:                                               ; preds = %57, %54
  br label %295

78:                                               ; preds = %48
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %22, align 8
  %89 = load i64, i64* %22, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %93 = call i32 @freeReplyObject(%struct.TYPE_25__* %92)
  br label %318

94:                                               ; preds = %78
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i64, i64* %22, align 8
  %99 = add i64 %98, 1
  %100 = mul i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i8* @zmalloc(i32 %101)
  store i8* %102, i8** %19, align 8
  br label %103

103:                                              ; preds = %97, %94
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i8*, i8** %19, align 8
  %109 = call %struct.TYPE_25__* @clusterManagerMigrateKeysInReply(%struct.TYPE_27__* %104, %struct.TYPE_27__* %105, %struct.TYPE_25__* %106, i32 0, i32 %107, i8* %108)
  store %struct.TYPE_25__* %109, %struct.TYPE_25__** %21, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %111 = icmp eq %struct.TYPE_25__* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %295

113:                                              ; preds = %103
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %286

119:                                              ; preds = %113
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32* @strstr(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %126 = load i32, i32* %23, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %119
  store i8* null, i8** %25, align 8
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call %struct.TYPE_27__* @clusterManagerGetSlotOwner(%struct.TYPE_27__* %129, i32 %130, i8** %25)
  store %struct.TYPE_27__* %131, %struct.TYPE_27__** %26, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %133 = icmp ne %struct.TYPE_27__* %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %128
  %135 = load i8*, i8** %25, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %24, align 4
  br label %144

138:                                              ; preds = %134
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %140 = load i8*, i8** %25, align 8
  %141 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_27__* %139, i8* %140)
  %142 = load i8*, i8** %25, align 8
  %143 = call i32 @zfree(i8* %142)
  br label %144

144:                                              ; preds = %138, %137
  br label %145

145:                                              ; preds = %144, %128
  br label %146

146:                                              ; preds = %145, %119
  %147 = load i32, i32* %23, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %251

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %152
  %156 = load i32, i32* %24, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @clusterManagerLogWarn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %164)
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @clusterManagerSetSlot(%struct.TYPE_27__* %166, %struct.TYPE_27__* %167, i32 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %170

170:                                              ; preds = %158, %155, %152
  %171 = load i32, i32* %23, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %231

173:                                              ; preds = %170
  %174 = call i32 (i8*, ...) @clusterManagerLogWarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %229, label %177

177:                                              ; preds = %173
  %178 = call i32 (i8*, ...) @clusterManagerLogWarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %179 = call i32* (...) @listCreate()
  store i32* %179, i32** %27, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %183 = load i32*, i32** %27, align 8
  %184 = call i32 @clusterManagerCompareKeysValues(%struct.TYPE_27__* %180, %struct.TYPE_27__* %181, %struct.TYPE_25__* %182, i32* %183)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %177
  %188 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32*, i32** %27, align 8
  %190 = call i32 @listRelease(i32* %189)
  br label %295

191:                                              ; preds = %177
  %192 = load i32*, i32** %27, align 8
  %193 = call i64 @listLength(i32* %192)
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %226

195:                                              ; preds = %191
  store i32 0, i32* %16, align 4
  %196 = load i32*, i32** %27, align 8
  %197 = call i64 @listLength(i32* %196)
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.7, i64 0, i64 0), i64 %197, i32 %200, i32 %203, i32 %206, i32 %209)
  %211 = load i32*, i32** %27, align 8
  %212 = call i32 @listRewind(i32* %211, i32* %28)
  br label %213

213:                                              ; preds = %216, %195
  %214 = call %struct.TYPE_26__* @listNext(i32* %28)
  store %struct.TYPE_26__* %214, %struct.TYPE_26__** %29, align 8
  %215 = icmp ne %struct.TYPE_26__* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  store i8* %219, i8** %30, align 8
  %220 = load i8*, i8** %30, align 8
  %221 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %220)
  br label %213

222:                                              ; preds = %213
  %223 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.9, i64 0, i64 0))
  %224 = load i32*, i32** %27, align 8
  %225 = call i32 @listRelease(i32* %224)
  br label %295

226:                                              ; preds = %191
  %227 = load i32*, i32** %27, align 8
  %228 = call i32 @listRelease(i32* %227)
  br label %229

229:                                              ; preds = %226, %173
  %230 = call i32 (i8*, ...) @clusterManagerLogWarn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %170
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %233 = call i32 @freeReplyObject(%struct.TYPE_25__* %232)
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %12, align 4
  %239 = call %struct.TYPE_25__* @clusterManagerMigrateKeysInReply(%struct.TYPE_27__* %234, %struct.TYPE_27__* %235, %struct.TYPE_25__* %236, i32 %237, i32 %238, i8* null)
  store %struct.TYPE_25__* %239, %struct.TYPE_25__** %21, align 8
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %241 = icmp ne %struct.TYPE_25__* %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %231
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %247 = icmp ne i64 %245, %246
  br label %248

248:                                              ; preds = %242, %231
  %249 = phi i1 [ false, %231 ], [ %247, %242 ]
  %250 = zext i1 %249 to i32
  store i32 %250, i32* %16, align 4
  br label %252

251:                                              ; preds = %149
  store i32 0, i32* %16, align 4
  br label %252

252:                                              ; preds = %251, %248
  %253 = load i32, i32* %16, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %285, label %255

255:                                              ; preds = %252
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %257 = icmp ne %struct.TYPE_25__* %256, null
  br i1 %257, label %258, label %284

258:                                              ; preds = %255
  %259 = load i8**, i8*** %15, align 8
  %260 = icmp ne i8** %259, null
  br i1 %260, label %261, label %277

261:                                              ; preds = %258
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = mul i64 %266, 1
  %268 = trunc i64 %267 to i32
  %269 = call i8* @zmalloc(i32 %268)
  %270 = load i8**, i8*** %15, align 8
  store i8* %269, i8** %270, align 8
  %271 = load i8**, i8*** %15, align 8
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 2
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 @strcpy(i8* %272, i8* %275)
  br label %277

277:                                              ; preds = %261, %258
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_27__* %279, i8* %282)
  br label %284

284:                                              ; preds = %277, %255
  br label %295

285:                                              ; preds = %252
  br label %286

286:                                              ; preds = %285, %113
  %287 = load i32, i32* %14, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %286
  %290 = load i8*, i8** %19, align 8
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %290)
  %292 = load i32, i32* @stdout, align 4
  %293 = call i32 @fflush(i32 %292)
  br label %294

294:                                              ; preds = %289, %286
  br label %295

295:                                              ; preds = %294, %284, %222, %187, %112, %77
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %297 = icmp ne %struct.TYPE_25__* %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %300 = call i32 @freeReplyObject(%struct.TYPE_25__* %299)
  br label %301

301:                                              ; preds = %298, %295
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %303 = icmp ne %struct.TYPE_25__* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %306 = call i32 @freeReplyObject(%struct.TYPE_25__* %305)
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i8*, i8** %19, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i8*, i8** %19, align 8
  %312 = call i32 @zfree(i8* %311)
  br label %313

313:                                              ; preds = %310, %307
  %314 = load i32, i32* %16, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %313
  br label %318

317:                                              ; preds = %313
  br label %37

318:                                              ; preds = %316, %91
  %319 = load i32, i32* %16, align 4
  store i32 %319, i32* %8, align 4
  br label %320

320:                                              ; preds = %318, %47
  %321 = load i32, i32* %8, align 4
  ret i32 %321
}

declare dso_local %struct.TYPE_25__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_27__*, i8*, i32, i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @clusterManagerMigrateKeysInReply(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32, i32, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local %struct.TYPE_27__* @clusterManagerGetSlotOwner(%struct.TYPE_27__*, i32, i8**) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32 @clusterManagerLogWarn(i8*, ...) #1

declare dso_local i32 @clusterManagerSetSlot(%struct.TYPE_27__*, %struct.TYPE_27__*, i32, i8*, i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i32 @clusterManagerCompareKeysValues(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, ...) #1

declare dso_local i32 @listRelease(i32*) #1

declare dso_local i64 @listLength(i32*) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @listNext(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
