; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandReshard.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandReshard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@cluster_manager = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"*** Please fix your cluster problems before resharding\0A\00", align 1
@config = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@CLUSTER_MANAGER_SLOTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"How many slots do you want to move (from 1 to %d)? \00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"What is the receiving node ID? \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Please enter all the source node IDs.\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"  Type 'all' to use all the nodes as source nodes for the hash slots.\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"  Type 'done' once you entered all the source nodes IDs.\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Source node #%lu: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"*** No source nodes given, operation aborted.\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\0AReady to move %d slots.\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"  Source nodes:\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"  Destination node:\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"  Resharding plan:\0A\00", align 1
@CLUSTER_MANAGER_CMD_FLAG_YES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [65 x i8] c"Do you want to proceed with the proposed reshard plan (yes/no)? \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@CLUSTER_MANAGER_OPT_VERBOSE = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_INVALID_HOST_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clusterManagerCommandReshard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerCommandReshard(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [255 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_17__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_17__*, align 8
  %32 = alloca %struct.TYPE_17__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_16__*, align 8
  %35 = alloca %struct.TYPE_17__*, align 8
  %36 = alloca %struct.TYPE_17__*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca [4 x i8], align 1
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_17__*, align 8
  %43 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @getClusterHostFromCmdArgs(i32 %44, i8** %45, i8** %7, i32* %6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %2
  br label %456

49:                                               ; preds = %2
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.TYPE_17__* @clusterManagerNewNode(i8* %50, i32 %51)
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %8, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = call i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_17__* %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %460

57:                                               ; preds = %49
  %58 = call i32 @clusterManagerCheckCluster(i32 0)
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cluster_manager, i32 0, i32 1), align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cluster_manager, i32 0, i32 1), align 8
  %63 = call i32 @listLength(i32* %62)
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fflush(i32 %66)
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %460

70:                                               ; preds = %61, %57
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @config, i32 0, i32 0, i32 0), align 8
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %124, label %74

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %117, %95, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @CLUSTER_MANAGER_SLOTS, align 4
  %81 = icmp sgt i32 %79, %80
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i1 [ true, %75 ], [ %81, %78 ]
  br i1 %83, label %84, label %123

84:                                               ; preds = %82
  %85 = load i32, i32* @CLUSTER_MANAGER_SLOTS, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @stdout, align 4
  %88 = call i32 @fflush(i32 %87)
  %89 = load i32, i32* @stdin, align 4
  %90 = call i32 @fileno(i32 %89)
  %91 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %92 = call i32 @read(i32 %90, i8* %91, i32 6)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %75

96:                                               ; preds = %84
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 10
  br i1 %104, label %105, label %117

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %115, %105
  %107 = call i32 (...) @getchar()
  store i32 %107, i32* %13, align 4
  %108 = icmp ne i32 %107, 10
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @EOF, align 4
  %112 = icmp ne i32 %110, %111
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i1 [ false, %106 ], [ %112, %109 ]
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  br label %106

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116, %96
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 %119
  store i8 0, i8* %120, align 1
  %121 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %122 = call i32 @atoi(i8* %121)
  store i32 %122, i32* %9, align 4
  br label %75

123:                                              ; preds = %82
  br label %124

124:                                              ; preds = %123, %70
  %125 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @config, i32 0, i32 0, i32 1), align 8
  store i8* %125, i8** %15, align 8
  %126 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @config, i32 0, i32 0, i32 2), align 8
  store i8* %126, i8** %16, align 8
  br label %127

127:                                              ; preds = %171, %140, %124
  %128 = load i8*, i8** %15, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %172

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* @stdout, align 4
  %133 = call i32 @fflush(i32 %132)
  %134 = load i32, i32* @stdin, align 4
  %135 = call i32 @fileno(i32 %134)
  %136 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %137 = call i32 @read(i32 %135, i8* %136, i32 255)
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %17, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %127

141:                                              ; preds = %130
  %142 = load i32, i32* %17, align 4
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 10
  br i1 %149, label %150, label %162

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %160, %150
  %152 = call i32 (...) @getchar()
  store i32 %152, i32* %19, align 4
  %153 = icmp ne i32 %152, 10
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* @EOF, align 4
  %157 = icmp ne i32 %155, %156
  br label %158

158:                                              ; preds = %154, %151
  %159 = phi i1 [ false, %151 ], [ %157, %154 ]
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  br label %151

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %161, %141
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 %164
  store i8 0, i8* %165, align 1
  %166 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %167 = call i64 @strlen(i8* %166)
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  store i8* %170, i8** %15, align 8
  br label %171

171:                                              ; preds = %169, %162
  br label %127

172:                                              ; preds = %127
  store i32 0, i32* %20, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = call %struct.TYPE_17__* @clusterNodeForResharding(i8* %173, %struct.TYPE_17__* null, i32* %20)
  store %struct.TYPE_17__* %174, %struct.TYPE_17__** %21, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %176 = icmp eq %struct.TYPE_17__* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %460

178:                                              ; preds = %172
  %179 = call i32* (...) @listCreate()
  store i32* %179, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  %180 = load i8*, i8** %16, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %253

182:                                              ; preds = %178
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %199, %251
  %187 = load i32*, i32** %22, align 8
  %188 = call i32 @listLength(i32* %187)
  %189 = add nsw i32 %188, 1
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @stdout, align 4
  %192 = call i32 @fflush(i32 %191)
  %193 = load i32, i32* @stdin, align 4
  %194 = call i32 @fileno(i32 %193)
  %195 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %196 = call i32 @read(i32 %194, i8* %195, i32 255)
  store i32 %196, i32* %26, align 4
  %197 = load i32, i32* %26, align 4
  %198 = icmp sle i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %186
  br label %186

200:                                              ; preds = %186
  %201 = load i32, i32* %26, align 4
  %202 = sub nsw i32 %201, 1
  store i32 %202, i32* %27, align 4
  %203 = load i32, i32* %27, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 10
  br i1 %208, label %209, label %221

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %219, %209
  %211 = call i32 (...) @getchar()
  store i32 %211, i32* %28, align 4
  %212 = icmp ne i32 %211, 10
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* %28, align 4
  %215 = load i32, i32* @EOF, align 4
  %216 = icmp ne i32 %214, %215
  br label %217

217:                                              ; preds = %213, %210
  %218 = phi i1 [ false, %210 ], [ %216, %213 ]
  br i1 %218, label %219, label %220

219:                                              ; preds = %217
  br label %210

220:                                              ; preds = %217
  br label %221

221:                                              ; preds = %220, %200
  %222 = load i32, i32* %27, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 %223
  store i8 0, i8* %224, align 1
  %225 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %226 = call i64 @strcmp(i8* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %221
  br label %252

229:                                              ; preds = %221
  %230 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  store i32 1, i32* %24, align 4
  br label %252

234:                                              ; preds = %229
  %235 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %237 = call %struct.TYPE_17__* @clusterNodeForResharding(i8* %235, %struct.TYPE_17__* %236, i32* %20)
  store %struct.TYPE_17__* %237, %struct.TYPE_17__** %29, align 8
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %239 = icmp ne %struct.TYPE_17__* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = load i32*, i32** %22, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %243 = call i32 @listAddNodeTail(i32* %241, %struct.TYPE_17__* %242)
  br label %249

244:                                              ; preds = %234
  %245 = load i32, i32* %20, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store i32 0, i32* %25, align 4
  br label %450

248:                                              ; preds = %244
  br label %249

249:                                              ; preds = %248, %240
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  br label %186

252:                                              ; preds = %233, %228
  br label %316

253:                                              ; preds = %178
  br label %254

254:                                              ; preds = %280, %253
  %255 = load i8*, i8** %16, align 8
  %256 = call i8* @strchr(i8* %255, i8 signext 44)
  store i8* %256, i8** %30, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %283

258:                                              ; preds = %254
  %259 = load i8*, i8** %30, align 8
  store i8 0, i8* %259, align 1
  %260 = load i8*, i8** %16, align 8
  %261 = call i64 @strcmp(i8* %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %258
  store i32 1, i32* %24, align 4
  br label %283

264:                                              ; preds = %258
  %265 = load i8*, i8** %16, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %267 = call %struct.TYPE_17__* @clusterNodeForResharding(i8* %265, %struct.TYPE_17__* %266, i32* %20)
  store %struct.TYPE_17__* %267, %struct.TYPE_17__** %31, align 8
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %269 = icmp ne %struct.TYPE_17__* %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load i32*, i32** %22, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %273 = call i32 @listAddNodeTail(i32* %271, %struct.TYPE_17__* %272)
  br label %279

274:                                              ; preds = %264
  %275 = load i32, i32* %20, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  store i32 0, i32* %25, align 4
  br label %450

278:                                              ; preds = %274
  br label %279

279:                                              ; preds = %278, %270
  br label %280

280:                                              ; preds = %279
  %281 = load i8*, i8** %30, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 1
  store i8* %282, i8** %16, align 8
  br label %254

283:                                              ; preds = %263, %254
  %284 = load i32, i32* %24, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %315, label %286

286:                                              ; preds = %283
  %287 = load i8*, i8** %16, align 8
  %288 = call i64 @strlen(i8* %287)
  %289 = icmp sgt i64 %288, 0
  br i1 %289, label %290, label %315

290:                                              ; preds = %286
  %291 = load i8*, i8** %16, align 8
  %292 = call i64 @strcmp(i8* %291, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  store i32 1, i32* %24, align 4
  br label %295

295:                                              ; preds = %294, %290
  %296 = load i32, i32* %24, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %314, label %298

298:                                              ; preds = %295
  %299 = load i8*, i8** %16, align 8
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %301 = call %struct.TYPE_17__* @clusterNodeForResharding(i8* %299, %struct.TYPE_17__* %300, i32* %20)
  store %struct.TYPE_17__* %301, %struct.TYPE_17__** %32, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %303 = icmp ne %struct.TYPE_17__* %302, null
  br i1 %303, label %304, label %308

304:                                              ; preds = %298
  %305 = load i32*, i32** %22, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %307 = call i32 @listAddNodeTail(i32* %305, %struct.TYPE_17__* %306)
  br label %313

308:                                              ; preds = %298
  %309 = load i32, i32* %20, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i32 0, i32* %25, align 4
  br label %450

312:                                              ; preds = %308
  br label %313

313:                                              ; preds = %312, %304
  br label %314

314:                                              ; preds = %313, %295
  br label %315

315:                                              ; preds = %314, %286, %283
  br label %316

316:                                              ; preds = %315, %252
  %317 = load i32, i32* %24, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %358

319:                                              ; preds = %316
  %320 = load i32*, i32** %22, align 8
  %321 = call i32 @listEmpty(i32* %320)
  %322 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cluster_manager, i32 0, i32 0), align 8
  %323 = call i32 @listRewind(i32* %322, i32* %33)
  br label %324

324:                                              ; preds = %353, %352, %342, %319
  %325 = call %struct.TYPE_16__* @listNext(i32* %33)
  store %struct.TYPE_16__* %325, %struct.TYPE_16__** %34, align 8
  %326 = icmp ne %struct.TYPE_16__* %325, null
  br i1 %326, label %327, label %357

327:                                              ; preds = %324
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %329, align 8
  store %struct.TYPE_17__* %330, %struct.TYPE_17__** %35, align 8
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %327
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 4
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %337, %327
  br label %324

343:                                              ; preds = %337
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @sdscmp(i32 %346, i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %343
  br label %324

353:                                              ; preds = %343
  %354 = load i32*, i32** %22, align 8
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %356 = call i32 @listAddNodeTail(i32* %354, %struct.TYPE_17__* %355)
  br label %324

357:                                              ; preds = %324
  br label %358

358:                                              ; preds = %357, %316
  %359 = load i32*, i32** %22, align 8
  %360 = call i32 @listLength(i32* %359)
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %358
  %363 = load i32, i32* @stderr, align 4
  %364 = call i32 @fprintf(i32 %363, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %25, align 4
  br label %450

365:                                              ; preds = %358
  %366 = load i32, i32* %9, align 4
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %366)
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %369 = load i32*, i32** %22, align 8
  %370 = call i32 @listRewind(i32* %369, i32* %33)
  br label %371

371:                                              ; preds = %374, %365
  %372 = call %struct.TYPE_16__* @listNext(i32* %33)
  store %struct.TYPE_16__* %372, %struct.TYPE_16__** %34, align 8
  %373 = icmp ne %struct.TYPE_16__* %372, null
  br i1 %373, label %374, label %384

374:                                              ; preds = %371
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %376, align 8
  store %struct.TYPE_17__* %377, %struct.TYPE_17__** %36, align 8
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %379 = call i8* @clusterManagerNodeInfo(%struct.TYPE_17__* %378, i32 4)
  store i8* %379, i8** %37, align 8
  %380 = load i8*, i8** %37, align 8
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %380)
  %382 = load i8*, i8** %37, align 8
  %383 = call i32 @sdsfree(i8* %382)
  br label %371

384:                                              ; preds = %371
  %385 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %387 = call i8* @clusterManagerNodeInfo(%struct.TYPE_17__* %386, i32 4)
  store i8* %387, i8** %38, align 8
  %388 = load i8*, i8** %38, align 8
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %388)
  %390 = load i8*, i8** %38, align 8
  %391 = call i32 @sdsfree(i8* %390)
  %392 = load i32*, i32** %22, align 8
  %393 = load i32, i32* %9, align 4
  %394 = call i32* @clusterManagerComputeReshardTable(i32* %392, i32 %393)
  store i32* %394, i32** %23, align 8
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %396 = load i32*, i32** %23, align 8
  %397 = call i32 @clusterManagerShowReshardTable(i32* %396)
  %398 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @config, i32 0, i32 0, i32 3), align 8
  %399 = load i32, i32* @CLUSTER_MANAGER_CMD_FLAG_YES, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %419, label %402

402:                                              ; preds = %384
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0))
  %404 = load i32, i32* @stdout, align 4
  %405 = call i32 @fflush(i32 %404)
  %406 = load i32, i32* @stdin, align 4
  %407 = call i32 @fileno(i32 %406)
  %408 = getelementptr inbounds [4 x i8], [4 x i8]* %39, i64 0, i64 0
  %409 = call i32 @read(i32 %407, i8* %408, i32 4)
  store i32 %409, i32* %40, align 4
  %410 = getelementptr inbounds [4 x i8], [4 x i8]* %39, i64 0, i64 3
  store i8 0, i8* %410, align 1
  %411 = load i32, i32* %40, align 4
  %412 = icmp sle i32 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %402
  %414 = getelementptr inbounds [4 x i8], [4 x i8]* %39, i64 0, i64 0
  %415 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %413, %402
  store i32 0, i32* %25, align 4
  br label %450

418:                                              ; preds = %413
  br label %419

419:                                              ; preds = %418, %384
  %420 = load i32, i32* @CLUSTER_MANAGER_OPT_VERBOSE, align 4
  store i32 %420, i32* %41, align 4
  %421 = load i32*, i32** %23, align 8
  %422 = call i32 @listRewind(i32* %421, i32* %33)
  br label %423

423:                                              ; preds = %448, %419
  %424 = call %struct.TYPE_16__* @listNext(i32* %33)
  store %struct.TYPE_16__* %424, %struct.TYPE_16__** %34, align 8
  %425 = icmp ne %struct.TYPE_16__* %424, null
  br i1 %425, label %426, label %449

426:                                              ; preds = %423
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %428, align 8
  store %struct.TYPE_17__* %429, %struct.TYPE_17__** %42, align 8
  store i8* null, i8** %43, align 8
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %41, align 4
  %438 = call i32 @clusterManagerMoveSlot(i32 %432, %struct.TYPE_17__* %433, i32 %436, i32 %437, i8** %43)
  store i32 %438, i32* %25, align 4
  %439 = load i32, i32* %25, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %448, label %441

441:                                              ; preds = %426
  %442 = load i8*, i8** %43, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = load i8*, i8** %43, align 8
  %446 = call i32 @zfree(i8* %445)
  br label %447

447:                                              ; preds = %444, %441
  br label %450

448:                                              ; preds = %426
  br label %423

449:                                              ; preds = %423
  br label %450

450:                                              ; preds = %449, %447, %417, %362, %311, %277, %247
  %451 = load i32*, i32** %22, align 8
  %452 = call i32 @listRelease(i32* %451)
  %453 = load i32*, i32** %23, align 8
  %454 = call i32 @clusterManagerReleaseReshardTable(i32* %453)
  %455 = load i32, i32* %25, align 4
  store i32 %455, i32* %3, align 4
  br label %460

456:                                              ; preds = %48
  %457 = load i32, i32* @stderr, align 4
  %458 = load i8*, i8** @CLUSTER_MANAGER_INVALID_HOST_ARG, align 8
  %459 = call i32 @fprintf(i32 %457, i8* %458)
  store i32 0, i32* %3, align 4
  br label %460

460:                                              ; preds = %456, %450, %177, %65, %56
  %461 = load i32, i32* %3, align 4
  ret i32 %461
}

declare dso_local i32 @getClusterHostFromCmdArgs(i32, i8**, i8**, i32*) #1

declare dso_local %struct.TYPE_17__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @clusterManagerCheckCluster(i32) #1

declare dso_local i32 @listLength(i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_17__* @clusterNodeForResharding(i8*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_17__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @listEmpty(i32*) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @listNext(i32*) #1

declare dso_local i32 @sdscmp(i32, i32) #1

declare dso_local i8* @clusterManagerNodeInfo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32* @clusterManagerComputeReshardTable(i32*, i32) #1

declare dso_local i32 @clusterManagerShowReshardTable(i32*) #1

declare dso_local i32 @clusterManagerMoveSlot(i32, %struct.TYPE_17__*, i32, i32, i8**) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32 @listRelease(i32*) #1

declare dso_local i32 @clusterManagerReleaseReshardTable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
