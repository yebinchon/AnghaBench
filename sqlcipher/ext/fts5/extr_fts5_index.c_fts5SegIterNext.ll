; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_20__*, i8*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32* }

@FTS5_DETAIL_NONE = common dso_local global i64 0, align 8
@FTS5_SEGITER_ONETERM = common dso_local global i32 0, align 4
@FTS5_CORRUPT = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*, i32*)* @fts5SegIterNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegIterNext(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %23, %3
  %28 = phi i1 [ true, %3 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FTS5_DETAIL_NONE, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %11, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = call i32 @ASSERT_SZLEAF_OK(%struct.TYPE_20__* %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %113

58:                                               ; preds = %27
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp sle i32 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_nc(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %58
  store i32 1, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %74 = call i32 @fts5LeafFirstTermOff(%struct.TYPE_20__* %73)
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %10, align 4
  %82 = call i8* @fts5GetVarint32(i32* %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr i8, i8* %82, i64 %84
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %76, %71
  br label %109

88:                                               ; preds = %58
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i64 @sqlite3Fts5GetVarint(i32* %92, i64* %13)
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %8, align 4
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp sgt i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert_nc(i32 %107)
  br label %109

109:                                              ; preds = %88, %87
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %321

113:                                              ; preds = %27
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %196

118:                                              ; preds = %113
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %118
  %126 = load i32*, i32** %6, align 8
  %127 = icmp ne i32* %126, null
  br label %128

128:                                              ; preds = %125, %118
  %129 = phi i1 [ true, %118 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 0, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @sqlite3Fts5HashScanNext(i32 %141)
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @sqlite3Fts5HashScanEntry(i32 %145, i8** %15, i32** %14, i32* %16)
  br label %147

147:                                              ; preds = %138, %128
  %148 = load i32*, i32** %14, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = call i32 @fts5DataRelease(%struct.TYPE_20__* %153)
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 6
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %156, align 8
  br label %195

157:                                              ; preds = %147
  %158 = load i32*, i32** %14, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  store i32* %158, i32** %162, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 8
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 9
  %181 = load i8*, i8** %15, align 8
  %182 = call i64 @strlen(i8* %181)
  %183 = trunc i64 %182 to i32
  %184 = load i8*, i8** %15, align 8
  %185 = bitcast i8* %184 to i32*
  %186 = call i32 @sqlite3Fts5BufferSet(i64* %178, i32* %180, i32 %183, i32* %185)
  %187 = load i32*, i32** %14, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 8
  %190 = bitcast i32* %189 to i64*
  %191 = call i32 @fts5GetVarint(i32* %187, i64* %190)
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i32*, i32** %6, align 8
  store i32 1, i32* %194, align 4
  br label %195

195:                                              ; preds = %157, %150
  br label %320

196:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %318, %196
  %198 = load i32, i32* %8, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %319

200:                                              ; preds = %197
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = call i32 @fts5SegIterNextPage(%struct.TYPE_19__* %201, %struct.TYPE_18__* %202)
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  store %struct.TYPE_20__* %206, %struct.TYPE_20__** %7, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %208 = icmp eq %struct.TYPE_20__* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %319

210:                                              ; preds = %200
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %212 = call i32 @ASSERT_SZLEAF_OK(%struct.TYPE_20__* %211)
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %214 = call i32 @fts5LeafFirstRowidOff(%struct.TYPE_20__* %213)
  store i32 %214, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %268

216:                                              ; preds = %210
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %268

222:                                              ; preds = %216
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 8
  %231 = bitcast i32* %230 to i64*
  %232 = call i64 @sqlite3Fts5GetVarint(i32* %228, i64* %231)
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp sgt i32 %242, %245
  br i1 %246, label %247, label %267

247:                                              ; preds = %222
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @fts5GetVarint32(i32* %258, i32 %261)
  %263 = sext i32 %250 to i64
  %264 = getelementptr i8, i8* %262, i64 %263
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 7
  store i8* %264, i8** %266, align 8
  br label %267

267:                                              ; preds = %247, %222
  br label %301

268:                                              ; preds = %216, %210
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp sgt i32 %271, %274
  br i1 %275, label %276, label %300

276:                                              ; preds = %268
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %282, i64 %286
  %288 = load i32, i32* %8, align 4
  %289 = call i8* @fts5GetVarint32(i32* %287, i32 %288)
  %290 = sext i32 %279 to i64
  %291 = getelementptr i8, i8* %289, i64 %290
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 7
  store i8* %291, i8** %293, align 8
  %294 = load i32, i32* %8, align 4
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* %8, align 4
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 8
  store i32 1, i32* %9, align 4
  br label %300

300:                                              ; preds = %276, %268
  br label %301

301:                                              ; preds = %300, %267
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert_nc(i32 %307)
  %309 = load i32, i32* %8, align 4
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp sgt i32 %309, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %301
  %315 = load i64, i64* @FTS5_CORRUPT, align 8
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 0
  store i64 %315, i64* %317, align 8
  br label %401

318:                                              ; preds = %301
  br label %197

319:                                              ; preds = %209, %197
  br label %320

320:                                              ; preds = %319, %195
  br label %321

321:                                              ; preds = %320, %109
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 6
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %323, align 8
  %325 = icmp ne %struct.TYPE_20__* %324, null
  br i1 %325, label %326, label %401

326:                                              ; preds = %321
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %357

329:                                              ; preds = %326
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %329
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 6
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %338, align 8
  %340 = call i32 @fts5DataRelease(%struct.TYPE_20__* %339)
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 6
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %342, align 8
  br label %356

343:                                              ; preds = %329
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %346 = load i32, i32* %10, align 4
  %347 = call i32 @fts5SegIterLoadTerm(%struct.TYPE_19__* %344, %struct.TYPE_18__* %345, i32 %346)
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %350 = call i32 @fts5SegIterLoadNPos(%struct.TYPE_19__* %348, %struct.TYPE_18__* %349)
  %351 = load i32*, i32** %6, align 8
  %352 = icmp ne i32* %351, null
  br i1 %352, label %353, label %355

353:                                              ; preds = %343
  %354 = load i32*, i32** %6, align 8
  store i32 1, i32* %354, align 4
  br label %355

355:                                              ; preds = %353, %343
  br label %356

356:                                              ; preds = %355, %336
  br label %400

357:                                              ; preds = %326
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @SQLITE_OK, align 8
  %362 = icmp eq i64 %360, %361
  %363 = zext i1 %362 to i32
  %364 = call i32 @assert(i32 %363)
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp sle i32 %367, %372
  %374 = zext i1 %373 to i32
  %375 = call i32 @assert(i32 %374)
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 6
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 2
  %380 = load i32*, i32** %379, align 8
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %17, align 4
  %385 = call i32 @fts5FastGetVarint32(i32* %380, i32 %383, i32 %384)
  %386 = load i32, i32* %17, align 4
  %387 = and i32 %386, 1
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 5
  store i32 %387, i32* %389, align 4
  %390 = load i32, i32* %17, align 4
  %391 = ashr i32 %390, 1
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = icmp sge i32 %396, 0
  %398 = zext i1 %397 to i32
  %399 = call i32 @assert_nc(i32 %398)
  br label %400

400:                                              ; preds = %357, %356
  br label %401

401:                                              ; preds = %314, %400, %321
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ASSERT_SZLEAF_OK(%struct.TYPE_20__*) #1

declare dso_local i32 @assert_nc(i32) #1

declare dso_local i32 @fts5LeafFirstTermOff(%struct.TYPE_20__*) #1

declare dso_local i8* @fts5GetVarint32(i32*, i32) #1

declare dso_local i64 @sqlite3Fts5GetVarint(i32*, i64*) #1

declare dso_local i32 @sqlite3Fts5HashScanNext(i32) #1

declare dso_local i32 @sqlite3Fts5HashScanEntry(i32, i8**, i32**, i32*) #1

declare dso_local i32 @fts5DataRelease(%struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3Fts5BufferSet(i64*, i32*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fts5GetVarint(i32*, i64*) #1

declare dso_local i32 @fts5SegIterNextPage(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fts5LeafFirstRowidOff(%struct.TYPE_20__*) #1

declare dso_local i32 @fts5SegIterLoadTerm(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @fts5SegIterLoadNPos(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fts5FastGetVarint32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
