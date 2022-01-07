; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_lockBtree.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_lockBtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_11__*, i64, i8*, i8*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ResetDatabase = common dso_local global i32 0, align 4
@SQLITE_NOTADB = common dso_local global i32 0, align 4
@zMagicHeader = common dso_local global i8* null, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@BTS_NO_WAL = common dso_local global i32 0, align 4
@SQLITE_DEFAULT_WAL_SYNCHRONOUS = common dso_local global i64 0, align 8
@SQLITE_DEFAULT_SYNCHRONOUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"@  \00", align 1
@SQLITE_MAX_PAGE_SIZE = common dso_local global i64 0, align 8
@BTS_PAGESIZE_FIXED = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @lockBtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lockBtree(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sqlite3_mutex_held(i32 %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sqlite3PagerSharedLock(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %341

33:                                               ; preds = %1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @btreeGetPage(%struct.TYPE_12__* %34, i32 1, %struct.TYPE_11__** %5, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %341

41:                                               ; preds = %33
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 28
  %46 = call i64 @get4byte(i32* %45)
  store i64 %46, i64* %8, align 8
  store i64 %46, i64* %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = bitcast i64* %7 to i32*
  %51 = call i32 @sqlite3PagerPagecount(i32 %49, i32* %50)
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 24
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 92
  %63 = call i64 (i32*, ...) @memcmp(i32* %58, i32* %62, i32 4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54, %41
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %65, %54
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 12
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SQLITE_ResetDatabase, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i64, i64* %6, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %261

80:                                               ; preds = %77
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %11, align 8
  %84 = load i32, i32* @SQLITE_NOTADB, align 4
  store i32 %84, i32* %4, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i8*, i8** @zMagicHeader, align 8
  %87 = call i64 (i32*, ...) @memcmp(i32* %85, i8* %86, i32 16)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %335

90:                                               ; preds = %80
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 18
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @BTS_READ_ONLY, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 19
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 2
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %335

107:                                              ; preds = %101
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 19
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %142

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BTS_NO_WAL, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %112
  store i32 0, i32* %12, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 13
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @sqlite3PagerOpenWal(i32 %122, i32* %12)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @SQLITE_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %335

128:                                              ; preds = %119
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = load i64, i64* @SQLITE_DEFAULT_WAL_SYNCHRONOUS, align 8
  %131 = add nsw i64 %130, 1
  %132 = call i32 @setDefaultSyncFlag(%struct.TYPE_12__* %129, i64 %131)
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = call i32 @releasePageOne(%struct.TYPE_11__* %136)
  %138 = load i32, i32* @SQLITE_OK, align 4
  store i32 %138, i32* %2, align 4
  br label %341

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* @SQLITE_NOTADB, align 4
  store i32 %141, i32* %4, align 4
  br label %147

142:                                              ; preds = %112, %107
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = load i64, i64* @SQLITE_DEFAULT_SYNCHRONOUS, align 8
  %145 = add nsw i64 %144, 1
  %146 = call i32 @setDefaultSyncFlag(%struct.TYPE_12__* %143, i64 %145)
  br label %147

147:                                              ; preds = %142, %140
  %148 = load i32*, i32** %11, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 21
  %150 = call i64 (i32*, ...) @memcmp(i32* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %335

153:                                              ; preds = %147
  %154 = load i32*, i32** %11, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 16
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = load i32*, i32** %11, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 17
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %157, %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %9, align 8
  %164 = load i64, i64* %9, align 8
  %165 = sub nsw i64 %164, 1
  %166 = load i64, i64* %9, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %153
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* @SQLITE_MAX_PAGE_SIZE, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %9, align 8
  %175 = icmp sle i64 %174, 256
  br i1 %175, label %176, label %177

176:                                              ; preds = %173, %169, %153
  br label %335

177:                                              ; preds = %173
  %178 = load i32, i32* @BTS_PAGESIZE_FIXED, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i64, i64* %9, align 8
  %184 = and i64 %183, 7
  %185 = icmp eq i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i64, i64* %9, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 20
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = sub nsw i64 %188, %192
  store i64 %193, i64* %10, align 8
  %194 = load i64, i64* %9, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %221

199:                                              ; preds = %177
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = call i32 @releasePageOne(%struct.TYPE_11__* %200)
  %202 = load i64, i64* %10, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load i64, i64* %9, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %210 = call i32 @freeTempSpace(%struct.TYPE_12__* %209)
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 13
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* %10, align 8
  %218 = sub nsw i64 %216, %217
  %219 = call i32 @sqlite3PagerSetPagesize(i32 %213, i64* %215, i64 %218)
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* %4, align 4
  store i32 %220, i32* %2, align 4
  br label %341

221:                                              ; preds = %177
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 12
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = call i64 @sqlite3WritableSchema(%struct.TYPE_13__* %224)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load i64, i64* %6, align 8
  %229 = load i64, i64* %7, align 8
  %230 = icmp sgt i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %232, i32* %4, align 4
  br label %335

233:                                              ; preds = %227, %221
  %234 = load i64, i64* %10, align 8
  %235 = icmp slt i64 %234, 480
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %335

237:                                              ; preds = %233
  %238 = load i64, i64* %9, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  store i64 %238, i64* %240, align 8
  %241 = load i64, i64* %10, align 8
  %242 = trunc i64 %241 to i32
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load i32*, i32** %11, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 52
  %247 = call i64 @get4byte(i32* %246)
  %248 = icmp ne i64 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 1, i32 0
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  %253 = load i32*, i32** %11, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 64
  %255 = call i64 @get4byte(i32* %254)
  %256 = icmp ne i64 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 1, i32 0
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %237, %77
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = sub nsw i32 %264, 12
  %266 = mul nsw i32 %265, 64
  %267 = sdiv i32 %266, 255
  %268 = sub nsw i32 %267, 23
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 5
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = sub nsw i32 %276, 12
  %278 = mul nsw i32 %277, 32
  %279 = sdiv i32 %278, 255
  %280 = sub nsw i32 %279, 23
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 11
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %287, 35
  %289 = sext i32 %288 to i64
  %290 = inttoptr i64 %289 to i8*
  %291 = ptrtoint i8* %290 to i64
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 6
  store i64 %291, i64* %293, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 12
  %298 = mul nsw i32 %297, 32
  %299 = sdiv i32 %298, 255
  %300 = sub nsw i32 %299, 23
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i8*
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 10
  store i8* %302, i8** %304, align 8
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = icmp sgt i32 %307, 127
  br i1 %308, label %309, label %312

309:                                              ; preds = %261
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 7
  store i32 127, i32* %311, align 8
  br label %318

312:                                              ; preds = %261
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 7
  store i32 %315, i32* %317, align 8
  br label %318

318:                                              ; preds = %312, %309
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %321, 23
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %324 = call i64 @MX_CELL_SIZE(%struct.TYPE_12__* %323)
  %325 = icmp sle i64 %322, %324
  %326 = zext i1 %325 to i32
  %327 = call i32 @assert(i32 %326)
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 8
  store %struct.TYPE_11__* %328, %struct.TYPE_11__** %330, align 8
  %331 = load i64, i64* %6, align 8
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 9
  store i64 %331, i64* %333, align 8
  %334 = load i32, i32* @SQLITE_OK, align 4
  store i32 %334, i32* %2, align 4
  br label %341

335:                                              ; preds = %236, %231, %176, %152, %127, %106, %89
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %337 = call i32 @releasePageOne(%struct.TYPE_11__* %336)
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %339, align 8
  %340 = load i32, i32* %4, align 4
  store i32 %340, i32* %2, align 4
  br label %341

341:                                              ; preds = %335, %318, %199, %135, %39, %31
  %342 = load i32, i32* %2, align 4
  ret i32 %342
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerSharedLock(i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_12__*, i32, %struct.TYPE_11__**, i32) #1

declare dso_local i64 @get4byte(i32*) #1

declare dso_local i32 @sqlite3PagerPagecount(i32, i32*) #1

declare dso_local i64 @memcmp(i32*, ...) #1

declare dso_local i32 @sqlite3PagerOpenWal(i32, i32*) #1

declare dso_local i32 @setDefaultSyncFlag(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @releasePageOne(%struct.TYPE_11__*) #1

declare dso_local i32 @freeTempSpace(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3PagerSetPagesize(i32, i64*, i64) #1

declare dso_local i64 @sqlite3WritableSchema(%struct.TYPE_13__*) #1

declare dso_local i64 @MX_CELL_SIZE(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
