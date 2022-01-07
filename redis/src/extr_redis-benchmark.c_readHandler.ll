; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_readHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_readHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64*, i32, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i32*, i32, %struct.TYPE_9__*, i64, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i64, i8* }

@REDIS_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Unexpected error reply, exiting...\0A\00", align 1
@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@readHandler.lasterr_time = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Error from server %s:%d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Error from server: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"MOVED\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ASK\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"CLUSTERDOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @readHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readHandler(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %9, align 8
  store i8* null, i8** %10, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 @UNUSED(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @UNUSED(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @UNUSED(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = call i64 (...) @ustime()
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 10
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i64 @redisBufferRead(%struct.TYPE_12__* %42)
  %44 = load i64, i64* @REDIS_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 10
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %282, %252, %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %283

61:                                               ; preds = %56
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 10
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call i64 @redisGetReply(%struct.TYPE_12__* %64, i8** %10)
  %66 = load i64, i64* @REDIS_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load i32, i32* @stderr, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 10
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %74)
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %61
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %281

80:                                               ; preds = %77
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = icmp eq i8* %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %88 = call i32 @exit(i32 1) #3
  unreachable

89:                                               ; preds = %80
  %90 = load i8*, i8** %10, align 8
  %91 = bitcast i8* %90 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %11, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %89
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 3), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = call i64 @time(i32* null)
  store i64 %104, i64* %13, align 8
  %105 = load i64, i64* @readHandler.lasterr_time, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %103
  %109 = load i64, i64* %13, align 8
  store i64 %109, i64* @readHandler.lasterr_time, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = icmp ne %struct.TYPE_9__* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %119, i32 %124, i8* %127)
  br label %134

129:                                              ; preds = %108
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %129, %114
  br label %135

135:                                              ; preds = %134, %103
  br label %136

136:                                              ; preds = %135, %100, %89
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %199

139:                                              ; preds = %136
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = icmp ne %struct.TYPE_9__* %142, null
  br i1 %143, label %144, label %199

144:                                              ; preds = %139
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %199

149:                                              ; preds = %144
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @strncmp(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strncmp(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %155, %149
  store i32 1, i32* %14, align 4
  br label %184

162:                                              ; preds = %155
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strncmp(i8* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %162
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %173, i32 %178, i8* %181)
  br label %183

183:                                              ; preds = %168, %162
  br label %184

184:                                              ; preds = %183, %161
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 @sleep(i32 1)
  br label %189

189:                                              ; preds = %187, %184
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %194 = call i32 @fetchClusterSlotsConfiguration(%struct.TYPE_11__* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = call i32 @exit(i32 1) #3
  unreachable

198:                                              ; preds = %192, %189
  br label %199

199:                                              ; preds = %198, %144, %139, %136
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 @freeReplyObject(i8* %200)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %253

206:                                              ; preds = %199
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, -1
  store i64 %210, i64* %208, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, -1
  store i64 %214, i64* %212, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %217, 0
  br i1 %218, label %219, label %252

219:                                              ; preds = %206
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @sdsrange(i32 %222, i64 %225, i32 -1)
  store i64 0, i64* %16, align 8
  br label %227

227:                                              ; preds = %246, %219
  %228 = load i64, i64* %16, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = icmp ult i64 %228, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %227
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 6
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* %16, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = sub nsw i64 %243, %236
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 4
  br label %246

246:                                              ; preds = %233
  %247 = load i64, i64* %16, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %16, align 8
  br label %227

249:                                              ; preds = %227
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 4
  store i64 0, i64* %251, align 8
  br label %252

252:                                              ; preds = %249, %206
  br label %56

253:                                              ; preds = %199
  store i32 0, i32* %17, align 4
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %255 = load i32, i32* %17, align 4
  %256 = call i32 @atomicGetIncr(i32 %254, i32 %255, i32 1)
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %253
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64*, i64** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %265 = load i32, i32* %17, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  store i64 %263, i64* %267, align 8
  br label %268

268:                                              ; preds = %260, %253
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, -1
  store i64 %272, i64* %270, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %268
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %279 = call i32 @clientDone(%struct.TYPE_11__* %278)
  br label %283

280:                                              ; preds = %268
  br label %282

281:                                              ; preds = %77
  br label %283

282:                                              ; preds = %280
  br label %56

283:                                              ; preds = %281, %277, %56
  br label %284

284:                                              ; preds = %283
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i64 @ustime(...) #1

declare dso_local i64 @redisBufferRead(%struct.TYPE_12__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @redisGetReply(%struct.TYPE_12__*, i8**) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @fetchClusterSlotsConfiguration(%struct.TYPE_11__*) #1

declare dso_local i32 @freeReplyObject(i8*) #1

declare dso_local i32 @sdsrange(i32, i64, i32) #1

declare dso_local i32 @atomicGetIncr(i32, i32, i32) #1

declare dso_local i32 @clientDone(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
