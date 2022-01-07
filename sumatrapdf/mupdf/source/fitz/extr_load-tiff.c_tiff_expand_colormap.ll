; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_expand_colormap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_expand_colormap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i32, i32, i32, i32, i32, i8*, i32, i32*, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid number of samples for RGBPal\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid number of bits for RGBPal\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"insufficient colormap data\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"image too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tiff*)* @tiff_expand_colormap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiff_expand_colormap(i32* %0, %struct.tiff* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tiff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.tiff* %1, %struct.tiff** %4, align 8
  %15 = load %struct.tiff*, %struct.tiff** %4, align 8
  %16 = getelementptr inbounds %struct.tiff, %struct.tiff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.tiff*, %struct.tiff** %4, align 8
  %20 = getelementptr inbounds %struct.tiff, %struct.tiff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.tiff*, %struct.tiff** %4, align 8
  %25 = getelementptr inbounds %struct.tiff, %struct.tiff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %31 = call i32 @fz_throw(i32* %29, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %23, %2
  %33 = load %struct.tiff*, %struct.tiff** %4, align 8
  %34 = getelementptr inbounds %struct.tiff, %struct.tiff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.tiff*, %struct.tiff** %4, align 8
  %39 = getelementptr inbounds %struct.tiff, %struct.tiff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load %struct.tiff*, %struct.tiff** %4, align 8
  %44 = getelementptr inbounds %struct.tiff, %struct.tiff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.tiff*, %struct.tiff** %4, align 8
  %49 = getelementptr inbounds %struct.tiff, %struct.tiff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 8
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.tiff*, %struct.tiff** %4, align 8
  %54 = getelementptr inbounds %struct.tiff, %struct.tiff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 16
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %60 = call i32 @fz_throw(i32* %58, i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %52, %47, %42, %37, %32
  %62 = load %struct.tiff*, %struct.tiff** %4, align 8
  %63 = getelementptr inbounds %struct.tiff, %struct.tiff* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = mul i32 %65, 3
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %71 = call i32 @fz_throw(i32* %69, i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.tiff*, %struct.tiff** %4, align 8
  %74 = getelementptr inbounds %struct.tiff, %struct.tiff* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @UINT_MAX, align 4
  %77 = load %struct.tiff*, %struct.tiff** %4, align 8
  %78 = getelementptr inbounds %struct.tiff, %struct.tiff* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %76, %79
  %81 = load %struct.tiff*, %struct.tiff** %4, align 8
  %82 = getelementptr inbounds %struct.tiff, %struct.tiff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 2
  %85 = sdiv i32 %80, %84
  %86 = icmp sgt i32 %75, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %90 = call i32 @fz_throw(i32* %88, i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %72
  %92 = load %struct.tiff*, %struct.tiff** %4, align 8
  %93 = getelementptr inbounds %struct.tiff, %struct.tiff* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tiff*, %struct.tiff** %4, align 8
  %96 = getelementptr inbounds %struct.tiff, %struct.tiff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 2
  %99 = mul nsw i32 %94, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.tiff*, %struct.tiff** %4, align 8
  %103 = getelementptr inbounds %struct.tiff, %struct.tiff* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = mul i32 %101, %104
  %106 = call i8* @fz_malloc(i32* %100, i32 %105)
  store i8* %106, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %272, %91
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.tiff*, %struct.tiff** %4, align 8
  %110 = getelementptr inbounds %struct.tiff, %struct.tiff* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ult i32 %108, %111
  br i1 %112, label %113, label %275

113:                                              ; preds = %107
  %114 = load %struct.tiff*, %struct.tiff** %4, align 8
  %115 = getelementptr inbounds %struct.tiff, %struct.tiff* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.tiff*, %struct.tiff** %4, align 8
  %118 = getelementptr inbounds %struct.tiff, %struct.tiff* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = mul i32 %119, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %116, i64 %122
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = mul i32 %125, %126
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  store i8* %129, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %268, %113
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.tiff*, %struct.tiff** %4, align 8
  %133 = getelementptr inbounds %struct.tiff, %struct.tiff* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %271

136:                                              ; preds = %130
  %137 = load %struct.tiff*, %struct.tiff** %4, align 8
  %138 = getelementptr inbounds %struct.tiff, %struct.tiff* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %221

141:                                              ; preds = %136
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = mul i32 %143, 2
  %145 = load %struct.tiff*, %struct.tiff** %4, align 8
  %146 = getelementptr inbounds %struct.tiff, %struct.tiff* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @tiff_getcomp(i8* %142, i32 %144, i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = load i8*, i8** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = mul i32 %150, 2
  %152 = add i32 %151, 1
  %153 = load %struct.tiff*, %struct.tiff** %4, align 8
  %154 = getelementptr inbounds %struct.tiff, %struct.tiff* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @tiff_getcomp(i8* %149, i32 %152, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load %struct.tiff*, %struct.tiff** %4, align 8
  %158 = getelementptr inbounds %struct.tiff, %struct.tiff* %157, i32 0, i32 7
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 0
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 8
  %166 = trunc i32 %165 to i8
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %8, align 8
  store i8 %166, i8* %167, align 1
  %169 = load %struct.tiff*, %struct.tiff** %4, align 8
  %170 = getelementptr inbounds %struct.tiff, %struct.tiff* %169, i32 0, i32 7
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 8
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %8, align 8
  store i8 %179, i8* %180, align 1
  %182 = load %struct.tiff*, %struct.tiff** %4, align 8
  %183 = getelementptr inbounds %struct.tiff, %struct.tiff* %182, i32 0, i32 7
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %5, align 4
  %187 = mul nsw i32 %186, 2
  %188 = add nsw i32 %185, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %184, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = ashr i32 %191, 8
  %193 = trunc i32 %192 to i8
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %8, align 8
  store i8 %193, i8* %194, align 1
  %196 = load %struct.tiff*, %struct.tiff** %4, align 8
  %197 = getelementptr inbounds %struct.tiff, %struct.tiff* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sle i32 %198, 8
  br i1 %199, label %200, label %210

200:                                              ; preds = %141
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.tiff*, %struct.tiff** %4, align 8
  %203 = getelementptr inbounds %struct.tiff, %struct.tiff* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 8, %204
  %206 = shl i32 %201, %205
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %8, align 8
  store i8 %207, i8* %208, align 1
  br label %220

210:                                              ; preds = %141
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.tiff*, %struct.tiff** %4, align 8
  %213 = getelementptr inbounds %struct.tiff, %struct.tiff* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, 8
  %216 = ashr i32 %211, %215
  %217 = trunc i32 %216 to i8
  %218 = load i8*, i8** %8, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %8, align 8
  store i8 %217, i8* %218, align 1
  br label %220

220:                                              ; preds = %210, %200
  br label %267

221:                                              ; preds = %136
  %222 = load i8*, i8** %7, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.tiff*, %struct.tiff** %4, align 8
  %225 = getelementptr inbounds %struct.tiff, %struct.tiff* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @tiff_getcomp(i8* %222, i32 %223, i32 %226)
  store i32 %227, i32* %14, align 4
  %228 = load %struct.tiff*, %struct.tiff** %4, align 8
  %229 = getelementptr inbounds %struct.tiff, %struct.tiff* %228, i32 0, i32 7
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 0
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %235, 8
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %8, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %8, align 8
  store i8 %237, i8* %238, align 1
  %240 = load %struct.tiff*, %struct.tiff** %4, align 8
  %241 = getelementptr inbounds %struct.tiff, %struct.tiff* %240, i32 0, i32 7
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 8
  %250 = trunc i32 %249 to i8
  %251 = load i8*, i8** %8, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %8, align 8
  store i8 %250, i8* %251, align 1
  %253 = load %struct.tiff*, %struct.tiff** %4, align 8
  %254 = getelementptr inbounds %struct.tiff, %struct.tiff* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %5, align 4
  %258 = mul nsw i32 %257, 2
  %259 = add nsw i32 %256, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %255, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 8
  %264 = trunc i32 %263 to i8
  %265 = load i8*, i8** %8, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %8, align 8
  store i8 %264, i8* %265, align 1
  br label %267

267:                                              ; preds = %221, %220
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %9, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %130

271:                                              ; preds = %130
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %10, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %10, align 4
  br label %107

275:                                              ; preds = %107
  %276 = load %struct.tiff*, %struct.tiff** %4, align 8
  %277 = getelementptr inbounds %struct.tiff, %struct.tiff* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 2
  store i32 %279, i32* %277, align 4
  %280 = load %struct.tiff*, %struct.tiff** %4, align 8
  %281 = getelementptr inbounds %struct.tiff, %struct.tiff* %280, i32 0, i32 0
  store i32 8, i32* %281, align 8
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.tiff*, %struct.tiff** %4, align 8
  %284 = getelementptr inbounds %struct.tiff, %struct.tiff* %283, i32 0, i32 6
  store i32 %282, i32* %284, align 8
  %285 = load i32*, i32** %3, align 8
  %286 = load %struct.tiff*, %struct.tiff** %4, align 8
  %287 = getelementptr inbounds %struct.tiff, %struct.tiff* %286, i32 0, i32 5
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @fz_free(i32* %285, i8* %288)
  %290 = load i8*, i8** %6, align 8
  %291 = load %struct.tiff*, %struct.tiff** %4, align 8
  %292 = getelementptr inbounds %struct.tiff, %struct.tiff* %291, i32 0, i32 5
  store i8* %290, i8** %292, align 8
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @fz_malloc(i32*, i32) #1

declare dso_local i32 @tiff_getcomp(i8*, i32, i32) #1

declare dso_local i32 @fz_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
