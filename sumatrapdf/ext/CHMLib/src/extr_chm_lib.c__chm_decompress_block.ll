; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_decompress_block.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_decompress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64, i64, i32, i32*, %struct.TYPE_2__, i32, i32** }
%struct.TYPE_2__ = type { i32 }

@DECR_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chmFile*, i64, i32**)* @_chm_decompress_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_chm_decompress_block(%struct.chmFile* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chmFile*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %16 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %17 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %19, 6144
  %21 = call i32* @malloc(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %24 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = srem i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %302

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %37 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %43 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %49 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %40, %31
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %190

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %186, %56
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %189

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %68 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %185

73:                                               ; preds = %61
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %77 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = srem i64 %75, %78
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %83 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @LZXreset(i32 %84)
  br label %86

86:                                               ; preds = %81, %73
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %89 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = srem i32 %87, %90
  store i32 %91, i32* %11, align 4
  %92 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %93 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %92, i32 0, i32 6
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %86
  %101 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %102 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32* @malloc(i32 %104)
  %106 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %107 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %106, i32 0, i32 6
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* %105, i32** %111, align 8
  br label %112

112:                                              ; preds = %100, %86
  %113 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %114 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %113, i32 0, i32 6
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %112
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @free(i32* %122)
  store i32 -1, i32* %4, align 4
  br label %302

124:                                              ; preds = %112
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %127 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %133 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %132, i32 0, i32 6
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %12, align 8
  %139 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 @_chm_get_cmpblock_bounds(%struct.chmFile* %139, i64 %141, i64* %9, i32* %10)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %124
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %177, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %150 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 6144
  %154 = icmp sgt i32 %148, %153
  br i1 %154, label %177, label %155

155:                                              ; preds = %147
  %156 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @_chm_fetch_bytes(%struct.chmFile* %156, i32* %157, i64 %158, i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %177, label %163

163:                                              ; preds = %155
  %164 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %165 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %171 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @LZXdecompress(i32 %166, i32* %167, i32* %168, i32 %169, i32 %173)
  %175 = load i64, i64* @DECR_OK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %163, %155, %147, %144, %124
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @free(i32* %178)
  store i32 0, i32* %4, align 4
  br label %302

180:                                              ; preds = %163
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %184 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %180, %61
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %14, align 4
  br label %58

189:                                              ; preds = %58
  br label %203

190:                                              ; preds = %53
  %191 = load i64, i64* %6, align 8
  %192 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %193 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = srem i64 %191, %194
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %199 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @LZXreset(i32 %200)
  br label %202

202:                                              ; preds = %197, %190
  br label %203

203:                                              ; preds = %202, %189
  %204 = load i64, i64* %6, align 8
  %205 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %206 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = srem i64 %204, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %11, align 4
  %211 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %212 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %211, i32 0, i32 6
  %213 = load i32**, i32*** %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %231, label %219

219:                                              ; preds = %203
  %220 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %221 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32* @malloc(i32 %223)
  %225 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %226 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %225, i32 0, i32 6
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  store i32* %224, i32** %230, align 8
  br label %231

231:                                              ; preds = %219, %203
  %232 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %233 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %232, i32 0, i32 6
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %231
  %241 = load i32*, i32** %8, align 8
  %242 = call i32 @free(i32* %241)
  store i32 -1, i32* %4, align 4
  br label %302

243:                                              ; preds = %231
  %244 = load i64, i64* %6, align 8
  %245 = trunc i64 %244 to i32
  %246 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %247 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %245, i32* %251, align 4
  %252 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %253 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %252, i32 0, i32 6
  %254 = load i32**, i32*** %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %254, i64 %256
  %258 = load i32*, i32** %257, align 8
  store i32* %258, i32** %12, align 8
  %259 = load i32*, i32** %12, align 8
  %260 = load i32**, i32*** %7, align 8
  store i32* %259, i32** %260, align 8
  %261 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %262 = load i64, i64* %6, align 8
  %263 = call i32 @_chm_get_cmpblock_bounds(%struct.chmFile* %261, i64 %262, i64* %9, i32* %10)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %287

265:                                              ; preds = %243
  %266 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %267 = load i32*, i32** %8, align 8
  %268 = load i64, i64* %9, align 8
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @_chm_fetch_bytes(%struct.chmFile* %266, i32* %267, i64 %268, i32 %269)
  %271 = load i32, i32* %10, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %287, label %273

273:                                              ; preds = %265
  %274 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %275 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = load i32, i32* %10, align 4
  %280 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %281 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @LZXdecompress(i32 %276, i32* %277, i32* %278, i32 %279, i32 %283)
  %285 = load i64, i64* @DECR_OK, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %273, %265, %243
  %288 = load i32*, i32** %8, align 8
  %289 = call i32 @free(i32* %288)
  store i32 0, i32* %4, align 4
  br label %302

290:                                              ; preds = %273
  %291 = load i64, i64* %6, align 8
  %292 = trunc i64 %291 to i32
  %293 = sext i32 %292 to i64
  %294 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %295 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %294, i32 0, i32 1
  store i64 %293, i64* %295, align 8
  %296 = load i32*, i32** %8, align 8
  %297 = call i32 @free(i32* %296)
  %298 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %299 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %290, %287, %240, %177, %121, %30
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @LZXreset(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @_chm_get_cmpblock_bounds(%struct.chmFile*, i64, i64*, i32*) #1

declare dso_local i32 @_chm_fetch_bytes(%struct.chmFile*, i32*, i64, i32) #1

declare dso_local i64 @LZXdecompress(i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
