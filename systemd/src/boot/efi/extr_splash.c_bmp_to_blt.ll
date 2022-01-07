; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_splash.c_bmp_to_blt.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_splash.c_bmp_to_blt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bmp_dib = type { i64, i64, i32 }
%struct.bmp_map = type { i32, i32, i32 }

@EFI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmp_to_blt(%struct.TYPE_3__* %0, %struct.bmp_dib* %1, %struct.bmp_map* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.bmp_dib*, align 8
  %7 = alloca %struct.bmp_map*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.bmp_dib* %1, %struct.bmp_dib** %6, align 8
  store %struct.bmp_map* %2, %struct.bmp_map** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  store i32* %18, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %275, %4
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.bmp_dib*, %struct.bmp_dib** %6, align 8
  %22 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %278

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = load %struct.bmp_dib*, %struct.bmp_dib** %6, align 8
  %28 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub nsw i64 %29, %30
  %32 = sub nsw i64 %31, 1
  %33 = load %struct.bmp_dib*, %struct.bmp_dib** %6, align 8
  %34 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %32, %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %36
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %11, align 8
  store i64 0, i64* %13, align 8
  br label %38

38:                                               ; preds = %254, %25
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.bmp_dib*, %struct.bmp_dib** %6, align 8
  %41 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %261

44:                                               ; preds = %38
  %45 = load %struct.bmp_dib*, %struct.bmp_dib** %6, align 8
  %46 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %253 [
    i32 1, label %48
    i32 4, label %115
    i32 8, label %178
    i32 16, label %206
    i32 24, label %226
    i32 32, label %244
  ]

48:                                               ; preds = %44
  store i64 0, i64* %14, align 8
  br label %49

49:                                               ; preds = %107, %48
  %50 = load i64, i64* %14, align 8
  %51 = icmp slt i64 %50, 8
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.bmp_dib*, %struct.bmp_dib** %6, align 8
  %55 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  br i1 %59, label %60, label %110

60:                                               ; preds = %58
  %61 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %14, align 8
  %65 = sub nsw i64 7, %64
  %66 = trunc i64 %65 to i32
  %67 = ashr i32 %63, %66
  %68 = and i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %61, i64 %69
  %71 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %14, align 8
  %79 = sub nsw i64 7, %78
  %80 = trunc i64 %79 to i32
  %81 = ashr i32 %77, %80
  %82 = and i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %75, i64 %83
  %85 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %14, align 8
  %93 = sub nsw i64 7, %92
  %94 = trunc i64 %93 to i32
  %95 = ashr i32 %91, %94
  %96 = and i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %89, i64 %97
  %99 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 1
  store %struct.TYPE_3__* %104, %struct.TYPE_3__** %11, align 8
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %60
  %108 = load i64, i64* %14, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %14, align 8
  br label %49

110:                                              ; preds = %58
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 -1
  store %struct.TYPE_3__* %112, %struct.TYPE_3__** %11, align 8
  %113 = load i64, i64* %13, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %13, align 8
  br label %253

115:                                              ; preds = %44
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %15, align 8
  %120 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %121 = load i64, i64* %15, align 8
  %122 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %120, i64 %121
  %123 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %128 = load i64, i64* %15, align 8
  %129 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %127, i64 %128
  %130 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %134, i64 %135
  %137 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load i64, i64* %13, align 8
  %142 = load %struct.bmp_dib*, %struct.bmp_dib** %6, align 8
  %143 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, 1
  %146 = icmp slt i64 %141, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %115
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 1
  store %struct.TYPE_3__* %149, %struct.TYPE_3__** %11, align 8
  %150 = load i64, i64* %13, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %13, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 15
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %15, align 8
  %156 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %157 = load i64, i64* %15, align 8
  %158 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %156, i64 %157
  %159 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %164 = load i64, i64* %15, align 8
  %165 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %163, i64 %164
  %166 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %171 = load i64, i64* %15, align 8
  %172 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %170, i64 %171
  %173 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %147, %115
  br label %253

178:                                              ; preds = %44
  %179 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %179, i64 %182
  %184 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  %188 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %188, i64 %191
  %193 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.bmp_map*, %struct.bmp_map** %7, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %197, i64 %200
  %202 = getelementptr inbounds %struct.bmp_map, %struct.bmp_map* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  br label %253

206:                                              ; preds = %44
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = and i32 %209, 31744
  %211 = ashr i32 %210, 7
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %16, align 4
  %215 = and i32 %214, 992
  %216 = ashr i32 %215, 2
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %16, align 4
  %220 = and i32 %219, 31
  %221 = shl i32 %220, 3
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  store i32* %225, i32** %9, align 8
  br label %253

226:                                              ; preds = %44
  %227 = load i32*, i32** %9, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = load i32*, i32** %9, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i32*, i32** %9, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load i32*, i32** %9, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  store i32* %243, i32** %9, align 8
  br label %253

244:                                              ; preds = %44
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %17, align 4
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %248 = bitcast %struct.TYPE_3__* %247 to i32*
  %249 = load i32, i32* %17, align 4
  %250 = call i32 @pixel_blend(i32* %248, i32 %249)
  %251 = load i32*, i32** %9, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 3
  store i32* %252, i32** %9, align 8
  br label %253

253:                                              ; preds = %44, %244, %226, %206, %178, %177, %110
  br label %254

254:                                              ; preds = %253
  %255 = load i64, i64* %13, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %13, align 8
  %257 = load i32*, i32** %9, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %9, align 8
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 1
  store %struct.TYPE_3__* %260, %struct.TYPE_3__** %11, align 8
  br label %38

261:                                              ; preds = %38
  %262 = load i32*, i32** %9, align 8
  %263 = load i32*, i32** %8, align 8
  %264 = ptrtoint i32* %262 to i64
  %265 = ptrtoint i32* %263 to i64
  %266 = sub i64 %264, %265
  %267 = sdiv exact i64 %266, 4
  store i64 %267, i64* %12, align 8
  %268 = load i64, i64* %12, align 8
  %269 = add nsw i64 %268, 3
  %270 = and i64 %269, -4
  %271 = load i64, i64* %12, align 8
  %272 = sub nsw i64 %270, %271
  %273 = load i32*, i32** %9, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 %272
  store i32* %274, i32** %9, align 8
  br label %275

275:                                              ; preds = %261
  %276 = load i64, i64* %10, align 8
  %277 = add nsw i64 %276, 1
  store i64 %277, i64* %10, align 8
  br label %19

278:                                              ; preds = %19
  %279 = load i32, i32* @EFI_SUCCESS, align 4
  ret i32 %279
}

declare dso_local i32 @pixel_blend(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
