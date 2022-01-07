; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fz_convert_fast_pixmap_samples.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fz_convert_fast_pixmap_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32 }

@FZ_COLORSPACE_GRAY = common dso_local global i32 0, align 4
@FZ_COLORSPACE_RGB = common dso_local global i32 0, align 4
@FZ_COLORSPACE_BGR = common dso_local global i32 0, align 4
@FZ_COLORSPACE_CMYK = common dso_local global i32 0, align 4
@fz_default_color_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_convert_fast_pixmap_samples(i32* %0, %struct.TYPE_35__* %1, %struct.TYPE_35__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  store %struct.TYPE_36__* %15, %struct.TYPE_36__** %9, align 8
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  store %struct.TYPE_36__* %18, %struct.TYPE_36__** %10, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %20 = icmp ne %struct.TYPE_36__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %30 = icmp ne %struct.TYPE_36__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %34, %31 ], [ %36, %35 ]
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %40 = icmp ne %struct.TYPE_36__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @fz_fast_any_to_alpha(i32* %42, %struct.TYPE_35__* %43, %struct.TYPE_35__* %44, i32 %45)
  br label %248

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @fast_gray_to_gray(i32* %56, %struct.TYPE_35__* %57, %struct.TYPE_35__* %58, i32 %59)
  br label %95

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @fast_gray_to_rgb(i32* %66, %struct.TYPE_35__* %67, %struct.TYPE_35__* %68, i32 %69)
  br label %94

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @fast_gray_to_rgb(i32* %76, %struct.TYPE_35__* %77, %struct.TYPE_35__* %78, i32 %79)
  br label %93

81:                                               ; preds = %71
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @fast_gray_to_cmyk(i32* %86, %struct.TYPE_35__* %87, %struct.TYPE_35__* %88, i32 %89)
  br label %92

91:                                               ; preds = %81
  br label %249

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %55
  br label %247

96:                                               ; preds = %47
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %145

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @fast_rgb_to_gray(i32* %105, %struct.TYPE_35__* %106, %struct.TYPE_35__* %107, i32 %108)
  br label %144

110:                                              ; preds = %100
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %117 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @fast_rgb_to_rgb(i32* %115, %struct.TYPE_35__* %116, %struct.TYPE_35__* %117, i32 %118)
  br label %143

120:                                              ; preds = %110
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @fast_rgb_to_bgr(i32* %125, %struct.TYPE_35__* %126, %struct.TYPE_35__* %127, i32 %128)
  br label %142

130:                                              ; preds = %120
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @fast_rgb_to_cmyk(i32* %135, %struct.TYPE_35__* %136, %struct.TYPE_35__* %137, i32 %138)
  br label %141

140:                                              ; preds = %130
  br label %249

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %124
  br label %143

143:                                              ; preds = %142, %114
  br label %144

144:                                              ; preds = %143, %104
  br label %246

145:                                              ; preds = %96
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %194

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @fast_bgr_to_gray(i32* %154, %struct.TYPE_35__* %155, %struct.TYPE_35__* %156, i32 %157)
  br label %193

159:                                              ; preds = %149
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %166 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @fast_rgb_to_bgr(i32* %164, %struct.TYPE_35__* %165, %struct.TYPE_35__* %166, i32 %167)
  br label %192

169:                                              ; preds = %159
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @fast_rgb_to_rgb(i32* %174, %struct.TYPE_35__* %175, %struct.TYPE_35__* %176, i32 %177)
  br label %191

179:                                              ; preds = %169
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @fast_bgr_to_cmyk(i32* %184, %struct.TYPE_35__* %185, %struct.TYPE_35__* %186, i32 %187)
  br label %190

189:                                              ; preds = %179
  br label %249

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190, %173
  br label %192

192:                                              ; preds = %191, %163
  br label %193

193:                                              ; preds = %192, %153
  br label %245

194:                                              ; preds = %145
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %243

198:                                              ; preds = %194
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = load i32*, i32** %5, align 8
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %205 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @fast_cmyk_to_gray(i32* %203, %struct.TYPE_35__* %204, %struct.TYPE_35__* %205, i32 %206)
  br label %242

208:                                              ; preds = %198
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i32*, i32** %5, align 8
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %215 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @fast_cmyk_to_rgb(i32* %213, %struct.TYPE_35__* %214, %struct.TYPE_35__* %215, i32 %216)
  br label %241

218:                                              ; preds = %208
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @fast_cmyk_to_bgr(i32* %223, %struct.TYPE_35__* %224, %struct.TYPE_35__* %225, i32 %226)
  br label %240

228:                                              ; preds = %218
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %228
  %233 = load i32*, i32** %5, align 8
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @fast_cmyk_to_cmyk(i32* %233, %struct.TYPE_35__* %234, %struct.TYPE_35__* %235, i32 %236)
  br label %239

238:                                              ; preds = %228
  br label %249

239:                                              ; preds = %232
  br label %240

240:                                              ; preds = %239, %222
  br label %241

241:                                              ; preds = %240, %212
  br label %242

242:                                              ; preds = %241, %202
  br label %244

243:                                              ; preds = %194
  br label %249

244:                                              ; preds = %242
  br label %245

245:                                              ; preds = %244, %193
  br label %246

246:                                              ; preds = %245, %144
  br label %247

247:                                              ; preds = %246, %95
  br label %248

248:                                              ; preds = %247, %41
  br label %256

249:                                              ; preds = %243, %238, %189, %140, %91
  %250 = load i32*, i32** %5, align 8
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %252 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %253 = load i32, i32* @fz_default_color_params, align 4
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @fz_convert_slow_pixmap_samples(i32* %250, %struct.TYPE_35__* %251, %struct.TYPE_35__* %252, i32* null, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %249, %248
  ret void
}

declare dso_local i32 @fz_fast_any_to_alpha(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_gray_to_gray(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_gray_to_rgb(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_gray_to_cmyk(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_rgb_to_gray(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_rgb_to_rgb(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_rgb_to_bgr(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_rgb_to_cmyk(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_bgr_to_gray(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_bgr_to_cmyk(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_cmyk_to_gray(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_cmyk_to_rgb(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_cmyk_to_bgr(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fast_cmyk_to_cmyk(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @fz_convert_slow_pixmap_samples(i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
