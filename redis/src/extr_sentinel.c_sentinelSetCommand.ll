; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelSetCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelSetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"down-after-milliseconds\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"failover-timeout\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"parallel-syncs\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"notification-script\00", align 1
@sentinel = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [151 x i8] c"Reconfiguration of scripts path is denied for security reasons. Check the deny-scripts-reconfig configuration directive in your Sentinel configuration\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"Notification script seems non existing or non executable\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"client-reconfig-script\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"Client reconfiguration script seems non existing or non executable\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"auth-pass\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"quorum\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"rename-command\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Unknown option or number of arguments for SENTINEL SET '%s'\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"+set\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%@ %s %s\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%@ %s %s %s\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%@ %s\00", align 1
@shared = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"Invalid argument '%s' for SENTINEL SET '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelSetCommand(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %24, i64 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = call %struct.TYPE_17__* @sentinelGetMasterByNameOrReplyError(%struct.TYPE_19__* %21, %struct.TYPE_18__* %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %3, align 8
  %28 = icmp eq %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %522

30:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  br label %31

31:                                               ; preds = %492, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %495

37:                                               ; preds = %31
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %46, i64 %48
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strcasecmp(i8* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %63, i64 %66
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %11, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %70 = call i64 @getLongLongFromObject(%struct.TYPE_18__* %69, i64* %9)
  %71 = load i64, i64* @C_ERR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load i64, i64* %9, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %60
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %6, align 4
  br label %504

78:                                               ; preds = %73
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = call i32 @sentinelPropagateDownAfterPeriod(%struct.TYPE_17__* %82)
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %416

86:                                               ; preds = %57, %37
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %96, i64 %99
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %12, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %103 = call i64 @getLongLongFromObject(%struct.TYPE_18__* %102, i64* %9)
  %104 = load i64, i64* @C_ERR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %93
  %107 = load i64, i64* %9, align 8
  %108 = icmp sle i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106, %93
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %6, align 4
  br label %504

111:                                              ; preds = %106
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %415

117:                                              ; preds = %90, %86
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @strcasecmp(i8* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %121
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %127, i64 %130
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  store %struct.TYPE_18__* %132, %struct.TYPE_18__** %13, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %134 = call i64 @getLongLongFromObject(%struct.TYPE_18__* %133, i64* %9)
  %135 = load i64, i64* @C_ERR, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %140, label %137

137:                                              ; preds = %124
  %138 = load i64, i64* %9, align 8
  %139 = icmp sle i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137, %124
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %6, align 4
  br label %504

142:                                              ; preds = %137
  %143 = load i64, i64* %9, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %414

148:                                              ; preds = %121, %117
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @strcasecmp(i8* %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %206, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %8, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %206

155:                                              ; preds = %152
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %158, i64 %161
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %14, align 8
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sentinel, i32 0, i32 0), align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %155
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %170 = call i32 @addReplyError(%struct.TYPE_19__* %169, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.4, i64 0, i64 0))
  br label %522

171:                                              ; preds = %155
  %172 = load i8*, i8** %14, align 8
  %173 = call i64 @strlen(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i8*, i8** %14, align 8
  %177 = load i32, i32* @X_OK, align 4
  %178 = call i32 @access(i8* %176, i32 %177)
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %182 = call i32 @addReplyError(%struct.TYPE_19__* %181, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 (...) @sentinelFlushConfig()
  br label %187

187:                                              ; preds = %185, %180
  br label %522

188:                                              ; preds = %175, %171
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 7
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @sdsfree(i32* %191)
  %193 = load i8*, i8** %14, align 8
  %194 = call i64 @strlen(i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load i8*, i8** %14, align 8
  %198 = call i32* @sdsnew(i8* %197)
  br label %200

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %199, %196
  %201 = phi i32* [ %198, %196 ], [ null, %199 ]
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 7
  store i32* %201, i32** %203, align 8
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %413

206:                                              ; preds = %152, %148
  %207 = load i8*, i8** %7, align 8
  %208 = call i32 @strcasecmp(i8* %207, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %264, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %8, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %264

213:                                              ; preds = %210
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %215, align 8
  %217 = load i32, i32* %4, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %216, i64 %219
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** %15, align 8
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sentinel, i32 0, i32 0), align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %213
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %228 = call i32 @addReplyError(%struct.TYPE_19__* %227, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.4, i64 0, i64 0))
  br label %522

229:                                              ; preds = %213
  %230 = load i8*, i8** %15, align 8
  %231 = call i64 @strlen(i8* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %229
  %234 = load i8*, i8** %15, align 8
  %235 = load i32, i32* @X_OK, align 4
  %236 = call i32 @access(i8* %234, i32 %235)
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %240 = call i32 @addReplyError(%struct.TYPE_19__* %239, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %241 = load i32, i32* %5, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = call i32 (...) @sentinelFlushConfig()
  br label %245

245:                                              ; preds = %243, %238
  br label %522

246:                                              ; preds = %233, %229
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 6
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @sdsfree(i32* %249)
  %251 = load i8*, i8** %15, align 8
  %252 = call i64 @strlen(i8* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %246
  %255 = load i8*, i8** %15, align 8
  %256 = call i32* @sdsnew(i8* %255)
  br label %258

257:                                              ; preds = %246
  br label %258

258:                                              ; preds = %257, %254
  %259 = phi i32* [ %256, %254 ], [ null, %257 ]
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 6
  store i32* %259, i32** %261, align 8
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %5, align 4
  br label %412

264:                                              ; preds = %210, %206
  %265 = load i8*, i8** %7, align 8
  %266 = call i32 @strcasecmp(i8* %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %299, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* %8, align 4
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %299

271:                                              ; preds = %268
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %273, align 8
  %275 = load i32, i32* %4, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %274, i64 %277
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  store i8* %281, i8** %16, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 5
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @sdsfree(i32* %284)
  %286 = load i8*, i8** %16, align 8
  %287 = call i64 @strlen(i8* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %271
  %290 = load i8*, i8** %16, align 8
  %291 = call i32* @sdsnew(i8* %290)
  br label %293

292:                                              ; preds = %271
  br label %293

293:                                              ; preds = %292, %289
  %294 = phi i32* [ %291, %289 ], [ null, %292 ]
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 5
  store i32* %294, i32** %296, align 8
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %5, align 4
  br label %411

299:                                              ; preds = %268, %264
  %300 = load i8*, i8** %7, align 8
  %301 = call i32 @strcasecmp(i8* %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %330, label %303

303:                                              ; preds = %299
  %304 = load i32, i32* %8, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %330

306:                                              ; preds = %303
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %308, align 8
  %310 = load i32, i32* %4, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %309, i64 %312
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %313, align 8
  store %struct.TYPE_18__* %314, %struct.TYPE_18__** %17, align 8
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %316 = call i64 @getLongLongFromObject(%struct.TYPE_18__* %315, i64* %9)
  %317 = load i64, i64* @C_ERR, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %322, label %319

319:                                              ; preds = %306
  %320 = load i64, i64* %9, align 8
  %321 = icmp sle i64 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319, %306
  %323 = load i32, i32* %4, align 4
  store i32 %323, i32* %6, align 4
  br label %504

324:                                              ; preds = %319
  %325 = load i64, i64* %9, align 8
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 3
  store i64 %325, i64* %327, align 8
  %328 = load i32, i32* %5, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %5, align 4
  br label %410

330:                                              ; preds = %303, %299
  %331 = load i8*, i8** %7, align 8
  %332 = call i32 @strcasecmp(i8* %331, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %400, label %334

334:                                              ; preds = %330
  %335 = load i32, i32* %8, align 4
  %336 = icmp sgt i32 %335, 1
  br i1 %336, label %337, label %400

337:                                              ; preds = %334
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %339, align 8
  %341 = load i32, i32* %4, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %4, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %340, i64 %343
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  store i8* %347, i8** %18, align 8
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %349, align 8
  %351 = load i32, i32* %4, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %350, i64 %353
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  store i8* %357, i8** %19, align 8
  %358 = load i8*, i8** %18, align 8
  %359 = call i64 @sdslen(i8* %358)
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %337
  %362 = load i8*, i8** %19, align 8
  %363 = call i64 @sdslen(i8* %362)
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %376

365:                                              ; preds = %361, %337
  %366 = load i8*, i8** %19, align 8
  %367 = call i64 @sdslen(i8* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %365
  %370 = load i32, i32* %4, align 4
  %371 = sub nsw i32 %370, 1
  br label %374

372:                                              ; preds = %365
  %373 = load i32, i32* %4, align 4
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi i32 [ %371, %369 ], [ %373, %372 ]
  store i32 %375, i32* %6, align 4
  br label %504

376:                                              ; preds = %361
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = load i8*, i8** %18, align 8
  %381 = call i32 @dictDelete(i32 %379, i8* %380)
  %382 = load i8*, i8** %18, align 8
  %383 = load i8*, i8** %19, align 8
  %384 = call i32 @dictSdsKeyCaseCompare(i32* null, i8* %382, i8* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %397, label %386

386:                                              ; preds = %376
  %387 = load i8*, i8** %18, align 8
  %388 = call i8* @sdsdup(i8* %387)
  store i8* %388, i8** %18, align 8
  %389 = load i8*, i8** %19, align 8
  %390 = call i8* @sdsdup(i8* %389)
  store i8* %390, i8** %19, align 8
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = load i8*, i8** %18, align 8
  %395 = load i8*, i8** %19, align 8
  %396 = call i32 @dictAdd(i32 %393, i8* %394, i8* %395)
  br label %397

397:                                              ; preds = %386, %376
  %398 = load i32, i32* %5, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %5, align 4
  br label %409

400:                                              ; preds = %334, %330
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %402 = load i8*, i8** %7, align 8
  %403 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_19__* %401, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i8* %402)
  %404 = load i32, i32* %5, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %400
  %407 = call i32 (...) @sentinelFlushConfig()
  br label %408

408:                                              ; preds = %406, %400
  br label %522

409:                                              ; preds = %397
  br label %410

410:                                              ; preds = %409, %324
  br label %411

411:                                              ; preds = %410, %293
  br label %412

412:                                              ; preds = %411, %258
  br label %413

413:                                              ; preds = %412, %200
  br label %414

414:                                              ; preds = %413, %142
  br label %415

415:                                              ; preds = %414, %111
  br label %416

416:                                              ; preds = %415, %78
  %417 = load i32, i32* %4, align 4
  %418 = load i32, i32* %10, align 4
  %419 = sub nsw i32 %417, %418
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %20, align 4
  %421 = load i32, i32* %20, align 4
  switch i32 %421, label %478 [
    i32 2, label %422
    i32 3, label %445
  ]

422:                                              ; preds = %416
  %423 = load i32, i32* @LL_WARNING, align 4
  %424 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %426, align 8
  %428 = load i32, i32* %10, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %427, i64 %429
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 0
  %433 = load i8*, i8** %432, align 8
  %434 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %435, align 8
  %437 = load i32, i32* %10, align 4
  %438 = add nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %436, i64 %439
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 0
  %443 = load i8*, i8** %442, align 8
  %444 = call i32 (i32, i8*, %struct.TYPE_17__*, i8*, i8*, ...) @sentinelEvent(i32 %423, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_17__* %424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %433, i8* %443)
  br label %491

445:                                              ; preds = %416
  %446 = load i32, i32* @LL_WARNING, align 4
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %448 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %449, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %450, i64 %452
  %454 = load %struct.TYPE_18__*, %struct.TYPE_18__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %454, i32 0, i32 0
  %456 = load i8*, i8** %455, align 8
  %457 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 1
  %459 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %458, align 8
  %460 = load i32, i32* %10, align 4
  %461 = add nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %459, i64 %462
  %464 = load %struct.TYPE_18__*, %struct.TYPE_18__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %464, i32 0, i32 0
  %466 = load i8*, i8** %465, align 8
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %468, align 8
  %470 = load i32, i32* %10, align 4
  %471 = add nsw i32 %470, 2
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %469, i64 %472
  %474 = load %struct.TYPE_18__*, %struct.TYPE_18__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 0
  %476 = load i8*, i8** %475, align 8
  %477 = call i32 (i32, i8*, %struct.TYPE_17__*, i8*, i8*, ...) @sentinelEvent(i32 %446, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_17__* %447, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %456, i8* %466, i8* %476)
  br label %491

478:                                              ; preds = %416
  %479 = load i32, i32* @LL_WARNING, align 4
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %481 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %482 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %481, i32 0, i32 1
  %483 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %482, align 8
  %484 = load i32, i32* %10, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %483, i64 %485
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %487, i32 0, i32 0
  %489 = load i8*, i8** %488, align 8
  %490 = call i32 (i32, i8*, %struct.TYPE_17__*, i8*, i8*, ...) @sentinelEvent(i32 %479, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_17__* %480, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %489)
  br label %491

491:                                              ; preds = %478, %445, %422
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %4, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %4, align 4
  br label %31

495:                                              ; preds = %31
  %496 = load i32, i32* %5, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %495
  %499 = call i32 (...) @sentinelFlushConfig()
  br label %500

500:                                              ; preds = %498, %495
  %501 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %502 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @shared, i32 0, i32 0), align 4
  %503 = call i32 @addReply(%struct.TYPE_19__* %501, i32 %502)
  br label %522

504:                                              ; preds = %374, %322, %140, %109, %76
  %505 = load i32, i32* %5, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %504
  %508 = call i32 (...) @sentinelFlushConfig()
  br label %509

509:                                              ; preds = %507, %504
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %511 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %512 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %511, i32 0, i32 1
  %513 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %512, align 8
  %514 = load i32, i32* %6, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %513, i64 %515
  %517 = load %struct.TYPE_18__*, %struct.TYPE_18__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %517, i32 0, i32 0
  %519 = load i8*, i8** %518, align 8
  %520 = load i8*, i8** %7, align 8
  %521 = call i32 (%struct.TYPE_19__*, i8*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_19__* %510, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* %519, i8* %520)
  br label %522

522:                                              ; preds = %509, %500, %408, %245, %226, %187, %168, %29
  ret void
}

declare dso_local %struct.TYPE_17__* @sentinelGetMasterByNameOrReplyError(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @getLongLongFromObject(%struct.TYPE_18__*, i64*) #1

declare dso_local i32 @sentinelPropagateDownAfterPeriod(%struct.TYPE_17__*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @sentinelFlushConfig(...) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32* @sdsnew(i8*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @dictDelete(i32, i8*) #1

declare dso_local i32 @dictSdsKeyCaseCompare(i32*, i8*, i8*) #1

declare dso_local i8* @sdsdup(i8*) #1

declare dso_local i32 @dictAdd(i32, i8*, i8*) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_19__*, i8*, i8*, ...) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_17__*, i8*, i8*, ...) #1

declare dso_local i32 @addReply(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
