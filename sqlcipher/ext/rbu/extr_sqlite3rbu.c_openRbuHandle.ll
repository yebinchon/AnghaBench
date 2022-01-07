; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_openRbuHandle.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_openRbuHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i8*, i8*, i64, i8*, %struct.TYPE_22__, i32*, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, i64, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64, i64, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RBU_STAGE_OAL = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot update wal mode database\00", align 1
@RBU_STAGE_MOVE = common dso_local global i64 0, align 8
@RBU_STAGE_CKPT = common dso_local global i64 0, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"database modified during rbu %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vacuum\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@SQLITE_DONE = common dso_local global i8* null, align 8
@RBU_STAGE_DONE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"page_size\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"auto_vacuum\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"BEGIN IMMEDIATE\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_FCNTL_ZIPVFS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"PRAGMA journal_mode=off\00", align 1
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (i8*, i8*, i8*)* @openRbuHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @openRbuHandle(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i64 [ %21, %19 ], [ 0, %22 ]
  store i64 %24, i64* %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 104, %27
  %29 = add i64 %28, 1
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %29, %30
  %32 = add i64 %31, 1
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @sqlite3_malloc64(i64 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %7, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %37 = icmp ne %struct.TYPE_23__* %36, null
  br i1 %37, label %38, label %438

38:                                               ; preds = %23
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %40 = call i32 @memset(%struct.TYPE_23__* %39, i32 0, i32 104)
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %42 = call i32 @rbuCreateVfs(%struct.TYPE_23__* %41)
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SQLITE_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %101

48:                                               ; preds = %38
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i64 1
  %51 = bitcast %struct.TYPE_23__* %50 to i8*
  store i8* %51, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @memcpy(i8* %60, i8* %61, i64 %63)
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %12, align 8
  br label %69

69:                                               ; preds = %54, %48
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  %79 = call i32 @memcpy(i8* %75, i8* %76, i64 %78)
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %69
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @rbuMPrintf(%struct.TYPE_23__* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 14
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %69
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %94 = call i32 @rbuOpenDatabase(%struct.TYPE_23__* %93, i32* %13)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %99 = call i32 @rbuOpenDatabase(%struct.TYPE_23__* %98, i32* null)
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %38
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %163

107:                                              ; preds = %101
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %109 = call %struct.TYPE_25__* @rbuLoadState(%struct.TYPE_23__* %108)
  store %struct.TYPE_25__* %109, %struct.TYPE_25__** %11, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %111 = icmp ne %struct.TYPE_25__* %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SQLITE_OK, align 4
  %117 = icmp ne i32 %115, %116
  br label %118

118:                                              ; preds = %112, %107
  %119 = phi i1 [ true, %107 ], [ %117, %112 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SQLITE_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %162

127:                                              ; preds = %118
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %134 = call i32 @rbuDeleteOalFile(%struct.TYPE_23__* %133)
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %136 = call i32 @rbuInitPhaseOneSteps(%struct.TYPE_23__* %135)
  %137 = load i64, i64* @RBU_STAGE_OAL, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  br label %151

140:                                              ; preds = %127
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 13
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %140, %132
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 12
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 11
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %151, %118
  br label %163

163:                                              ; preds = %162, %101
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SQLITE_OK, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %163
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %169, %163
  %175 = phi i1 [ true, %163 ], [ %173, %169 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SQLITE_OK, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %217

183:                                              ; preds = %174
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %217

190:                                              ; preds = %183
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @RBU_STAGE_OAL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %190
  %197 = load i32, i32* @SQLITE_ERROR, align 4
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 4
  store i8* %200, i8** %202, align 8
  br label %216

203:                                              ; preds = %190
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @RBU_STAGE_MOVE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load i64, i64* @RBU_STAGE_CKPT, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 3
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 10
  store i64 0, i64* %214, align 8
  br label %215

215:                                              ; preds = %209, %203
  br label %216

216:                                              ; preds = %215, %196
  br label %217

217:                                              ; preds = %216, %183, %174
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @SQLITE_OK, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %274

223:                                              ; preds = %217
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @RBU_STAGE_OAL, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %235, label %229

229:                                              ; preds = %223
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @RBU_STAGE_MOVE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %274

235:                                              ; preds = %229, %223
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %274

240:                                              ; preds = %235
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %242 = call i64 @rbuIsVacuum(%struct.TYPE_23__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 9
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  br label %252

248:                                              ; preds = %240
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %250, align 8
  br label %252

252:                                              ; preds = %248, %244
  %253 = phi %struct.TYPE_24__* [ %247, %244 ], [ %251, %248 ]
  store %struct.TYPE_24__* %253, %struct.TYPE_24__** %14, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %256, %259
  br i1 %260, label %261, label %273

261:                                              ; preds = %252
  %262 = load i32, i32* @SQLITE_BUSY, align 4
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %266 = call i64 @rbuIsVacuum(%struct.TYPE_23__* %265)
  %267 = icmp ne i64 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %270 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %269)
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 4
  store i8* %270, i8** %272, align 8
  br label %273

273:                                              ; preds = %261, %252
  br label %274

274:                                              ; preds = %273, %235, %229, %217
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @SQLITE_OK, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %435

280:                                              ; preds = %274
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @RBU_STAGE_OAL, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %399

286:                                              ; preds = %280
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 7
  %289 = load i32*, i32** %288, align 8
  store i32* %289, i32** %15, align 8
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 6
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 4
  %295 = call i8* @sqlite3_exec(i32* %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i8** %294)
  %296 = ptrtoint i8* %295 to i32
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @SQLITE_OK, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %286
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 5
  %308 = call i32 @rbuObjIterFirst(%struct.TYPE_23__* %305, %struct.TYPE_22__* %307)
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  br label %311

311:                                              ; preds = %304, %286
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @SQLITE_OK, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %331

317:                                              ; preds = %311
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %317
  %324 = load i8*, i8** @SQLITE_DONE, align 8
  %325 = ptrtoint i8* %324 to i32
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  %328 = load i64, i64* @RBU_STAGE_DONE, align 8
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 3
  store i64 %328, i64* %330, align 8
  br label %398

331:                                              ; preds = %317, %311
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @SQLITE_OK, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %351

337:                                              ; preds = %331
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %337
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %344 = call i64 @rbuIsVacuum(%struct.TYPE_23__* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %348 = call i32 @rbuCopyPragma(%struct.TYPE_23__* %347, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %350 = call i32 @rbuCopyPragma(%struct.TYPE_23__* %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %351

351:                                              ; preds = %346, %342, %337, %331
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @SQLITE_OK, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %365

357:                                              ; preds = %351
  %358 = load i32*, i32** %15, align 8
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 4
  %361 = call i8* @sqlite3_exec(i32* %358, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0, i8** %360)
  %362 = ptrtoint i8* %361 to i32
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 8
  br label %365

365:                                              ; preds = %357, %351
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @SQLITE_OK, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %387

371:                                              ; preds = %365
  %372 = load i32*, i32** %15, align 8
  %373 = load i32, i32* @SQLITE_FCNTL_ZIPVFS, align 4
  %374 = call i32 @sqlite3_file_control(i32* %372, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %373, i32 0)
  store i32 %374, i32* %16, align 4
  %375 = load i32, i32* %16, align 4
  %376 = load i32, i32* @SQLITE_OK, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %386

378:                                              ; preds = %371
  %379 = load i32*, i32** %15, align 8
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 4
  %382 = call i8* @sqlite3_exec(i32* %379, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0, i8** %381)
  %383 = ptrtoint i8* %382 to i32
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 0
  store i32 %383, i32* %385, align 8
  br label %386

386:                                              ; preds = %378, %371
  br label %387

387:                                              ; preds = %386, %365
  %388 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @SQLITE_OK, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %396 = call i32 @rbuSetupOal(%struct.TYPE_23__* %394, %struct.TYPE_25__* %395)
  br label %397

397:                                              ; preds = %393, %387
  br label %398

398:                                              ; preds = %397, %323
  br label %434

399:                                              ; preds = %280
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %400, i32 0, i32 3
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @RBU_STAGE_MOVE, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %399
  br label %433

406:                                              ; preds = %399
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 3
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @RBU_STAGE_CKPT, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %416

412:                                              ; preds = %406
  %413 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %415 = call i32 @rbuSetupCheckpoint(%struct.TYPE_23__* %413, %struct.TYPE_25__* %414)
  br label %432

416:                                              ; preds = %406
  %417 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @RBU_STAGE_DONE, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %422, label %427

422:                                              ; preds = %416
  %423 = load i8*, i8** @SQLITE_DONE, align 8
  %424 = ptrtoint i8* %423 to i32
  %425 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 8
  br label %431

427:                                              ; preds = %416
  %428 = load i32, i32* @SQLITE_CORRUPT, align 4
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 0
  store i32 %428, i32* %430, align 8
  br label %431

431:                                              ; preds = %427, %422
  br label %432

432:                                              ; preds = %431, %412
  br label %433

433:                                              ; preds = %432, %405
  br label %434

434:                                              ; preds = %433, %398
  br label %435

435:                                              ; preds = %434, %274
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %437 = call i32 @rbuFreeState(%struct.TYPE_25__* %436)
  br label %438

438:                                              ; preds = %435, %23
  %439 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  ret %struct.TYPE_23__* %439
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_malloc64(i64) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @rbuCreateVfs(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @rbuMPrintf(%struct.TYPE_23__*, i8*, i8*) #1

declare dso_local i32 @rbuOpenDatabase(%struct.TYPE_23__*, i32*) #1

declare dso_local %struct.TYPE_25__* @rbuLoadState(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rbuDeleteOalFile(%struct.TYPE_23__*) #1

declare dso_local i32 @rbuInitPhaseOneSteps(%struct.TYPE_23__*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i64 @rbuIsVacuum(%struct.TYPE_23__*) #1

declare dso_local i8* @sqlite3_exec(i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @rbuObjIterFirst(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @rbuCopyPragma(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @sqlite3_file_control(i32*, i8*, i32, i32) #1

declare dso_local i32 @rbuSetupOal(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @rbuSetupCheckpoint(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @rbuFreeState(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
