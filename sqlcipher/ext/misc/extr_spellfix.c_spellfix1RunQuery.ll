; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1RunQuery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1RunQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i8**, i32, i32, i32, i64, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i8*, i32 }

@SPELLFIX_MX_HASH = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i64 0, align 8
@SPELLFIX_MX_RUN = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SPELLFIX_IDXNUM_DIST = common dso_local global i32 0, align 4
@SPELLFIX_IDXNUM_TOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32)* @spellfix1RunQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spellfix1RunQuery(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %16, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %17, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %18, align 8
  %37 = load i32, i32* @SPELLFIX_MX_HASH, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %19, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %20, align 8
  %41 = load i32, i32* @SPELLFIX_MX_HASH, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %21, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp eq %struct.TYPE_6__* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %3
  store i32 1, i32* %25, align 4
  br label %433

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @phoneticHash(i8* %55, i32 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %22, align 8
  %59 = load i8*, i8** %22, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i64, i64* @SQLITE_NOMEM, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  store i32 1, i32* %25, align 4
  br label %433

66:                                               ; preds = %54
  %67 = load i8*, i8** %22, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %23, align 4
  %71 = load i32, i32* @SPELLFIX_MX_HASH, align 4
  %72 = sub nsw i32 %71, 2
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load i32, i32* @SPELLFIX_MX_HASH, align 4
  %76 = sub nsw i32 %75, 2
  store i32 %76, i32* %23, align 4
  %77 = load i8*, i8** %22, align 8
  %78 = load i32, i32* %23, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %74, %66
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %23, align 4
  %87 = icmp sgt i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %23, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %23, align 4
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i8*, i8** %22, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @memcpy(i8* %40, i8* %95, i32 %96)
  %98 = load i8*, i8** %22, align 8
  %99 = call i32 @sqlite3_free(i8* %98)
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %40, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @memcpy(i8* %43, i8* %40, i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %43, i64 %106
  store i8 90, i8* %107, align 1
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %43, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SPELLFIX_MX_RUN, align 4
  %116 = icmp slt i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i8**, i8*** %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8*, i8** %121, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i32 @memcpy(i8* %128, i8* %40, i32 %130)
  %132 = load i32*, i32** %18, align 8
  %133 = load i32, i32* @SQLITE_STATIC, align 4
  %134 = call i64 @sqlite3_bind_text(i32* %132, i32 1, i8* %40, i32 -1, i32 %133)
  %135 = load i64, i64* @SQLITE_NOMEM, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %94
  %138 = load i32*, i32** %18, align 8
  %139 = load i32, i32* @SQLITE_STATIC, align 4
  %140 = call i64 @sqlite3_bind_text(i32* %138, i32 2, i8* %43, i32 -1, i32 %139)
  %141 = load i64, i64* @SQLITE_NOMEM, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137, %94
  %144 = load i64, i64* @SQLITE_NOMEM, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  store i32 1, i32* %25, align 4
  br label %433

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %422, %289, %228, %182, %148
  %150 = load i32*, i32** %18, align 8
  %151 = call i64 @sqlite3_step(i32* %150)
  %152 = load i64, i64* @SQLITE_ROW, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %423

154:                                              ; preds = %149
  store i32 -1, i32* %26, align 4
  %155 = load i32*, i32** %18, align 8
  %156 = call i32 @sqlite3_column_int(i32* %155, i32 2)
  store i32 %156, i32* %10, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %154
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @sqlite3_column_bytes(i32* %162, i32 1)
  store i32 %163, i32* %27, align 4
  %164 = load i32*, i32** %18, align 8
  %165 = call i64 @sqlite3_column_text(i32* %164, i32 1)
  %166 = inttoptr i64 %165 to i8*
  store i8* %166, i8** %8, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* %27, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @editDist3Core(i64 %169, i8* %170, i32 %171, i32 %174, i32* %26)
  store i32 %175, i32* %9, align 4
  br label %189

176:                                              ; preds = %154
  %177 = load i32*, i32** %18, align 8
  %178 = call i64 @sqlite3_column_text(i32* %177, i32 3)
  %179 = inttoptr i64 %178 to i8*
  store i8* %179, i8** %7, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %149

183:                                              ; preds = %176
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @editdist1(i32 %186, i8* %187, i32 0)
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %183, %161
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i64, i64* @SQLITE_NOMEM, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %423

197:                                              ; preds = %189
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = icmp sge i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @SPELLFIX_IDXNUM_DIST, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 1, i32 0
  %215 = icmp eq i32 %206, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %259

222:                                              ; preds = %197
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %223, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %149

229:                                              ; preds = %222
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp sge i32 %232, %235
  br i1 %236, label %237, label %258

237:                                              ; preds = %229
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @SPELLFIX_IDXNUM_TOP, align 4
  %242 = and i32 %240, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %237
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 %248, 2
  %250 = add nsw i32 %249, 10
  %251 = call i32 @spellfix1ResizeCursor(%struct.TYPE_7__* %245, i32 %250)
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = icmp eq %struct.TYPE_6__* %254, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  br label %423

257:                                              ; preds = %244
  br label %258

258:                                              ; preds = %257, %237, %229
  br label %259

259:                                              ; preds = %258, %197
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @spellfix1Score(i32 %260, i32 %261)
  store i32 %262, i32* %11, align 4
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %259
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %13, align 4
  br label %291

274:                                              ; preds = %259
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %12, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %289

278:                                              ; preds = %274
  %279 = load i32, i32* %14, align 4
  store i32 %279, i32* %13, align 4
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @sqlite3_free(i8* %287)
  br label %290

289:                                              ; preds = %274
  br label %149

290:                                              ; preds = %278
  br label %291

291:                                              ; preds = %290, %270
  %292 = load i32*, i32** %18, align 8
  %293 = call i64 @sqlite3_column_text(i32* %292, i32 1)
  %294 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %293)
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 1
  store i8* %294, i8** %301, align 8
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = icmp eq i8* %309, null
  br i1 %310, label %311, label %316

311:                                              ; preds = %291
  %312 = load i64, i64* @SQLITE_NOMEM, align 8
  %313 = trunc i64 %312 to i32
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  br label %423

316:                                              ; preds = %291
  %317 = load i32*, i32** %18, align 8
  %318 = call i32 @sqlite3_column_int64(i32* %317, i32 0)
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 3
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = load i32, i32* %13, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 6
  store i32 %318, i32* %325, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = load i32, i32* %13, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 2
  store i32 %326, i32* %333, align 8
  %334 = load i32, i32* %9, align 4
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %336, align 8
  %338 = load i32, i32* %13, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 3
  store i32 %334, i32* %341, align 4
  %342 = load i32, i32* %11, align 4
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  store i32 %342, i32* %349, align 8
  %350 = load i32, i32* %26, align 4
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 3
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %352, align 8
  %354 = load i32, i32* %13, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 4
  store i32 %350, i32* %357, align 8
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 3
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 5
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* %16, align 4
  %367 = add nsw i32 %366, 1
  %368 = call i32 @memcpy(i8* %365, i8* %40, i32 %367)
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = icmp slt i32 %371, %374
  br i1 %375, label %376, label %381

376:                                              ; preds = %316
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %378, align 8
  br label %381

381:                                              ; preds = %376, %316
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = icmp eq i32 %384, %387
  br i1 %388, label %389, label %422

389:                                              ; preds = %381
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 3
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i64 0
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  store i32 %395, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %396

396:                                              ; preds = %418, %389
  %397 = load i32, i32* %15, align 4
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = icmp slt i32 %397, %400
  br i1 %401, label %402, label %421

402:                                              ; preds = %396
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 3
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %404, align 8
  %406 = load i32, i32* %15, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  store i32 %410, i32* %11, align 4
  %411 = load i32, i32* %12, align 4
  %412 = load i32, i32* %11, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %402
  %415 = load i32, i32* %11, align 4
  store i32 %415, i32* %12, align 4
  %416 = load i32, i32* %15, align 4
  store i32 %416, i32* %14, align 4
  br label %417

417:                                              ; preds = %414, %402
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %15, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %15, align 4
  br label %396

421:                                              ; preds = %396
  br label %422

422:                                              ; preds = %421, %381
  br label %149

423:                                              ; preds = %311, %256, %192, %149
  %424 = load i32*, i32** %18, align 8
  %425 = call i32 @sqlite3_reset(i32* %424)
  store i32 %425, i32* %24, align 4
  %426 = load i32, i32* %24, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %423
  %429 = load i32, i32* %24, align 4
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 1
  store i32 %429, i32* %431, align 4
  br label %432

432:                                              ; preds = %428, %423
  store i32 0, i32* %25, align 4
  br label %433

433:                                              ; preds = %432, %143, %61, %53
  %434 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %434)
  %435 = load i32, i32* %25, align 4
  switch i32 %435, label %437 [
    i32 0, label %436
    i32 1, label %436
  ]

436:                                              ; preds = %433, %433
  ret void

437:                                              ; preds = %433
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @phoneticHash(i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sqlite3_free(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i32 @sqlite3_column_int(i32*, i32) #2

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #2

declare dso_local i64 @sqlite3_column_text(i32*, i32) #2

declare dso_local i32 @editDist3Core(i64, i8*, i32, i32, i32*) #2

declare dso_local i32 @editdist1(i32, i8*, i32) #2

declare dso_local i32 @spellfix1ResizeCursor(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @spellfix1Score(i32, i32) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i64) #2

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #2

declare dso_local i32 @sqlite3_reset(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
