; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_PutCoeffs.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_PutCoeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32***, i32, i32* }

@VP8EncBands = common dso_local global i64* null, align 8
@VP8Cat3 = common dso_local global i32* null, align 8
@VP8Cat4 = common dso_local global i32* null, align 8
@VP8Cat5 = common dso_local global i32* null, align 8
@VP8Cat6 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @PutCoeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PutCoeffs(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32***, i32**** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32**, i32*** %20, i64 %22
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @VP8PutBit(i32* %29, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %304

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %302, %75, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %303

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 0, %60
  br label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ]
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @VP8PutBit(i32* %66, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32***, i32**** %77, align 8
  %79 = load i64*, i64** @VP8EncBands, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32**, i32*** %78, i64 %83
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %9, align 8
  br label %42

88:                                               ; preds = %64
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @VP8PutBit(i32* %89, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %88
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32***, i32**** %100, align 8
  %102 = load i64*, i64** @VP8EncBands, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32**, i32*** %101, i64 %106
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %9, align 8
  br label %282

111:                                              ; preds = %88
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = icmp sgt i32 %113, 4
  %115 = zext i1 %114 to i32
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @VP8PutBit(i32* %112, i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %141, label %121

121:                                              ; preds = %111
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 2
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @VP8PutBit(i32* %122, i32 %125, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %121
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 4
  %135 = zext i1 %134 to i32
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @VP8PutBit(i32* %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %131, %121
  br label %269

141:                                              ; preds = %111
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %12, align 4
  %144 = icmp sgt i32 %143, 10
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 6
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @VP8PutBit(i32* %142, i32 %145, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %181, label %151

151:                                              ; preds = %141
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %12, align 4
  %154 = icmp sgt i32 %153, 6
  %155 = zext i1 %154 to i32
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 7
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @VP8PutBit(i32* %152, i32 %155, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %151
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %163, 6
  %165 = zext i1 %164 to i32
  %166 = call i64 @VP8PutBit(i32* %162, i32 %165, i32 159)
  br label %180

167:                                              ; preds = %151
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %12, align 4
  %170 = icmp sge i32 %169, 9
  %171 = zext i1 %170 to i32
  %172 = call i64 @VP8PutBit(i32* %168, i32 %171, i32 165)
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* %12, align 4
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i64 @VP8PutBit(i32* %173, i32 %178, i32 145)
  br label %180

180:                                              ; preds = %167, %161
  br label %268

181:                                              ; preds = %141
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %182, 19
  br i1 %183, label %184, label %198

184:                                              ; preds = %181
  %185 = load i32*, i32** %5, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 8
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @VP8PutBit(i32* %185, i32 0, i32 %188)
  %190 = load i32*, i32** %5, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 9
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @VP8PutBit(i32* %190, i32 0, i32 %193)
  %195 = load i32, i32* %12, align 4
  %196 = sub nsw i32 %195, 11
  store i32 %196, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %197 = load i32*, i32** @VP8Cat3, align 8
  store i32* %197, i32** %14, align 8
  br label %248

198:                                              ; preds = %181
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %199, 35
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load i32*, i32** %5, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 8
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @VP8PutBit(i32* %202, i32 0, i32 %205)
  %207 = load i32*, i32** %5, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 9
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @VP8PutBit(i32* %207, i32 1, i32 %210)
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %212, 19
  store i32 %213, i32* %12, align 4
  store i32 8, i32* %13, align 4
  %214 = load i32*, i32** @VP8Cat4, align 8
  store i32* %214, i32** %14, align 8
  br label %247

215:                                              ; preds = %198
  %216 = load i32, i32* %12, align 4
  %217 = icmp slt i32 %216, 67
  br i1 %217, label %218, label %232

218:                                              ; preds = %215
  %219 = load i32*, i32** %5, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 8
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @VP8PutBit(i32* %219, i32 1, i32 %222)
  %224 = load i32*, i32** %5, align 8
  %225 = load i32*, i32** %9, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 10
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @VP8PutBit(i32* %224, i32 0, i32 %227)
  %229 = load i32, i32* %12, align 4
  %230 = sub nsw i32 %229, 35
  store i32 %230, i32* %12, align 4
  store i32 16, i32* %13, align 4
  %231 = load i32*, i32** @VP8Cat5, align 8
  store i32* %231, i32** %14, align 8
  br label %246

232:                                              ; preds = %215
  %233 = load i32*, i32** %5, align 8
  %234 = load i32*, i32** %9, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 8
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @VP8PutBit(i32* %233, i32 1, i32 %236)
  %238 = load i32*, i32** %5, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 10
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @VP8PutBit(i32* %238, i32 1, i32 %241)
  %243 = load i32, i32* %12, align 4
  %244 = sub nsw i32 %243, 67
  store i32 %244, i32* %12, align 4
  store i32 1024, i32* %13, align 4
  %245 = load i32*, i32** @VP8Cat6, align 8
  store i32* %245, i32** %14, align 8
  br label %246

246:                                              ; preds = %232, %218
  br label %247

247:                                              ; preds = %246, %201
  br label %248

248:                                              ; preds = %247, %184
  br label %249

249:                                              ; preds = %252, %248
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %267

252:                                              ; preds = %249
  %253 = load i32*, i32** %5, align 8
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %13, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  %258 = xor i1 %257, true
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i32
  %261 = load i32*, i32** %14, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %14, align 8
  %263 = load i32, i32* %261, align 4
  %264 = call i64 @VP8PutBit(i32* %253, i32 %260, i32 %263)
  %265 = load i32, i32* %13, align 4
  %266 = ashr i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %249

267:                                              ; preds = %249
  br label %268

268:                                              ; preds = %267, %180
  br label %269

269:                                              ; preds = %268, %140
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32***, i32**** %271, align 8
  %273 = load i64*, i64** @VP8EncBands, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32**, i32*** %272, i64 %277
  %279 = load i32**, i32*** %278, align 8
  %280 = getelementptr inbounds i32*, i32** %279, i64 2
  %281 = load i32*, i32** %280, align 8
  store i32* %281, i32** %9, align 8
  br label %282

282:                                              ; preds = %269, %98
  %283 = load i32*, i32** %5, align 8
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @VP8PutBitUniform(i32* %283, i32 %284)
  %286 = load i32, i32* %8, align 4
  %287 = icmp eq i32 %286, 16
  br i1 %287, label %301, label %288

288:                                              ; preds = %282
  %289 = load i32*, i32** %5, align 8
  %290 = load i32, i32* %8, align 4
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp sle i32 %290, %293
  %295 = zext i1 %294 to i32
  %296 = load i32*, i32** %9, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = call i64 @VP8PutBit(i32* %289, i32 %295, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %288, %282
  store i32 1, i32* %4, align 4
  br label %304

302:                                              ; preds = %288
  br label %42

303:                                              ; preds = %42
  store i32 1, i32* %4, align 4
  br label %304

304:                                              ; preds = %303, %301, %40
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i64 @VP8PutBit(i32*, i32, i32) #1

declare dso_local i32 @VP8PutBitUniform(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
