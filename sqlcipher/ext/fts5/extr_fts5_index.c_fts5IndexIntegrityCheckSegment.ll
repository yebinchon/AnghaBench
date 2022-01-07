; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexIntegrityCheckSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexIntegrityCheckSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i64, i32* }

@.str = private unnamed_addr constant [72 x i8] c"SELECT segid, term, (pgno>>1), (pgno&1) FROM %Q.'%q_idx' WHERE segid=%d\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@FTS5_CORRUPT = common dso_local global i8* null, align 8
@iter = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_25__*)* @fts5IndexIntegrityCheckSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5IndexIntegrityCheckSegment(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %5, align 8
  store i32* null, i32** %6, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %327

42:                                               ; preds = %2
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52)
  %54 = call i32 @fts5IndexPrepareStmt(%struct.TYPE_26__* %43, i32** %6, i32 %53)
  br label %55

55:                                               ; preds = %313, %83, %42
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i64, i64* @SQLITE_ROW, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @sqlite3_step(i32* %63)
  %65 = icmp eq i64 %62, %64
  br label %66

66:                                               ; preds = %61, %55
  %67 = phi i1 [ false, %55 ], [ %65, %61 ]
  br i1 %67, label %68, label %315

68:                                               ; preds = %66
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @sqlite3_column_bytes(i32* %69, i32 1)
  store i32 %70, i32* %12, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @sqlite3_column_text(i32* %71, i32 1)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %13, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @sqlite3_column_int(i32* %74, i32 2)
  store i32 %75, i32* %14, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @sqlite3_column_int(i32* %76, i32 3)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %55

84:                                               ; preds = %68
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i64 @FTS5_SEGMENT_ROWID(i32 %87, i32 %88)
  store i64 %89, i64* %10, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call %struct.TYPE_27__* @fts5LeafRead(%struct.TYPE_26__* %90, i64 %91)
  store %struct.TYPE_27__* %92, %struct.TYPE_27__** %11, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %94 = icmp eq %struct.TYPE_27__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %315

96:                                               ; preds = %84
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i8*, i8** @FTS5_CORRUPT, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %173

109:                                              ; preds = %96
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %111 = call i32 @fts5LeafFirstTermOff(%struct.TYPE_27__* %110)
  store i32 %111, i32* %16, align 4
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %113 = call i64 @fts5LeafFirstRowidOff(%struct.TYPE_27__* %112)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %120, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %118, %109
  %126 = load i8*, i8** @FTS5_CORRUPT, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %169

130:                                              ; preds = %118
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %18, align 4
  %138 = call i64 @fts5GetVarint32(i32* %136, i32 %137)
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %16, align 4
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i8*, i8** %13, align 8
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @MIN(i32 %150, i32 %151)
  %153 = call i32 @fts5Memcmp(i32* %148, i8* %149, i32 %152)
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %130
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %12, align 4
  %159 = sub nsw i32 %157, %158
  store i32 %159, i32* %19, align 4
  br label %160

160:                                              ; preds = %156, %130
  %161 = load i32, i32* %19, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i8*, i8** @FTS5_CORRUPT, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %163, %160
  br label %169

169:                                              ; preds = %168, %125
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %172 = call i32 @fts5IntegrityCheckPgidx(%struct.TYPE_26__* %170, %struct.TYPE_27__* %171)
  br label %173

173:                                              ; preds = %169, %104
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %175 = call i32 @fts5DataRelease(%struct.TYPE_27__* %174)
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %315

181:                                              ; preds = %173
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  %188 = load i32, i32* %14, align 4
  %189 = sub nsw i32 %188, 1
  %190 = call i32 @fts5IndexIntegrityCheckEmpty(%struct.TYPE_26__* %182, %struct.TYPE_25__* %183, i32 %185, i32 %187, i32 %189)
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %181
  br label %315

196:                                              ; preds = %181
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %309

199:                                              ; preds = %196
  store i32* null, i32** %20, align 8
  %200 = load i32, i32* %14, align 4
  store i32 %200, i32* %21, align 4
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call i32* @fts5DlidxIterInit(%struct.TYPE_26__* %204, i32 0, i32 %205, i32 %206)
  store i32* %207, i32** %20, align 8
  br label %208

208:                                              ; preds = %297, %199
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %210 = load i32*, i32** %20, align 8
  %211 = call i64 @fts5DlidxIterEof(%struct.TYPE_26__* %209, i32* %210)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %301

213:                                              ; preds = %208
  %214 = load i32, i32* %21, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %23, align 4
  br label %216

216:                                              ; preds = %243, %213
  %217 = load i32, i32* %23, align 4
  %218 = load i32*, i32** %20, align 8
  %219 = call i32 @fts5DlidxIterPgno(i32* %218)
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %246

221:                                              ; preds = %216
  %222 = load i32, i32* %22, align 4
  %223 = load i32, i32* %23, align 4
  %224 = call i64 @FTS5_SEGMENT_ROWID(i32 %222, i32 %223)
  store i64 %224, i64* %24, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %226 = load i64, i64* %24, align 8
  %227 = call %struct.TYPE_27__* @fts5DataRead(%struct.TYPE_26__* %225, i64 %226)
  store %struct.TYPE_27__* %227, %struct.TYPE_27__** %11, align 8
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %229 = icmp ne %struct.TYPE_27__* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %221
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %232 = call i64 @fts5LeafFirstRowidOff(%struct.TYPE_27__* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %230
  %235 = load i8*, i8** @FTS5_CORRUPT, align 8
  %236 = ptrtoint i8* %235 to i32
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %234, %230
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %241 = call i32 @fts5DataRelease(%struct.TYPE_27__* %240)
  br label %242

242:                                              ; preds = %239, %221
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %23, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %23, align 4
  br label %216

246:                                              ; preds = %216
  %247 = load i32*, i32** %20, align 8
  %248 = call i32 @fts5DlidxIterPgno(i32* %247)
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %21, align 4
  %251 = call i64 @FTS5_SEGMENT_ROWID(i32 %249, i32 %250)
  store i64 %251, i64* %24, align 8
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %253 = load i64, i64* %24, align 8
  %254 = call %struct.TYPE_27__* @fts5DataRead(%struct.TYPE_26__* %252, i64 %253)
  store %struct.TYPE_27__* %254, %struct.TYPE_27__** %11, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %256 = icmp ne %struct.TYPE_27__* %255, null
  br i1 %256, label %257, label %296

257:                                              ; preds = %246
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %259 = call i64 @fts5LeafFirstRowidOff(%struct.TYPE_27__* %258)
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %26, align 4
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %262 = call i32 @ASSERT_SZLEAF_OK(%struct.TYPE_27__* %261)
  %263 = load i32, i32* %26, align 4
  %264 = sext i32 %263 to i64
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp sge i64 %264, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %257
  %270 = load i8*, i8** @FTS5_CORRUPT, align 8
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  br label %293

274:                                              ; preds = %257
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %26, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = bitcast i64* %25 to i32*
  %282 = call i32 @fts5GetVarint(i32* %280, i32* %281)
  %283 = load i64, i64* %25, align 8
  %284 = load i32*, i32** %20, align 8
  %285 = call i64 @fts5DlidxIterRowid(i32* %284)
  %286 = icmp ne i64 %283, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %274
  %288 = load i8*, i8** @FTS5_CORRUPT, align 8
  %289 = ptrtoint i8* %288 to i32
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  br label %292

292:                                              ; preds = %287, %274
  br label %293

293:                                              ; preds = %292, %269
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %295 = call i32 @fts5DataRelease(%struct.TYPE_27__* %294)
  br label %296

296:                                              ; preds = %293, %246
  br label %297

297:                                              ; preds = %296
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %299 = load i32*, i32** %20, align 8
  %300 = call i32 @fts5DlidxIterNext(%struct.TYPE_26__* %298, i32* %299)
  br label %208

301:                                              ; preds = %208
  %302 = load i32, i32* %23, align 4
  store i32 %302, i32* %9, align 4
  %303 = load i32*, i32** %20, align 8
  %304 = call i32 @fts5DlidxIterFree(i32* %303)
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %306 = load i32, i32* %22, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 @fts5TestDlidxReverse(%struct.TYPE_26__* %305, i32 %306, i32 %307)
  br label %313

309:                                              ; preds = %196
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %9, align 4
  br label %313

313:                                              ; preds = %309, %301
  %314 = load i32, i32* %14, align 4
  store i32 %314, i32* %8, align 4
  br label %55

315:                                              ; preds = %195, %180, %95, %66
  %316 = load i32*, i32** %6, align 8
  %317 = call i32 @sqlite3_finalize(i32* %316)
  store i32 %317, i32* %7, align 4
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @SQLITE_OK, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %315
  %324 = load i32, i32* %7, align 4
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  br label %327

327:                                              ; preds = %41, %323, %315
  ret void
}

declare dso_local i32 @fts5IndexPrepareStmt(%struct.TYPE_26__*, i32**, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i32, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @FTS5_SEGMENT_ROWID(i32, i32) #1

declare dso_local %struct.TYPE_27__* @fts5LeafRead(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @fts5LeafFirstTermOff(%struct.TYPE_27__*) #1

declare dso_local i64 @fts5LeafFirstRowidOff(%struct.TYPE_27__*) #1

declare dso_local i64 @fts5GetVarint32(i32*, i32) #1

declare dso_local i32 @fts5Memcmp(i32*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @fts5IntegrityCheckPgidx(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @fts5DataRelease(%struct.TYPE_27__*) #1

declare dso_local i32 @fts5IndexIntegrityCheckEmpty(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32* @fts5DlidxIterInit(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i64 @fts5DlidxIterEof(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @fts5DlidxIterPgno(i32*) #1

declare dso_local %struct.TYPE_27__* @fts5DataRead(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @ASSERT_SZLEAF_OK(%struct.TYPE_27__*) #1

declare dso_local i32 @fts5GetVarint(i32*, i32*) #1

declare dso_local i64 @fts5DlidxIterRowid(i32*) #1

declare dso_local i32 @fts5DlidxIterNext(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @fts5DlidxIterFree(i32*) #1

declare dso_local i32 @fts5TestDlidxReverse(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
