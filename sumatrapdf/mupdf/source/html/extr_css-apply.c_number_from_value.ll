; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_number_from_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_number_from_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@CSS_PERCENT = common dso_local global i64 0, align 8
@N_PERCENT = common dso_local global i32 0, align 4
@CSS_NUMBER = common dso_local global i64 0, align 8
@N_NUMBER = common dso_local global i32 0, align 4
@CSS_LENGTH = common dso_local global i64 0, align 8
@N_SCALE = common dso_local global i32 0, align 4
@N_LENGTH = common dso_local global i32 0, align 4
@CSS_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@N_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, float, i32)* @number_from_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @number_from_value(%struct.TYPE_3__* %0, float %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load float, float* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @make_number(float %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %311

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CSS_PERCENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call float @fz_css_strtof(i32 %25, i8** null)
  %27 = load i32, i32* @N_PERCENT, align 4
  %28 = call i32 @make_number(float %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %311

29:                                               ; preds = %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CSS_NUMBER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call float @fz_css_strtof(i32 %38, i8** null)
  %40 = load i32, i32* @N_NUMBER, align 4
  %41 = call i32 @make_number(float %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %311

42:                                               ; preds = %29
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CSS_LENGTH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %291

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call float @fz_css_strtof(i32 %51, i8** %8)
  store float %52, float* %9, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 101
  br i1 %57, label %58, label %74

58:                                               ; preds = %48
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 109
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load float, float* %9, align 4
  %72 = load i32, i32* @N_SCALE, align 4
  %73 = call i32 @make_number(float %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %311

74:                                               ; preds = %64, %58, %48
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 101
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 120
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load float, float* %9, align 4
  %94 = fdiv float %93, 2.000000e+00
  %95 = load i32, i32* @N_SCALE, align 4
  %96 = call i32 @make_number(float %94, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %311

97:                                               ; preds = %86, %80, %74
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 105
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 110
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load float, float* %9, align 4
  %117 = fmul float %116, 7.200000e+01
  %118 = load i32, i32* @N_LENGTH, align 4
  %119 = call i32 @make_number(float %117, i32 %118)
  store i32 %119, i32* %4, align 4
  br label %311

120:                                              ; preds = %109, %103, %97
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 99
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 109
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load float, float* %9, align 4
  %140 = fmul float %139, 7.200000e+03
  %141 = fdiv float %140, 2.540000e+02
  %142 = load i32, i32* @N_LENGTH, align 4
  %143 = call i32 @make_number(float %141, i32 %142)
  store i32 %143, i32* %4, align 4
  br label %311

144:                                              ; preds = %132, %126, %120
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 109
  br i1 %149, label %150, label %168

150:                                              ; preds = %144
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 109
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 2
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load float, float* %9, align 4
  %164 = fmul float %163, 7.200000e+02
  %165 = fdiv float %164, 2.540000e+02
  %166 = load i32, i32* @N_LENGTH, align 4
  %167 = call i32 @make_number(float %165, i32 %166)
  store i32 %167, i32* %4, align 4
  br label %311

168:                                              ; preds = %156, %150, %144
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 112
  br i1 %173, label %174, label %191

174:                                              ; preds = %168
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 99
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load float, float* %9, align 4
  %188 = fmul float %187, 1.200000e+01
  %189 = load i32, i32* @N_LENGTH, align 4
  %190 = call i32 @make_number(float %188, i32 %189)
  store i32 %190, i32* %4, align 4
  br label %311

191:                                              ; preds = %180, %174, %168
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 112
  br i1 %196, label %197, label %213

197:                                              ; preds = %191
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 116
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 2
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load float, float* %9, align 4
  %211 = load i32, i32* @N_LENGTH, align 4
  %212 = call i32 @make_number(float %210, i32 %211)
  store i32 %212, i32* %4, align 4
  br label %311

213:                                              ; preds = %203, %197, %191
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 112
  br i1 %218, label %219, label %235

219:                                              ; preds = %213
  %220 = load i8*, i8** %8, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 120
  br i1 %224, label %225, label %235

225:                                              ; preds = %219
  %226 = load i8*, i8** %8, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load float, float* %9, align 4
  %233 = load i32, i32* @N_LENGTH, align 4
  %234 = call i32 @make_number(float %232, i32 %233)
  store i32 %234, i32* %4, align 4
  br label %311

235:                                              ; preds = %225, %219, %213
  %236 = load i8*, i8** %8, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 114
  br i1 %240, label %241, label %264

241:                                              ; preds = %235
  %242 = load i8*, i8** %8, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 101
  br i1 %246, label %247, label %264

247:                                              ; preds = %241
  %248 = load i8*, i8** %8, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 2
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 109
  br i1 %252, label %253, label %264

253:                                              ; preds = %247
  %254 = load i8*, i8** %8, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 3
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = load float, float* %9, align 4
  %261 = fmul float %260, 1.600000e+01
  %262 = load i32, i32* @N_LENGTH, align 4
  %263 = call i32 @make_number(float %261, i32 %262)
  store i32 %263, i32* %4, align 4
  br label %311

264:                                              ; preds = %253, %247, %241, %235
  %265 = load i8*, i8** %8, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 99
  br i1 %269, label %270, label %287

270:                                              ; preds = %264
  %271 = load i8*, i8** %8, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 104
  br i1 %275, label %276, label %287

276:                                              ; preds = %270
  %277 = load i8*, i8** %8, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 2
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %276
  %283 = load float, float* %9, align 4
  %284 = fdiv float %283, 2.000000e+00
  %285 = load i32, i32* @N_LENGTH, align 4
  %286 = call i32 @make_number(float %284, i32 %285)
  store i32 %286, i32* %4, align 4
  br label %311

287:                                              ; preds = %276, %270, %264
  %288 = load float, float* %9, align 4
  %289 = load i32, i32* @N_LENGTH, align 4
  %290 = call i32 @make_number(float %288, i32 %289)
  store i32 %290, i32* %4, align 4
  br label %311

291:                                              ; preds = %42
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @CSS_KEYWORD, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %291
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @strcmp(i32 %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %297
  %304 = load i32, i32* @N_AUTO, align 4
  %305 = call i32 @make_number(float 0.000000e+00, i32 %304)
  store i32 %305, i32* %4, align 4
  br label %311

306:                                              ; preds = %297
  br label %307

307:                                              ; preds = %306, %291
  %308 = load float, float* %6, align 4
  %309 = load i32, i32* %7, align 4
  %310 = call i32 @make_number(float %308, i32 %309)
  store i32 %310, i32* %4, align 4
  br label %311

311:                                              ; preds = %307, %303, %287, %282, %259, %231, %209, %186, %162, %138, %115, %92, %70, %35, %22, %12
  %312 = load i32, i32* %4, align 4
  ret i32 %312
}

declare dso_local i32 @make_number(float, i32) #1

declare dso_local float @fz_css_strtof(i32, i8**) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
