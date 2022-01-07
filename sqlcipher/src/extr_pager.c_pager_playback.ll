; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_pager_playback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_pager_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8*, i64, i64, i64, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@PAGER_WRITER_DBMOD = common dso_local global i64 0, align 8
@PAGER_OPEN = common dso_local global i64 0, align 8
@SQLITE_NOTICE_RECOVER_ROLLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"recovered %d pages from %s\00", align 1
@SQLITE_FCNTL_DB_UNCHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @pager_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_playback(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @isOpen(i32 %24)
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sqlite3OsFileSize(i32 %29, i64* %6)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %199

35:                                               ; preds = %2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @readMasterJournal(i32 %41, i8* %42, i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %35
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %63 = call i32 @sqlite3OsAccess(%struct.TYPE_16__* %60, i8* %61, i32 %62, i32* %11)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %53, %35
  store i8* null, i8** %12, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %64
  br label %199

72:                                               ; preds = %68
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %72, %198
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @readJournalHdr(%struct.TYPE_17__* %77, i32 %78, i64 %79, i32* %7, i32* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @SQLITE_DONE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @SQLITE_OK, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %84
  br label %199

91:                                               ; preds = %76
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %98)
  %100 = icmp eq i64 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %105 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %104)
  %106 = sub nsw i64 %103, %105
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = call i64 @JOURNAL_PG_SZ(%struct.TYPE_17__* %107)
  %109 = sdiv i64 %106, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %94, %91
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %121)
  %123 = add nsw i64 %120, %122
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %117
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %135 = call i64 @JOURNAL_PG_SZ(%struct.TYPE_17__* %134)
  %136 = sdiv i64 %133, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %128, %117, %114, %111
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %142)
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @pager_truncate(%struct.TYPE_17__* %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @SQLITE_OK, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %199

153:                                              ; preds = %145
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 11
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %153, %138
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %195, %157
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %198

162:                                              ; preds = %158
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = call i32 @pager_reset(%struct.TYPE_17__* %166)
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %165, %162
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = call i32 @pager_playback_one_page(%struct.TYPE_17__* %169, i64* %171, i32 0, i32 1, i32 0)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @SQLITE_OK, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %194

179:                                              ; preds = %168
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @SQLITE_DONE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i64, i64* %6, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  br label %198

187:                                              ; preds = %179
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @SQLITE_OK, align 4
  store i32 %192, i32* %10, align 4
  br label %199

193:                                              ; preds = %187
  br label %199

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %158

198:                                              ; preds = %183, %158
  br label %76

199:                                              ; preds = %193, %191, %152, %90, %71, %34
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @SQLITE_OK, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %205 = call i32 @sqlite3PagerSetPagesize(%struct.TYPE_17__* %204, i32* %15, i32 -1)
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %203, %199
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 9
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @SQLITE_OK, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %235

215:                                              ; preds = %206
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  store i8* %218, i8** %12, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 6
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  %229 = call i32 @readMasterJournal(i32 %221, i8* %222, i64 %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @SQLITE_OK, align 4
  %232 = icmp ne i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @testcase(i32 %233)
  br label %235

235:                                              ; preds = %215, %206
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* @SQLITE_OK, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %254

239:                                              ; preds = %235
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @PAGER_WRITER_DBMOD, align 8
  %244 = icmp sge i64 %242, %243
  br i1 %244, label %251, label %245

245:                                              ; preds = %239
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @PAGER_OPEN, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %245, %239
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %253 = call i32 @sqlite3PagerSync(%struct.TYPE_17__* %252, i32 0)
  store i32 %253, i32* %10, align 4
  br label %254

254:                                              ; preds = %251, %245, %235
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* @SQLITE_OK, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %272

258:                                              ; preds = %254
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = call i32 @pager_end_transaction(%struct.TYPE_17__* %259, i32 %265, i32 0)
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* @SQLITE_OK, align 4
  %269 = icmp ne i32 %267, %268
  %270 = zext i1 %269 to i32
  %271 = call i32 @testcase(i32 %270)
  br label %272

272:                                              ; preds = %258, %254
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @SQLITE_OK, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %294

276:                                              ; preds = %272
  %277 = load i8*, i8** %12, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %276
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %282
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %287 = load i8*, i8** %12, align 8
  %288 = call i32 @pager_delmaster(%struct.TYPE_17__* %286, i8* %287)
  store i32 %288, i32* %10, align 4
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* @SQLITE_OK, align 4
  %291 = icmp ne i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @testcase(i32 %292)
  br label %294

294:                                              ; preds = %285, %282, %276, %272
  %295 = load i32, i32* %4, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %294
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = load i32, i32* @SQLITE_NOTICE_RECOVER_ROLLBACK, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @sqlite3_log(i32 %301, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %302, i32 %305)
  br label %307

307:                                              ; preds = %300, %297, %294
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %309 = call i32 @setSectorSize(%struct.TYPE_17__* %308)
  %310 = load i32, i32* %10, align 4
  ret i32 %310
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i32 @sqlite3OsFileSize(i32, i64*) #1

declare dso_local i32 @readMasterJournal(i32, i8*, i64) #1

declare dso_local i32 @sqlite3OsAccess(%struct.TYPE_16__*, i8*, i32, i32*) #1

declare dso_local i32 @readJournalHdr(%struct.TYPE_17__*, i32, i64, i32*, i32*) #1

declare dso_local i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__*) #1

declare dso_local i64 @JOURNAL_PG_SZ(%struct.TYPE_17__*) #1

declare dso_local i32 @pager_truncate(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pager_reset(%struct.TYPE_17__*) #1

declare dso_local i32 @pager_playback_one_page(%struct.TYPE_17__*, i64*, i32, i32, i32) #1

declare dso_local i32 @sqlite3PagerSetPagesize(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3PagerSync(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pager_end_transaction(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @pager_delmaster(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #1

declare dso_local i32 @setSectorSize(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
