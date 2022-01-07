; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_template0_unopt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_template0_unopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"adaptive template pixel is out of field\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"failed to decode arithmetic code when handling refinement template0\00", align 1
@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, %struct.TYPE_12__*, i32*)* @jbig2_decode_refinement_template0_unopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_refinement_template0_unopt(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3, %struct.TYPE_12__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %16, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %18, align 4
  store i32 0, i32* %23, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @pixel_outside_field(i32 %43, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %6
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @refpixel_outside_field(i32 %56, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %51, %6
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @jbig2_error(i32* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %70, i32* %7, align 4
  br label %284

71:                                               ; preds = %51
  store i32 0, i32* %21, align 4
  br label %72

72:                                               ; preds = %280, %71
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %283

76:                                               ; preds = %72
  store i32 0, i32* %20, align 4
  br label %77

77:                                               ; preds = %276, %76
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %279

81:                                               ; preds = %77
  store i32 0, i32* %19, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %85, 0
  %87 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %82, i32 %84, i32 %86)
  %88 = shl i32 %87, 0
  %89 = load i32, i32* %19, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %19, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %21, align 4
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %91, i32 %93, i32 %95)
  %97 = shl i32 %96, 1
  %98 = load i32, i32* %19, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %19, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 0
  %103 = load i32, i32* %21, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %100, i32 %102, i32 %104)
  %106 = shl i32 %105, 2
  %107 = load i32, i32* %19, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %19, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %110, %115
  %117 = load i32, i32* %21, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %117, %122
  %124 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %109, i32 %116, i32 %123)
  %125 = shl i32 %124, 3
  %126 = load i32, i32* %19, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %19, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %129, %130
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %18, align 4
  %135 = sub nsw i32 %133, %134
  %136 = add nsw i32 %135, 1
  %137 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %128, i32 %132, i32 %136)
  %138 = shl i32 %137, 4
  %139 = load i32, i32* %19, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %19, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sub nsw i32 %142, %143
  %145 = add nsw i32 %144, 0
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %18, align 4
  %148 = sub nsw i32 %146, %147
  %149 = add nsw i32 %148, 1
  %150 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %141, i32 %145, i32 %149)
  %151 = shl i32 %150, 5
  %152 = load i32, i32* %19, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %19, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %17, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %18, align 4
  %161 = sub nsw i32 %159, %160
  %162 = add nsw i32 %161, 1
  %163 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %154, i32 %158, i32 %162)
  %164 = shl i32 %163, 6
  %165 = load i32, i32* %19, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %19, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %17, align 4
  %170 = sub nsw i32 %168, %169
  %171 = add nsw i32 %170, 1
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %18, align 4
  %174 = sub nsw i32 %172, %173
  %175 = add nsw i32 %174, 0
  %176 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %167, i32 %171, i32 %175)
  %177 = shl i32 %176, 7
  %178 = load i32, i32* %19, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %19, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 %181, %182
  %184 = add nsw i32 %183, 0
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %18, align 4
  %187 = sub nsw i32 %185, %186
  %188 = add nsw i32 %187, 0
  %189 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %180, i32 %184, i32 %188)
  %190 = shl i32 %189, 8
  %191 = load i32, i32* %19, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %19, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %17, align 4
  %196 = sub nsw i32 %194, %195
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %18, align 4
  %200 = sub nsw i32 %198, %199
  %201 = add nsw i32 %200, 0
  %202 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %193, i32 %197, i32 %201)
  %203 = shl i32 %202, 9
  %204 = load i32, i32* %19, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %19, align 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %17, align 4
  %209 = sub nsw i32 %207, %208
  %210 = add nsw i32 %209, 1
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %18, align 4
  %213 = sub nsw i32 %211, %212
  %214 = sub nsw i32 %213, 1
  %215 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %206, i32 %210, i32 %214)
  %216 = shl i32 %215, 10
  %217 = load i32, i32* %19, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %19, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %17, align 4
  %222 = sub nsw i32 %220, %221
  %223 = add nsw i32 %222, 0
  %224 = load i32, i32* %21, align 4
  %225 = load i32, i32* %18, align 4
  %226 = sub nsw i32 %224, %225
  %227 = sub nsw i32 %226, 1
  %228 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %219, i32 %223, i32 %227)
  %229 = shl i32 %228, 11
  %230 = load i32, i32* %19, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %19, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %17, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %235, %240
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %18, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %244, %249
  %251 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %232, i32 %241, i32 %250)
  %252 = shl i32 %251, 12
  %253 = load i32, i32* %19, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %19, align 4
  %255 = load i32*, i32** %11, align 8
  %256 = load i32*, i32** %13, align 8
  %257 = load i32, i32* %19, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = call i32 @jbig2_arith_decode(i32* %255, i32* %259, i32* %23)
  store i32 %260, i32* %22, align 4
  %261 = load i32, i32* %23, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %81
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @jbig2_error(i32* %264, i32 %265, i32 %268, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  store i32 %269, i32* %7, align 4
  br label %284

270:                                              ; preds = %81
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* %22, align 4
  %275 = call i32 @jbig2_image_set_pixel(%struct.TYPE_12__* %271, i32 %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %270
  %277 = load i32, i32* %20, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %20, align 4
  br label %77

279:                                              ; preds = %77
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %21, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %21, align 4
  br label %72

283:                                              ; preds = %72
  store i32 0, i32* %7, align 4
  br label %284

284:                                              ; preds = %283, %263, %64
  %285 = load i32, i32* %7, align 4
  ret i32 %285
}

declare dso_local i64 @pixel_outside_field(i32, i32) #1

declare dso_local i64 @refpixel_outside_field(i32, i32) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

declare dso_local i32 @jbig2_image_get_pixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @jbig2_arith_decode(i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_image_set_pixel(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
