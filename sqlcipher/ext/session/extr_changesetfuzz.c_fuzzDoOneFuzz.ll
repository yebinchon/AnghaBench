; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzDoOneFuzz.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzDoOneFuzz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32*, i32, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FUZZ_GROUP_DEL = common dso_local global i64 0, align 8
@FUZZ_GROUP_DUP = common dso_local global i64 0, align 8
@FUZZ_COLUMN_ADD = common dso_local global i64 0, align 8
@FUZZ_COLUMN_ADDPK = common dso_local global i64 0, align 8
@FUZZ_COLUMN_DEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_10__*)* @fuzzDoOneFuzz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzDoOneFuzz(i8* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  store i32 -1, i32* %9, align 4
  br label %22

22:                                               ; preds = %290, %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %291

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = call i32 @fuzzSelectChange(%struct.TYPE_10__* %27, %struct.TYPE_11__* %7)
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %272, %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ false, %29 ], [ %38, %33 ]
  br i1 %40, label %41, label %275

41:                                               ; preds = %39
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %11, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strlen(i32 %51)
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FUZZ_GROUP_DEL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %63
  br label %272

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FUZZ_GROUP_DUP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 2, i32* %14, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %41
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %268, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %271

83:                                               ; preds = %79
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %17, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FUZZ_COLUMN_ADD, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FUZZ_COLUMN_ADDPK, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %123

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FUZZ_COLUMN_DEL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %18, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %112, %107
  br label %123

123:                                              ; preds = %122, %104
  br label %124

124:                                              ; preds = %123, %83
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 80, i32 84
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %10, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %130, i32* %133, align 4
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @fuzzPutVarint(i32* %134, i32 %135)
  %137 = load i32*, i32** %10, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %10, align 8
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %179, %124
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %182

146:                                              ; preds = %140
  %147 = load i32, i32* %8, align 4
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %153, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %151, %146
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %19, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %19, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32, i32* %20, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %20, align 4
  br label %174

174:                                              ; preds = %171, %167, %157
  %175 = load i32, i32* %20, align 4
  %176 = load i32*, i32** %10, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %10, align 8
  store i32 %175, i32* %176, align 4
  br label %178

178:                                              ; preds = %174, %151
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  br label %140

182:                                              ; preds = %140
  %183 = load i32, i32* %18, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %183, %186
  br i1 %187, label %188, label %231

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @FUZZ_COLUMN_ADD, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i32*, i32** %10, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %10, align 8
  store i32 0, i32* %194, align 4
  br label %230

196:                                              ; preds = %188
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %222, %196
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %225

203:                                              ; preds = %197
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %21, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %203
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %21, align 4
  br label %221

221:                                              ; preds = %213, %203
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %197

225:                                              ; preds = %197
  %226 = load i32, i32* %21, align 4
  %227 = add nsw i32 %226, 1
  %228 = load i32*, i32** %10, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %10, align 8
  store i32 %227, i32* %228, align 4
  br label %230

230:                                              ; preds = %225, %193
  br label %231

231:                                              ; preds = %230, %182
  %232 = load i32*, i32** %10, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @memcpy(i32* %232, i32 %235, i32 %236)
  %238 = load i32, i32* %12, align 4
  %239 = load i32*, i32** %10, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %10, align 8
  %242 = load i32*, i32** %10, align 8
  store i32* %242, i32** %16, align 8
  store i32 0, i32* %15, align 4
  br label %243

243:                                              ; preds = %259, %231
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @SQLITE_OK, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = load i32, i32* %15, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br label %253

253:                                              ; preds = %247, %243
  %254 = phi i1 [ false, %243 ], [ %252, %247 ]
  br i1 %254, label %255, label %262

255:                                              ; preds = %253
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @fuzzCopyChange(%struct.TYPE_10__* %256, i32 %257, %struct.TYPE_11__* %7, i32** %17, i32** %10)
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %15, align 4
  br label %243

262:                                              ; preds = %253
  %263 = load i32*, i32** %10, align 8
  %264 = load i32*, i32** %16, align 8
  %265 = icmp eq i32* %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  store i32 -1, i32* %9, align 4
  br label %267

267:                                              ; preds = %266, %262
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %13, align 4
  br label %79

271:                                              ; preds = %79
  br label %272

272:                                              ; preds = %271, %69
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %29

275:                                              ; preds = %39
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @SQLITE_OK, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %290

279:                                              ; preds = %275
  %280 = load i8*, i8** %4, align 8
  %281 = load i32*, i32** %5, align 8
  %282 = load i32*, i32** %10, align 8
  %283 = load i32*, i32** %5, align 8
  %284 = ptrtoint i32* %282 to i64
  %285 = ptrtoint i32* %283 to i64
  %286 = sub i64 %284, %285
  %287 = sdiv exact i64 %286, 4
  %288 = trunc i64 %287 to i32
  %289 = call i32 @fuzzWriteFile(i8* %280, i32* %281, i32 %288)
  br label %290

290:                                              ; preds = %279, %275
  br label %22

291:                                              ; preds = %22
  %292 = load i32, i32* %9, align 4
  ret i32 %292
}

declare dso_local i32 @fuzzSelectChange(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @fuzzPutVarint(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @fuzzCopyChange(%struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32**, i32**) #1

declare dso_local i32 @fuzzWriteFile(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
