; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5StructureDecode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5StructureDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_MAX_SEGMENT = common dso_local global i32 0, align 4
@FTS5_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.TYPE_8__**)* @fts5StructureDecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5StructureDecode(i32* %0, i32 %1, i32* %2, %struct.TYPE_8__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %9, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %16, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @sqlite3Fts5Get32(i32* %25)
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %4
  store i32 4, i32* %11, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @fts5GetVarint32(i32* %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @fts5GetVarint32(i32* %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @FTS5_MAX_SEGMENT, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @FTS5_MAX_SEGMENT, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %55, %52, %28
  %63 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %63, i32* %5, align 4
  br label %286

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = mul i64 16, %67
  %69 = add i64 32, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @sqlite3Fts5MallocZero(i32* %10, i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %16, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %282

76:                                               ; preds = %64
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = call i64 @sqlite3Fts5GetVarint(i32* %88, i32* %90)
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %262, %76
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %101, %102
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i1 [ false, %96 ], [ %103, %100 ]
  br i1 %105, label %106, label %265

106:                                              ; preds = %104
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %17, align 8
  store i32 0, i32* %18, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %117, i32* %10, align 4
  br label %160

118:                                              ; preds = %106
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @fts5GetVarint32(i32* %122, i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %11, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %18, align 4
  %136 = call i64 @fts5GetVarint32(i32* %134, i32 %135)
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %118
  %147 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %146, %118
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 12
  %152 = trunc i64 %151 to i32
  %153 = call i64 @sqlite3Fts5MallocZero(i32* %10, i32 %152)
  %154 = inttoptr i64 %153 to %struct.TYPE_6__*
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  store %struct.TYPE_6__* %154, %struct.TYPE_6__** %156, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %148, %116
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @SQLITE_OK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %261

164:                                              ; preds = %160
  %165 = load i32, i32* %18, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  store i32 0, i32* %19, align 4
  br label %168

168:                                              ; preds = %231, %164
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %234

172:                                              ; preds = %168
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i32, i32* %19, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  store %struct.TYPE_6__* %178, %struct.TYPE_6__** %20, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %183, i32* %10, align 4
  br label %234

184:                                              ; preds = %172
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @fts5GetVarint32(i32* %188, i32 %191)
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %11, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @fts5GetVarint32(i32* %200, i32 %203)
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %204
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %11, align 4
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @fts5GetVarint32(i32* %212, i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %11, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %184
  %229 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %229, i32* %10, align 4
  br label %234

230:                                              ; preds = %184
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %19, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %19, align 4
  br label %168

234:                                              ; preds = %228, %182, %168
  %235 = load i32, i32* %12, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %234
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 -1
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load i32, i32* %18, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %247, i32* %10, align 4
  br label %248

248:                                              ; preds = %246, %243, %237, %234
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  %251 = sub nsw i32 %250, 1
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %248
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %258, %253, %248
  br label %261

261:                                              ; preds = %260, %160
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %96

265:                                              ; preds = %104
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* @SQLITE_OK, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %273, i32* %10, align 4
  br label %274

274:                                              ; preds = %272, %268, %265
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* @SQLITE_OK, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %280 = call i32 @fts5StructureRelease(%struct.TYPE_8__* %279)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %16, align 8
  br label %281

281:                                              ; preds = %278, %274
  br label %282

282:                                              ; preds = %281, %64
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %284 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %283, %struct.TYPE_8__** %284, align 8
  %285 = load i32, i32* %10, align 4
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %282, %62
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local i32 @sqlite3Fts5Get32(i32*) #1

declare dso_local i64 @fts5GetVarint32(i32*, i32) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i32*, i32) #1

declare dso_local i64 @sqlite3Fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5StructureRelease(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
