; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSharedLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSharedLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i64, i64, i32, i64, i32, i32, i32, i64, i32, i32, i32*, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_OPEN = common dso_local global i64 0, align 8
@PAGER_READER = common dso_local global i64 0, align 8
@MEMDB = common dso_local global i32 0, align 4
@EXCLUSIVE_LOCK = common dso_local global i64 0, align 8
@SHARED_LOCK = common dso_local global i64 0, align 8
@NO_LOCK = common dso_local global i64 0, align 8
@UNKNOWN_LOCK = common dso_local global i64 0, align 8
@SQLITE_READONLY_ROLLBACK = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN_BKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"CKVERS %p %d\0A\00", align 1
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PagerSharedLock(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @sqlite3PcacheRefCount(i32 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = call i32 @assert_pager_state(%struct.TYPE_18__* %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PAGER_OPEN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGER_READER, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %1
  %33 = phi i1 [ true, %1 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = call i64 @pagerUseWal(%struct.TYPE_18__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %339, label %46

46:                                               ; preds = %32
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PAGER_OPEN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %339

52:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  %53 = load i32, i32* @MEMDB, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EXCLUSIVE_LOCK, align 8
  %67 = icmp eq i64 %65, %66
  br label %68

68:                                               ; preds = %62, %52
  %69 = phi i1 [ true, %52 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = load i64, i64* @SHARED_LOCK, align 8
  %74 = call i32 @pager_wait_on_lock(%struct.TYPE_18__* %72, i64 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %68
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NO_LOCK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UNKNOWN_LOCK, align 8
  %89 = icmp eq i64 %87, %88
  br label %90

90:                                               ; preds = %84, %78
  %91 = phi i1 [ true, %78 ], [ %89, %84 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %372

94:                                               ; preds = %68
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SHARED_LOCK, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %102 = call i32 @hasHotJournal(%struct.TYPE_18__* %101, i32* %4)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %372

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %275

111:                                              ; preds = %108
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 13
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @SQLITE_READONLY_ROLLBACK, align 4
  store i32 %117, i32* %3, align 4
  br label %372

118:                                              ; preds = %111
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %120 = load i64, i64* @EXCLUSIVE_LOCK, align 8
  %121 = call i32 @pagerLockDb(%struct.TYPE_18__* %119, i64 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @SQLITE_OK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %372

126:                                              ; preds = %118
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @isOpen(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %197, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 12
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %5, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %141 = call i32 @sqlite3OsAccess(i32* %136, i32 %139, i32 %140, i32* %6)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %196

145:                                              ; preds = %132
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %196

148:                                              ; preds = %145
  store i32 0, i32* %7, align 4
  %149 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %150 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %8, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @sqlite3OsOpen(i32* %159, i32 %162, i32 %165, i32 %166, i32* %7)
  store i32 %167, i32* %3, align 4
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @SQLITE_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %148
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @isOpen(i32 %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %171, %148
  %178 = phi i1 [ true, %148 ], [ %176, %171 ]
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @SQLITE_OK, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %177
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i32, i32* @SQLITE_CANTOPEN_BKPT, align 4
  store i32 %190, i32* %3, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @sqlite3OsClose(i32 %193)
  br label %195

195:                                              ; preds = %189, %184, %177
  br label %196

196:                                              ; preds = %195, %145, %132
  br label %197

197:                                              ; preds = %196, %126
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @isOpen(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %197
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @SQLITE_OK, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %210 = call i32 @pagerSyncHotJournal(%struct.TYPE_18__* %209)
  store i32 %210, i32* %3, align 4
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @SQLITE_OK, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %203
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = call i32 @pager_playback(%struct.TYPE_18__* %215, i32 %221)
  store i32 %222, i32* %3, align 4
  %223 = load i64, i64* @PAGER_OPEN, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %214, %203
  br label %237

227:                                              ; preds = %197
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 9
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %234 = load i64, i64* @SHARED_LOCK, align 8
  %235 = call i32 @pagerUnlockDb(%struct.TYPE_18__* %233, i64 %234)
  br label %236

236:                                              ; preds = %232, %227
  br label %237

237:                                              ; preds = %236, %226
  %238 = load i32, i32* %3, align 4
  %239 = load i32, i32* @SQLITE_OK, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @pager_error(%struct.TYPE_18__* %242, i32 %243)
  br label %372

245:                                              ; preds = %237
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @PAGER_OPEN, align 8
  %250 = icmp eq i64 %248, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @SHARED_LOCK, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %271, label %258

258:                                              ; preds = %245
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 9
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @SHARED_LOCK, align 8
  %268 = icmp sgt i64 %266, %267
  br label %269

269:                                              ; preds = %263, %258
  %270 = phi i1 [ false, %258 ], [ %268, %263 ]
  br label %271

271:                                              ; preds = %269, %245
  %272 = phi i1 [ true, %245 ], [ %270, %269 ]
  %273 = zext i1 %272 to i32
  %274 = call i32 @assert(i32 %273)
  br label %275

275:                                              ; preds = %271, %108
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %324, label %280

280:                                              ; preds = %275
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %324

285:                                              ; preds = %280
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %287 = call i32 @IOTRACE(i8* inttoptr (i64 4 to i8*))
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = bitcast [4 x i8]* %9 to i8**
  %292 = call i32 @sqlite3OsRead(i32 %290, i8** %291, i32 4, i32 24)
  store i32 %292, i32* %3, align 4
  %293 = load i32, i32* %3, align 4
  %294 = load i32, i32* @SQLITE_OK, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %304

296:                                              ; preds = %285
  %297 = load i32, i32* %3, align 4
  %298 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %299 = icmp ne i32 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %372

301:                                              ; preds = %296
  %302 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %303 = call i32 @memset(i8* %302, i32 0, i32 4)
  br label %304

304:                                              ; preds = %301, %285
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 8
  %307 = load i32, i32* %306, align 8
  %308 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %309 = call i64 @memcmp(i32 %307, i8* %308, i32 4)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %323

311:                                              ; preds = %304
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %313 = call i32 @pager_reset(%struct.TYPE_18__* %312)
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %315 = call i64 @USEFETCH(%struct.TYPE_18__* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %311
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @sqlite3OsUnfetch(i32 %320, i32 0, i32 0)
  br label %322

322:                                              ; preds = %317, %311
  br label %323

323:                                              ; preds = %322, %304
  br label %324

324:                                              ; preds = %323, %280, %275
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %326 = call i32 @pagerOpenWalIfPresent(%struct.TYPE_18__* %325)
  store i32 %326, i32* %3, align 4
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %324
  %332 = load i32, i32* %3, align 4
  %333 = load i32, i32* @SQLITE_OK, align 4
  %334 = icmp eq i32 %332, %333
  br label %335

335:                                              ; preds = %331, %324
  %336 = phi i1 [ true, %324 ], [ %334, %331 ]
  %337 = zext i1 %336 to i32
  %338 = call i32 @assert(i32 %337)
  br label %339

339:                                              ; preds = %335, %46, %32
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %341 = call i64 @pagerUseWal(%struct.TYPE_18__* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %339
  %344 = load i32, i32* %3, align 4
  %345 = load i32, i32* @SQLITE_OK, align 4
  %346 = icmp eq i32 %344, %345
  %347 = zext i1 %346 to i32
  %348 = call i32 @assert(i32 %347)
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %350 = call i32 @pagerBeginReadTransaction(%struct.TYPE_18__* %349)
  store i32 %350, i32* %3, align 4
  br label %351

351:                                              ; preds = %343, %339
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %371

356:                                              ; preds = %351
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @PAGER_OPEN, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %356
  %363 = load i32, i32* %3, align 4
  %364 = load i32, i32* @SQLITE_OK, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %371

366:                                              ; preds = %362
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 6
  %370 = call i32 @pagerPagecount(%struct.TYPE_18__* %367, i32* %369)
  store i32 %370, i32* %3, align 4
  br label %371

371:                                              ; preds = %366, %362, %356, %351
  br label %372

372:                                              ; preds = %371, %300, %241, %125, %116, %107, %90
  %373 = load i32, i32* %3, align 4
  %374 = load i32, i32* @SQLITE_OK, align 4
  %375 = icmp ne i32 %373, %374
  br i1 %375, label %376, label %391

376:                                              ; preds = %372
  %377 = load i32, i32* @MEMDB, align 4
  %378 = icmp ne i32 %377, 0
  %379 = xor i1 %378, true
  %380 = zext i1 %379 to i32
  %381 = call i32 @assert(i32 %380)
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %383 = call i32 @pager_unlock(%struct.TYPE_18__* %382)
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @PAGER_OPEN, align 8
  %388 = icmp eq i64 %386, %387
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  br label %397

391:                                              ; preds = %372
  %392 = load i64, i64* @PAGER_READER, align 8
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  store i64 %392, i64* %394, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 4
  store i32 1, i32* %396, align 8
  br label %397

397:                                              ; preds = %391, %376
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3PcacheRefCount(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_18__*) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_18__*) #1

declare dso_local i32 @pager_wait_on_lock(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @hasHotJournal(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @pagerLockDb(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3OsAccess(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3OsOpen(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

declare dso_local i32 @pagerSyncHotJournal(%struct.TYPE_18__*) #1

declare dso_local i32 @pager_playback(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @pager_error(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @IOTRACE(i8*) #1

declare dso_local i32 @sqlite3OsRead(i32, i8**, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @pager_reset(%struct.TYPE_18__*) #1

declare dso_local i64 @USEFETCH(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3OsUnfetch(i32, i32, i32) #1

declare dso_local i32 @pagerOpenWalIfPresent(%struct.TYPE_18__*) #1

declare dso_local i32 @pagerBeginReadTransaction(%struct.TYPE_18__*) #1

declare dso_local i32 @pagerPagecount(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @pager_unlock(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
