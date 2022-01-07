; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeBeginTrans.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeBeginTrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_22__, i64, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_22__*, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64, i32, i64, i32, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_19__ = type { i32*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@TRANS_WRITE = common dso_local global i64 0, align 8
@TRANS_READ = common dso_local global i64 0, align 8
@SQLITE_ResetDatabase = common dso_local global i32 0, align 4
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@SQLITE_READONLY = common dso_local global i32 0, align 4
@BTS_PENDING = common dso_local global i32 0, align 4
@SQLITE_LOCKED_SHAREDCACHE = common dso_local global i32 0, align 4
@MASTER_ROOT = common dso_local global i32 0, align 4
@READ_LOCK = common dso_local global i32 0, align 4
@BTS_INITIALLY_EMPTY = common dso_local global i32 0, align 4
@SQLITE_BUSY_SNAPSHOT = common dso_local global i32 0, align 4
@TRANS_NONE = common dso_local global i64 0, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@BTS_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeBeginTrans(%struct.TYPE_20__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = call i32 @sqlite3BtreeEnter(%struct.TYPE_20__* %16)
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = call i32 @btreeIntegrity(%struct.TYPE_20__* %18)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TRANS_WRITE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRANS_READ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %3
  br label %401

35:                                               ; preds = %31, %25
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TRANS_WRITE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IfNotOmitAV(i32 %44)
  %46 = icmp eq i64 %45, 0
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ true, %35 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SQLITE_ResetDatabase, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @sqlite3PagerIsreadonly(i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @BTS_READ_ONLY, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %59, %47
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BTS_READ_ONLY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @SQLITE_READONLY, align 4
  store i32 %83, i32* %8, align 4
  br label %401

84:                                               ; preds = %79, %72
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TRANS_WRITE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %87, %84
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BTS_PENDING, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93, %87
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %9, align 8
  br label %135

106:                                              ; preds = %93
  %107 = load i32, i32* %5, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %134

109:                                              ; preds = %106
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %111, align 8
  store %struct.TYPE_22__* %112, %struct.TYPE_22__** %10, align 8
  br label %113

113:                                              ; preds = %129, %109
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %115 = icmp ne %struct.TYPE_22__* %114, null
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = icmp ne %struct.TYPE_20__* %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %9, align 8
  br label %133

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %131, align 8
  store %struct.TYPE_22__* %132, %struct.TYPE_22__** %10, align 8
  br label %113

133:                                              ; preds = %122, %113
  br label %134

134:                                              ; preds = %133, %106
  br label %135

135:                                              ; preds = %134, %100
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %137 = icmp ne %struct.TYPE_18__* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %143 = call i32 @sqlite3ConnectionBlocked(%struct.TYPE_18__* %141, %struct.TYPE_18__* %142)
  %144 = load i32, i32* @SQLITE_LOCKED_SHAREDCACHE, align 4
  store i32 %144, i32* %8, align 4
  br label %401

145:                                              ; preds = %135
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %147 = load i32, i32* @MASTER_ROOT, align 4
  %148 = load i32, i32* @READ_LOCK, align 4
  %149 = call i32 @querySharedCacheTableLock(%struct.TYPE_20__* %146, i32 %147, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @SQLITE_OK, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %401

154:                                              ; preds = %145
  %155 = load i32, i32* @BTS_INITIALLY_EMPTY, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %154
  %166 = load i32, i32* @BTS_INITIALLY_EMPTY, align 4
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %154
  br label %172

172:                                              ; preds = %258, %171
  br label %173

173:                                              ; preds = %185, %172
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = icmp eq %struct.TYPE_19__* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* @SQLITE_OK, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %181 = call i32 @lockBtree(%struct.TYPE_21__* %180)
  store i32 %181, i32* %8, align 4
  %182 = icmp eq i32 %179, %181
  br label %183

183:                                              ; preds = %178, %173
  %184 = phi i1 [ false, %173 ], [ %182, %178 ]
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  br label %173

186:                                              ; preds = %183
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @SQLITE_OK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %235

190:                                              ; preds = %186
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %235

193:                                              ; preds = %190
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @BTS_READ_ONLY, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* @SQLITE_READONLY, align 4
  store i32 %201, i32* %8, align 4
  br label %234

202:                                              ; preds = %193
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = icmp sgt i32 %206, 1
  %208 = zext i1 %207 to i32
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = call i32 @sqlite3TempInMemory(%struct.TYPE_18__* %211)
  %213 = call i32 @sqlite3PagerBegin(i32 %205, i32 %208, i32 %212)
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @SQLITE_OK, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %202
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %219 = call i32 @newDatabase(%struct.TYPE_21__* %218)
  store i32 %219, i32* %8, align 4
  br label %233

220:                                              ; preds = %202
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @SQLITE_BUSY_SNAPSHOT, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %220
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @TRANS_NONE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %230, %224, %220
  br label %233

233:                                              ; preds = %232, %217
  br label %234

234:                                              ; preds = %233, %200
  br label %235

235:                                              ; preds = %234, %190, %186
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @SQLITE_OK, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %241 = call i32 @unlockBtreeIfUnused(%struct.TYPE_21__* %240)
  br label %242

242:                                              ; preds = %239, %235
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %8, align 4
  %245 = and i32 %244, 255
  %246 = load i32, i32* @SQLITE_BUSY, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %258

248:                                              ; preds = %243
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @TRANS_NONE, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %256 = call i64 @btreeInvokeBusyHandler(%struct.TYPE_21__* %255)
  %257 = icmp ne i64 %256, 0
  br label %258

258:                                              ; preds = %254, %248, %243
  %259 = phi i1 [ false, %248 ], [ false, %243 ], [ %257, %254 ]
  br i1 %259, label %172, label %260

260:                                              ; preds = %258
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @sqlite3PagerResetLockTimeout(i32 %263)
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* @SQLITE_OK, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %400

268:                                              ; preds = %260
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @TRANS_NONE, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %315

274:                                              ; preds = %268
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %314

283:                                              ; preds = %274
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %286, align 8
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %289 = icmp eq %struct.TYPE_20__* %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %283
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %294, 1
  br label %296

296:                                              ; preds = %290, %283
  %297 = phi i1 [ false, %283 ], [ %295, %290 ]
  %298 = zext i1 %297 to i32
  %299 = call i32 @assert(i32 %298)
  %300 = load i32, i32* @READ_LOCK, align 4
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 2
  store i32 %300, i32* %303, align 8
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 6
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %305, align 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 1
  store %struct.TYPE_22__* %306, %struct.TYPE_22__** %309, align 8
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 6
  store %struct.TYPE_22__* %311, %struct.TYPE_22__** %313, align 8
  br label %314

314:                                              ; preds = %296, %274
  br label %315

315:                                              ; preds = %314, %268
  %316 = load i32, i32* %5, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %315
  %319 = load i64, i64* @TRANS_WRITE, align 8
  br label %322

320:                                              ; preds = %315
  %321 = load i64, i64* @TRANS_READ, align 8
  br label %322

322:                                              ; preds = %320, %318
  %323 = phi i64 [ %319, %318 ], [ %321, %320 ]
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 0
  store i64 %323, i64* %325, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp sgt i64 %328, %331
  br i1 %332, label %333, label %339

333:                                              ; preds = %322
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  store i64 %336, i64* %338, align 8
  br label %339

339:                                              ; preds = %333, %322
  %340 = load i32, i32* %5, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %399

342:                                              ; preds = %339
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 4
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %344, align 8
  store %struct.TYPE_19__* %345, %struct.TYPE_19__** %11, align 8
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 5
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %347, align 8
  %349 = icmp ne %struct.TYPE_20__* %348, null
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 5
  store %struct.TYPE_20__* %353, %struct.TYPE_20__** %355, align 8
  %356 = load i32, i32* @BTS_EXCLUSIVE, align 4
  %357 = xor i32 %356, -1
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = and i32 %360, %357
  store i32 %361, i32* %359, align 8
  %362 = load i32, i32* %5, align 4
  %363 = icmp sgt i32 %362, 1
  br i1 %363, label %364, label %370

364:                                              ; preds = %342
  %365 = load i32, i32* @BTS_EXCLUSIVE, align 4
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %364, %342
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 28
  %378 = call i64 @get4byte(i32* %377)
  %379 = icmp ne i64 %373, %378
  br i1 %379, label %380, label %398

380:                                              ; preds = %370
  %381 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @sqlite3PagerWrite(i32 %383)
  store i32 %384, i32* %8, align 4
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* @SQLITE_OK, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %380
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 28
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 2
  %395 = load i64, i64* %394, align 8
  %396 = call i32 @put4byte(i32* %392, i64 %395)
  br label %397

397:                                              ; preds = %388, %380
  br label %398

398:                                              ; preds = %397, %370
  br label %399

399:                                              ; preds = %398, %339
  br label %400

400:                                              ; preds = %399, %260
  br label %401

401:                                              ; preds = %400, %153, %138, %82, %34
  %402 = load i32, i32* %8, align 4
  %403 = load i32, i32* @SQLITE_OK, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %432

405:                                              ; preds = %401
  %406 = load i32*, i32** %6, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %418

408:                                              ; preds = %405
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 4
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 40
  %415 = call i64 @get4byte(i32* %414)
  %416 = trunc i64 %415 to i32
  %417 = load i32*, i32** %6, align 8
  store i32 %416, i32* %417, align 4
  br label %418

418:                                              ; preds = %408, %405
  %419 = load i32, i32* %5, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %431

421:                                              ; preds = %418
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_18__*, %struct.TYPE_18__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @sqlite3PagerOpenSavepoint(i32 %424, i32 %429)
  store i32 %430, i32* %8, align 4
  br label %431

431:                                              ; preds = %421, %418
  br label %432

432:                                              ; preds = %431, %401
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %434 = call i32 @btreeIntegrity(%struct.TYPE_20__* %433)
  %435 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %436 = call i32 @sqlite3BtreeLeave(%struct.TYPE_20__* %435)
  %437 = load i32, i32* %8, align 4
  ret i32 %437
}

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_20__*) #1

declare dso_local i32 @btreeIntegrity(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IfNotOmitAV(i32) #1

declare dso_local i64 @sqlite3PagerIsreadonly(i32) #1

declare dso_local i32 @sqlite3ConnectionBlocked(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @querySharedCacheTableLock(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @lockBtree(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3PagerBegin(i32, i32, i32) #1

declare dso_local i32 @sqlite3TempInMemory(%struct.TYPE_18__*) #1

declare dso_local i32 @newDatabase(%struct.TYPE_21__*) #1

declare dso_local i32 @unlockBtreeIfUnused(%struct.TYPE_21__*) #1

declare dso_local i64 @btreeInvokeBusyHandler(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3PagerResetLockTimeout(i32) #1

declare dso_local i64 @get4byte(i32*) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @put4byte(i32*, i64) #1

declare dso_local i32 @sqlite3PagerOpenSavepoint(i32, i32) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
