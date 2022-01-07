; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5LeafSeek.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5LeafSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64*, i32, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_CORRUPT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i64*, i32)* @fts5LeafSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5LeafSeek(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %12, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SQLITE_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %19, align 4
  %47 = load i64*, i64** %12, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i32, i32* %18, align 4
  %52 = call i64 @fts5GetVarint32(i64* %50, i32 %51)
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %5
  %62 = load i8*, i8** @FTS5_CORRUPT, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %361

66:                                               ; preds = %5
  br label %67

67:                                               ; preds = %66, %179
  %68 = load i64*, i64** %12, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @fts5FastGetVarint32(i64* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %185

76:                                               ; preds = %67
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp sge i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %151

85:                                               ; preds = %76
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i64 @MIN(i32 %86, i32 %89)
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %92

92:                                               ; preds = %114, %85
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i64*, i64** %12, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %22, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %22, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %104, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %103, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  br label %117

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %22, align 4
  br label %92

117:                                              ; preds = %112, %92
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %276

129:                                              ; preds = %124
  br label %185

130:                                              ; preds = %117
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %130
  %135 = load i64*, i64** %12, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %135, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %141, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %185

149:                                              ; preds = %134, %130
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150, %76
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 1, i32* %20, align 4
  br label %184

156:                                              ; preds = %151
  %157 = load i64*, i64** %12, align 8
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i32, i32* %16, align 4
  %162 = call i64 @fts5GetVarint32(i64* %160, i32 %161)
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %156
  %175 = load i8*, i8** @FTS5_CORRUPT, align 8
  %176 = ptrtoint i8* %175 to i64
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  br label %361

179:                                              ; preds = %156
  %180 = load i64*, i64** %12, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @fts5FastGetVarint32(i64* %180, i32 %181, i32 %182)
  br label %67

184:                                              ; preds = %155
  br label %185

185:                                              ; preds = %184, %148, %129, %75
  %186 = load i32, i32* %7, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = call i32 @fts5DataRelease(%struct.TYPE_13__* %191)
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %194, align 8
  br label %361

195:                                              ; preds = %185
  %196 = load i32, i32* %20, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %274

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %272, %198
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %202 = call i32 @fts5SegIterNextPage(%struct.TYPE_15__* %200, %struct.TYPE_14__* %201)
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = icmp eq %struct.TYPE_13__* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  br label %361

208:                                              ; preds = %199
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  store i64* %213, i64** %12, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = call i64 @fts5LeafIsTermless(%struct.TYPE_13__* %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %271

219:                                              ; preds = %208
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %19, align 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %19, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i32, i32* %11, align 4
  %234 = call i64 @fts5GetVarint32(i64* %232, i32 %233)
  %235 = load i32, i32* %19, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* %11, align 4
  %240 = icmp slt i32 %239, 4
  br i1 %240, label %249, label %241

241:                                              ; preds = %219
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp sge i32 %242, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %241, %219
  %250 = load i8*, i8** @FTS5_CORRUPT, align 8
  %251 = ptrtoint i8* %250 to i64
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %361

254:                                              ; preds = %241
  store i32 0, i32* %16, align 4
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %18, align 4
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %14, align 4
  %261 = load i64*, i64** %12, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  %265 = load i32, i32* %17, align 4
  %266 = call i64 @fts5GetVarint32(i64* %264, i32 %265)
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %268, %266
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %11, align 4
  br label %273

271:                                              ; preds = %208
  br label %272

272:                                              ; preds = %271
  br i1 true, label %199, label %273

273:                                              ; preds = %272, %254
  br label %274

274:                                              ; preds = %273, %195
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275, %128
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %17, align 4
  %279 = add nsw i32 %277, %278
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = icmp sgt i32 %284, %285
  br i1 %286, label %290, label %287

287:                                              ; preds = %276
  %288 = load i32, i32* %17, align 4
  %289 = icmp slt i32 %288, 1
  br i1 %289, label %290, label %295

290:                                              ; preds = %287, %276
  %291 = load i8*, i8** @FTS5_CORRUPT, align 8
  %292 = ptrtoint i8* %291 to i64
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  br label %361

295:                                              ; preds = %287
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 7
  store i32 %303, i32* %305, align 8
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 5
  %310 = load i32, i32* %16, align 4
  %311 = load i64*, i64** %9, align 8
  %312 = call i32 @fts5BufferSet(i64* %307, i32* %309, i32 %310, i64* %311)
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 5
  %317 = load i32, i32* %17, align 4
  %318 = load i64*, i64** %12, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  %322 = call i32 @fts5BufferAppendBlob(i64* %314, i32* %316, i32 %317, i64* %321)
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* %14, align 4
  %325 = icmp sge i32 %323, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %295
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, 1
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 2
  store i32 %332, i32* %334, align 8
  br label %351

335:                                              ; preds = %295
  %336 = load i64*, i64** %12, align 8
  %337 = load i32, i32* %19, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %336, i64 %338
  %340 = load i32, i32* %23, align 4
  %341 = call i64 @fts5GetVarint32(i64* %339, i32 %340)
  %342 = load i32, i32* %19, align 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %343, %341
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %19, align 4
  %346 = load i32, i32* %18, align 4
  %347 = load i32, i32* %23, align 4
  %348 = add nsw i32 %346, %347
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 2
  store i32 %348, i32* %350, align 8
  br label %351

351:                                              ; preds = %335, %326
  %352 = load i32, i32* %19, align 4
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 3
  store i32 %352, i32* %354, align 4
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %357 = call i32 @fts5SegIterLoadRowid(%struct.TYPE_15__* %355, %struct.TYPE_14__* %356)
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %360 = call i32 @fts5SegIterLoadNPos(%struct.TYPE_15__* %358, %struct.TYPE_14__* %359)
  br label %361

361:                                              ; preds = %351, %290, %249, %207, %188, %174, %61
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fts5GetVarint32(i64*, i32) #1

declare dso_local i32 @fts5FastGetVarint32(i64*, i32, i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @fts5DataRelease(%struct.TYPE_13__*) #1

declare dso_local i32 @fts5SegIterNextPage(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i64 @fts5LeafIsTermless(%struct.TYPE_13__*) #1

declare dso_local i32 @fts5BufferSet(i64*, i32*, i32, i64*) #1

declare dso_local i32 @fts5BufferAppendBlob(i64*, i32*, i32, i64*) #1

declare dso_local i32 @fts5SegIterLoadRowid(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fts5SegIterLoadNPos(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
