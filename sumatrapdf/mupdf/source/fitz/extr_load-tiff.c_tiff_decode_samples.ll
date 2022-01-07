; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_decode_samples.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_decode_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@FZ_ERROR_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"image too large\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"image is missing both strip and tile data\00", align 1
@TII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tiff*)* @tiff_decode_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiff_decode_samples(i32* %0, %struct.tiff* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tiff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.tiff* %1, %struct.tiff** %4, align 8
  %8 = load %struct.tiff*, %struct.tiff** %4, align 8
  %9 = getelementptr inbounds %struct.tiff, %struct.tiff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UINT_MAX, align 4
  %12 = load %struct.tiff*, %struct.tiff** %4, align 8
  %13 = getelementptr inbounds %struct.tiff, %struct.tiff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %11, %14
  %16 = icmp sgt i32 %10, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @FZ_ERROR_MEMORY, align 4
  %20 = call i32 @fz_throw(i32* %18, i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.tiff*, %struct.tiff** %4, align 8
  %24 = getelementptr inbounds %struct.tiff, %struct.tiff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.tiff*, %struct.tiff** %4, align 8
  %27 = getelementptr inbounds %struct.tiff, %struct.tiff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = call i8* @fz_malloc(i32* %22, i32 %29)
  %31 = load %struct.tiff*, %struct.tiff** %4, align 8
  %32 = getelementptr inbounds %struct.tiff, %struct.tiff* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.tiff*, %struct.tiff** %4, align 8
  %34 = getelementptr inbounds %struct.tiff, %struct.tiff* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.tiff*, %struct.tiff** %4, align 8
  %37 = getelementptr inbounds %struct.tiff, %struct.tiff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tiff*, %struct.tiff** %4, align 8
  %40 = getelementptr inbounds %struct.tiff, %struct.tiff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = call i32 @memset(i8* %35, i32 85, i32 %42)
  %44 = load %struct.tiff*, %struct.tiff** %4, align 8
  %45 = getelementptr inbounds %struct.tiff, %struct.tiff* %44, i32 0, i32 18
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %21
  %49 = load %struct.tiff*, %struct.tiff** %4, align 8
  %50 = getelementptr inbounds %struct.tiff, %struct.tiff* %49, i32 0, i32 17
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.tiff*, %struct.tiff** %4, align 8
  %55 = getelementptr inbounds %struct.tiff, %struct.tiff* %54, i32 0, i32 16
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.tiff*, %struct.tiff** %4, align 8
  %60 = getelementptr inbounds %struct.tiff, %struct.tiff* %59, i32 0, i32 15
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.tiff*, %struct.tiff** %4, align 8
  %66 = call i32 @tiff_decode_tiles(i32* %64, %struct.tiff* %65)
  br label %91

67:                                               ; preds = %58, %53, %48, %21
  %68 = load %struct.tiff*, %struct.tiff** %4, align 8
  %69 = getelementptr inbounds %struct.tiff, %struct.tiff* %68, i32 0, i32 14
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.tiff*, %struct.tiff** %4, align 8
  %74 = getelementptr inbounds %struct.tiff, %struct.tiff* %73, i32 0, i32 13
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.tiff*, %struct.tiff** %4, align 8
  %79 = getelementptr inbounds %struct.tiff, %struct.tiff* %78, i32 0, i32 12
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.tiff*, %struct.tiff** %4, align 8
  %85 = call i32 @tiff_decode_strips(i32* %83, %struct.tiff* %84)
  br label %90

86:                                               ; preds = %77, %72, %67
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %89 = call i32 @fz_throw(i32* %87, i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.tiff*, %struct.tiff** %4, align 8
  %93 = getelementptr inbounds %struct.tiff, %struct.tiff* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 5
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load %struct.tiff*, %struct.tiff** %4, align 8
  %98 = getelementptr inbounds %struct.tiff, %struct.tiff* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.tiff*, %struct.tiff** %4, align 8
  %103 = getelementptr inbounds %struct.tiff, %struct.tiff* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 32946
  br i1 %105, label %106, label %143

106:                                              ; preds = %101, %96, %91
  %107 = load %struct.tiff*, %struct.tiff** %4, align 8
  %108 = getelementptr inbounds %struct.tiff, %struct.tiff* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %143

111:                                              ; preds = %106
  %112 = load %struct.tiff*, %struct.tiff** %4, align 8
  %113 = getelementptr inbounds %struct.tiff, %struct.tiff* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %139, %111
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.tiff*, %struct.tiff** %4, align 8
  %118 = getelementptr inbounds %struct.tiff, %struct.tiff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.tiff*, %struct.tiff** %4, align 8
  %124 = getelementptr inbounds %struct.tiff, %struct.tiff* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.tiff*, %struct.tiff** %4, align 8
  %127 = getelementptr inbounds %struct.tiff, %struct.tiff* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.tiff*, %struct.tiff** %4, align 8
  %130 = getelementptr inbounds %struct.tiff, %struct.tiff* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @tiff_unpredict_line(i8* %122, i32 %125, i32 %128, i32 %131)
  %133 = load %struct.tiff*, %struct.tiff** %4, align 8
  %134 = getelementptr inbounds %struct.tiff, %struct.tiff* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %6, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %6, align 8
  br label %139

139:                                              ; preds = %121
  %140 = load i32, i32* %5, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %115

142:                                              ; preds = %115
  br label %143

143:                                              ; preds = %142, %106, %101
  %144 = load %struct.tiff*, %struct.tiff** %4, align 8
  %145 = getelementptr inbounds %struct.tiff, %struct.tiff* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.tiff*, %struct.tiff** %4, align 8
  %150 = getelementptr inbounds %struct.tiff, %struct.tiff* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 6
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load %struct.tiff*, %struct.tiff** %4, align 8
  %155 = getelementptr inbounds %struct.tiff, %struct.tiff* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 7
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32*, i32** %3, align 8
  %160 = load %struct.tiff*, %struct.tiff** %4, align 8
  %161 = call i32 @tiff_ycc_to_rgb(i32* %159, %struct.tiff* %160)
  br label %162

162:                                              ; preds = %158, %153, %148, %143
  %163 = load %struct.tiff*, %struct.tiff** %4, align 8
  %164 = getelementptr inbounds %struct.tiff, %struct.tiff* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 3
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.tiff*, %struct.tiff** %4, align 8
  %169 = getelementptr inbounds %struct.tiff, %struct.tiff* %168, i32 0, i32 11
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32*, i32** %3, align 8
  %174 = load %struct.tiff*, %struct.tiff** %4, align 8
  %175 = call i32 @tiff_expand_colormap(i32* %173, %struct.tiff* %174)
  br label %176

176:                                              ; preds = %172, %167, %162
  %177 = load %struct.tiff*, %struct.tiff** %4, align 8
  %178 = getelementptr inbounds %struct.tiff, %struct.tiff* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %216

181:                                              ; preds = %176
  %182 = load %struct.tiff*, %struct.tiff** %4, align 8
  %183 = getelementptr inbounds %struct.tiff, %struct.tiff* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %212, %181
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.tiff*, %struct.tiff** %4, align 8
  %188 = getelementptr inbounds %struct.tiff, %struct.tiff* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %215

191:                                              ; preds = %185
  %192 = load i8*, i8** %7, align 8
  %193 = load %struct.tiff*, %struct.tiff** %4, align 8
  %194 = getelementptr inbounds %struct.tiff, %struct.tiff* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.tiff*, %struct.tiff** %4, align 8
  %197 = getelementptr inbounds %struct.tiff, %struct.tiff* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.tiff*, %struct.tiff** %4, align 8
  %200 = getelementptr inbounds %struct.tiff, %struct.tiff* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.tiff*, %struct.tiff** %4, align 8
  %203 = getelementptr inbounds %struct.tiff, %struct.tiff* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @tiff_invert_line(i8* %192, i32 %195, i32 %198, i32 %201, i32 %204)
  %206 = load %struct.tiff*, %struct.tiff** %4, align 8
  %207 = getelementptr inbounds %struct.tiff, %struct.tiff* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %7, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %7, align 8
  br label %212

212:                                              ; preds = %191
  %213 = load i32, i32* %5, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %185

215:                                              ; preds = %185
  br label %216

216:                                              ; preds = %215, %176
  %217 = load %struct.tiff*, %struct.tiff** %4, align 8
  %218 = getelementptr inbounds %struct.tiff, %struct.tiff* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %216
  %223 = load %struct.tiff*, %struct.tiff** %4, align 8
  %224 = getelementptr inbounds %struct.tiff, %struct.tiff* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %227, %222
  %229 = load %struct.tiff*, %struct.tiff** %4, align 8
  %230 = getelementptr inbounds %struct.tiff, %struct.tiff* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 16
  br i1 %232, label %233, label %255

233:                                              ; preds = %228
  %234 = load %struct.tiff*, %struct.tiff** %4, align 8
  %235 = getelementptr inbounds %struct.tiff, %struct.tiff* %234, i32 0, i32 10
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @TII, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %255

239:                                              ; preds = %233
  %240 = load %struct.tiff*, %struct.tiff** %4, align 8
  %241 = getelementptr inbounds %struct.tiff, %struct.tiff* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.tiff*, %struct.tiff** %4, align 8
  %244 = getelementptr inbounds %struct.tiff, %struct.tiff* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.tiff*, %struct.tiff** %4, align 8
  %247 = getelementptr inbounds %struct.tiff, %struct.tiff* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 %245, %248
  %250 = load %struct.tiff*, %struct.tiff** %4, align 8
  %251 = getelementptr inbounds %struct.tiff, %struct.tiff* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %249, %252
  %254 = call i32 @tiff_swap_byte_order(i8* %242, i32 %253)
  br label %255

255:                                              ; preds = %239, %233, %228
  %256 = load %struct.tiff*, %struct.tiff** %4, align 8
  %257 = getelementptr inbounds %struct.tiff, %struct.tiff* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 8
  br i1 %259, label %260, label %281

260:                                              ; preds = %255
  %261 = load %struct.tiff*, %struct.tiff** %4, align 8
  %262 = getelementptr inbounds %struct.tiff, %struct.tiff* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 3
  br i1 %264, label %265, label %281

265:                                              ; preds = %260
  %266 = load i32*, i32** %3, align 8
  %267 = load %struct.tiff*, %struct.tiff** %4, align 8
  %268 = getelementptr inbounds %struct.tiff, %struct.tiff* %267, i32 0, i32 2
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.tiff*, %struct.tiff** %4, align 8
  %271 = getelementptr inbounds %struct.tiff, %struct.tiff* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.tiff*, %struct.tiff** %4, align 8
  %274 = getelementptr inbounds %struct.tiff, %struct.tiff* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.tiff*, %struct.tiff** %4, align 8
  %277 = getelementptr inbounds %struct.tiff, %struct.tiff* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = mul nsw i32 %275, %278
  %280 = call i32 @tiff_scale_lab_samples(i32* %266, i8* %269, i32 %272, i32 %279)
  br label %281

281:                                              ; preds = %265, %260, %255
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @fz_malloc(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tiff_decode_tiles(i32*, %struct.tiff*) #1

declare dso_local i32 @tiff_decode_strips(i32*, %struct.tiff*) #1

declare dso_local i32 @tiff_unpredict_line(i8*, i32, i32, i32) #1

declare dso_local i32 @tiff_ycc_to_rgb(i32*, %struct.tiff*) #1

declare dso_local i32 @tiff_expand_colormap(i32*, %struct.tiff*) #1

declare dso_local i32 @tiff_invert_line(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @tiff_swap_byte_order(i8*, i32) #1

declare dso_local i32 @tiff_scale_lab_samples(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
