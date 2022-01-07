; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_32__*, %struct.TYPE_32__**, %struct.TYPE_31__, i32, %struct.TYPE_34__* }
%struct.TYPE_32__ = type { i32, i32, i8*, i32 (%struct.TYPE_32__*, i8*)*, i32, i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i32, i32, i8* }
%struct.TYPE_33__ = type { i32 }

@BTREE_SAVEPOSITION = common dso_local global i32 0, align 4
@TRANS_WRITE = common dso_local global i64 0, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@BTCF_WriteFlag = common dso_local global i32 0, align 4
@BTREE_AUXDELETE = common dso_local global i32 0, align 4
@CURSOR_REQUIRESEEK = common dso_local global i64 0, align 8
@CURSOR_VALID = common dso_local global i64 0, align 8
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@BTCF_Multiple = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@CURSOR_SKIPNEXT = common dso_local global i64 0, align 8
@SQLITE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeDelete(%struct.TYPE_36__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %20, i32 0, i32 10
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  store %struct.TYPE_34__* %22, %struct.TYPE_34__** %6, align 8
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  store %struct.TYPE_35__* %25, %struct.TYPE_35__** %7, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BTREE_SAVEPOSITION, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %30 = call i32 @cursorOwnsBtShared(%struct.TYPE_36__* %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TRANS_WRITE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BTS_READ_ONLY, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BTCF_WriteFlag, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @hasSharedCacheTableLock(%struct.TYPE_34__* %53, i32 %56, i32 %61, i32 2)
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hasReadConflicts(%struct.TYPE_34__* %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @BTREE_SAVEPOSITION, align 4
  %75 = load i32, i32* @BTREE_AUXDELETE, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %73, %77
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %2
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %89 = call i32 @btreeRestoreCursorPosition(%struct.TYPE_36__* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %496

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %2
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CURSOR_VALID, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %12, align 4
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %110, align 8
  store %struct.TYPE_32__* %111, %struct.TYPE_32__** %9, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i8* @findCell(%struct.TYPE_32__* %112, i32 %113)
  store i8* %114, i8** %10, align 8
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %95
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %121 = call i32 @btreeComputeFreeSpace(%struct.TYPE_32__* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @SQLITE_CORRUPT, align 4
  store i32 %124, i32* %3, align 4
  br label %496

125:                                              ; preds = %119, %95
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %163

128:                                              ; preds = %125
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %128
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @cellSizePtr(%struct.TYPE_32__* %137, i8* %138)
  %140 = add nsw i32 %136, %139
  %141 = add nsw i32 %140, 2
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %144, 2
  %146 = sdiv i32 %145, 3
  %147 = icmp sgt i32 %141, %146
  br i1 %147, label %153, label %148

148:                                              ; preds = %133
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %161

153:                                              ; preds = %148, %133, %128
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %155 = call i32 @saveCursorKey(%struct.TYPE_36__* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %496

160:                                              ; preds = %153
  br label %162

161:                                              ; preds = %148
  store i32 1, i32* %14, align 4
  br label %162

162:                                              ; preds = %161, %160
  br label %163

163:                                              ; preds = %162, %125
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %170 = call i32 @sqlite3BtreePrevious(%struct.TYPE_36__* %169, i32 0)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @SQLITE_DONE, align 4
  %173 = icmp ne i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %496

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %163
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @BTCF_Multiple, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %181
  %189 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %194 = call i32 @saveAllCursors(%struct.TYPE_35__* %189, i32 %192, %struct.TYPE_36__* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %188
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %3, align 4
  br label %496

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %199, %181
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @invalidateIncrblobCursors(%struct.TYPE_34__* %206, i32 %209, i32 %213, i32 0)
  br label %215

215:                                              ; preds = %205, %200
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @sqlite3PagerWrite(i32 %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i32, i32* %8, align 4
  store i32 %223, i32* %3, align 4
  br label %496

224:                                              ; preds = %215
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %226 = load i8*, i8** %10, align 8
  %227 = call i32 @clearCell(%struct.TYPE_32__* %225, i8* %226, %struct.TYPE_33__* %13)
  store i32 %227, i32* %8, align 4
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %229 = load i32, i32* %11, align 4
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @dropCell(%struct.TYPE_32__* %228, i32 %229, i32 %231, i32* %8)
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %224
  %236 = load i32, i32* %8, align 4
  store i32 %236, i32* %3, align 4
  br label %496

237:                                              ; preds = %224
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %347, label %242

242:                                              ; preds = %237
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 6
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %244, align 8
  store %struct.TYPE_32__* %245, %struct.TYPE_32__** %16, align 8
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %242
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %252 = call i32 @btreeComputeFreeSpace(%struct.TYPE_32__* %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i32, i32* %8, align 4
  store i32 %256, i32* %3, align 4
  br label %496

257:                                              ; preds = %250
  br label %258

258:                                              ; preds = %257, %242
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = sub nsw i32 %262, 1
  %264 = icmp slt i32 %259, %263
  br i1 %264, label %265, label %276

265:                                              ; preds = %258
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %266, i32 0, i32 7
  %268 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %267, align 8
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %268, i64 %271
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %18, align 4
  br label %282

276:                                              ; preds = %258
  %277 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %277, i32 0, i32 6
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %18, align 4
  br label %282

282:                                              ; preds = %276, %265
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, 1
  %288 = call i8* @findCell(%struct.TYPE_32__* %283, i32 %287)
  store i8* %288, i8** %10, align 8
  %289 = load i8*, i8** %10, align 8
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 2
  %292 = load i8*, i8** %291, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 4
  %294 = icmp ult i8* %289, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %282
  %296 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %296, i32* %3, align 4
  br label %496

297:                                              ; preds = %282
  %298 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 3
  %300 = load i32 (%struct.TYPE_32__*, i8*)*, i32 (%struct.TYPE_32__*, i8*)** %299, align 8
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %302 = load i8*, i8** %10, align 8
  %303 = call i32 %300(%struct.TYPE_32__* %301, i8* %302)
  store i32 %303, i32* %17, align 4
  %304 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %305 = call i32 @MX_CELL_SIZE(%struct.TYPE_35__* %304)
  %306 = load i32, i32* %17, align 4
  %307 = icmp sge i32 %305, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @assert(i32 %308)
  %310 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %310, i32 0, i32 3
  %312 = load i8*, i8** %311, align 8
  store i8* %312, i8** %19, align 8
  %313 = load i8*, i8** %19, align 8
  %314 = icmp ne i8* %313, null
  %315 = zext i1 %314 to i32
  %316 = call i32 @assert(i32 %315)
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @sqlite3PagerWrite(i32 %319)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* @SQLITE_OK, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %334

324:                                              ; preds = %297
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %326 = load i32, i32* %11, align 4
  %327 = load i8*, i8** %10, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 -4
  %329 = load i32, i32* %17, align 4
  %330 = add nsw i32 %329, 4
  %331 = load i8*, i8** %19, align 8
  %332 = load i32, i32* %18, align 4
  %333 = call i32 @insertCell(%struct.TYPE_32__* %325, i32 %326, i8* %328, i32 %330, i8* %331, i32 %332, i32* %8)
  br label %334

334:                                              ; preds = %324, %297
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 %338, 1
  %340 = load i32, i32* %17, align 4
  %341 = call i32 @dropCell(%struct.TYPE_32__* %335, i32 %339, i32 %340, i32* %8)
  %342 = load i32, i32* %8, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %334
  %345 = load i32, i32* %8, align 4
  store i32 %345, i32* %3, align 4
  br label %496

346:                                              ; preds = %334
  br label %347

347:                                              ; preds = %346, %237
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %349 = call i32 @balance(%struct.TYPE_36__* %348)
  store i32 %349, i32* %8, align 4
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* @SQLITE_OK, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %400

353:                                              ; preds = %347
  %354 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* %12, align 4
  %358 = icmp sgt i32 %356, %357
  br i1 %358, label %359, label %400

359:                                              ; preds = %353
  %360 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %360, i32 0, i32 6
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %361, align 8
  %363 = call i32 @releasePageNotNull(%struct.TYPE_32__* %362)
  %364 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = add nsw i32 %366, -1
  store i32 %367, i32* %365, align 8
  br label %368

368:                                              ; preds = %374, %359
  %369 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* %12, align 4
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %374, label %386

374:                                              ; preds = %368
  %375 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %375, i32 0, i32 7
  %377 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %376, align 8
  %378 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = add nsw i32 %380, -1
  store i32 %381, i32* %379, align 8
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %377, i64 %382
  %384 = load %struct.TYPE_32__*, %struct.TYPE_32__** %383, align 8
  %385 = call i32 @releasePage(%struct.TYPE_32__* %384)
  br label %368

386:                                              ; preds = %368
  %387 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %387, i32 0, i32 7
  %389 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %388, align 8
  %390 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %389, i64 %393
  %395 = load %struct.TYPE_32__*, %struct.TYPE_32__** %394, align 8
  %396 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %396, i32 0, i32 6
  store %struct.TYPE_32__* %395, %struct.TYPE_32__** %397, align 8
  %398 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %399 = call i32 @balance(%struct.TYPE_36__* %398)
  store i32 %399, i32* %8, align 4
  br label %400

400:                                              ; preds = %386, %353, %347
  %401 = load i32, i32* %8, align 4
  %402 = load i32, i32* @SQLITE_OK, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %494

404:                                              ; preds = %400
  %405 = load i32, i32* %14, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %475

407:                                              ; preds = %404
  %408 = load i32, i32* %15, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %421

410:                                              ; preds = %407
  %411 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* %12, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %419, label %416

416:                                              ; preds = %410
  %417 = load i64, i64* @CORRUPT_DB, align 8
  %418 = icmp ne i64 %417, 0
  br label %419

419:                                              ; preds = %416, %410
  %420 = phi i1 [ true, %410 ], [ %418, %416 ]
  br label %421

421:                                              ; preds = %419, %407
  %422 = phi i1 [ false, %407 ], [ %420, %419 ]
  %423 = zext i1 %422 to i32
  %424 = call i32 @assert(i32 %423)
  %425 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %426 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %426, i32 0, i32 6
  %428 = load %struct.TYPE_32__*, %struct.TYPE_32__** %427, align 8
  %429 = icmp eq %struct.TYPE_32__* %425, %428
  br i1 %429, label %433, label %430

430:                                              ; preds = %421
  %431 = load i64, i64* @CORRUPT_DB, align 8
  %432 = icmp ne i64 %431, 0
  br label %433

433:                                              ; preds = %430, %421
  %434 = phi i1 [ true, %421 ], [ %432, %430 ]
  %435 = zext i1 %434 to i32
  %436 = call i32 @assert(i32 %435)
  %437 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %438 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %433
  %442 = load i64, i64* @CORRUPT_DB, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %441, %433
  %445 = load i32, i32* %11, align 4
  %446 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = icmp sle i32 %445, %448
  br label %450

450:                                              ; preds = %444, %441
  %451 = phi i1 [ false, %441 ], [ %449, %444 ]
  %452 = zext i1 %451 to i32
  %453 = call i32 @assert(i32 %452)
  %454 = load i64, i64* @CURSOR_SKIPNEXT, align 8
  %455 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %455, i32 0, i32 2
  store i64 %454, i64* %456, align 8
  %457 = load i32, i32* %11, align 4
  %458 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %459 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = icmp sge i32 %457, %460
  br i1 %461, label %462, label %471

462:                                              ; preds = %450
  %463 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %463, i32 0, i32 5
  store i32 -1, i32* %464, align 8
  %465 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %466 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = sub nsw i32 %467, 1
  %469 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %469, i32 0, i32 4
  store i32 %468, i32* %470, align 4
  br label %474

471:                                              ; preds = %450
  %472 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %472, i32 0, i32 5
  store i32 1, i32* %473, align 8
  br label %474

474:                                              ; preds = %471, %462
  br label %493

475:                                              ; preds = %404
  %476 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %477 = call i32 @moveToRoot(%struct.TYPE_36__* %476)
  store i32 %477, i32* %8, align 4
  %478 = load i32, i32* %15, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %475
  %481 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %482 = call i32 @btreeReleaseAllCursorPages(%struct.TYPE_36__* %481)
  %483 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %484 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %484, i32 0, i32 2
  store i64 %483, i64* %485, align 8
  br label %486

486:                                              ; preds = %480, %475
  %487 = load i32, i32* %8, align 4
  %488 = load i32, i32* @SQLITE_EMPTY, align 4
  %489 = icmp eq i32 %487, %488
  br i1 %489, label %490, label %492

490:                                              ; preds = %486
  %491 = load i32, i32* @SQLITE_OK, align 4
  store i32 %491, i32* %8, align 4
  br label %492

492:                                              ; preds = %490, %486
  br label %493

493:                                              ; preds = %492, %474
  br label %494

494:                                              ; preds = %493, %400
  %495 = load i32, i32* %8, align 4
  store i32 %495, i32* %3, align 4
  br label %496

496:                                              ; preds = %494, %344, %295, %255, %235, %222, %197, %178, %158, %123, %92
  %497 = load i32, i32* %3, align 4
  ret i32 %497
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorOwnsBtShared(%struct.TYPE_36__*) #1

declare dso_local i32 @hasSharedCacheTableLock(%struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @hasReadConflicts(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @btreeRestoreCursorPosition(%struct.TYPE_36__*) #1

declare dso_local i8* @findCell(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @btreeComputeFreeSpace(%struct.TYPE_32__*) #1

declare dso_local i32 @cellSizePtr(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @saveCursorKey(%struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3BtreePrevious(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @saveAllCursors(%struct.TYPE_35__*, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @invalidateIncrblobCursors(%struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @clearCell(%struct.TYPE_32__*, i8*, %struct.TYPE_33__*) #1

declare dso_local i32 @dropCell(%struct.TYPE_32__*, i32, i32, i32*) #1

declare dso_local i32 @MX_CELL_SIZE(%struct.TYPE_35__*) #1

declare dso_local i32 @insertCell(%struct.TYPE_32__*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @balance(%struct.TYPE_36__*) #1

declare dso_local i32 @releasePageNotNull(%struct.TYPE_32__*) #1

declare dso_local i32 @releasePage(%struct.TYPE_32__*) #1

declare dso_local i32 @moveToRoot(%struct.TYPE_36__*) #1

declare dso_local i32 @btreeReleaseAllCursorPages(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
