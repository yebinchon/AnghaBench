; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_GetCombinedHistogramEntropy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_GetCombinedHistogramEntropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32*, i64, i64, i64, i64 }

@NUM_LITERAL_CODES = common dso_local global i64 0, align 8
@NUM_LENGTH_CODES = common dso_local global i64 0, align 8
@VP8L_NON_TRIVIAL_SYM = common dso_local global i32 0, align 4
@NUM_DISTANCE_CODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*, double, double*)* @GetCombinedHistogramEntropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetCombinedHistogramEntropy(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, double %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store double %2, double* %8, align 8
  store double* %3, double** %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @VP8LHistogramNumCodes(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @GetCombinedEntropy(i64 %29, i64 %32, i64 %34, i32 %39, i32 %44, i32 0)
  %46 = sitofp i64 %45 to double
  %47 = load double*, double** %9, align 8
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, %46
  store double %49, double* %47, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NUM_LITERAL_CODES, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NUM_LITERAL_CODES, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @NUM_LENGTH_CODES, align 8
  %61 = call i64 @VP8LExtraCostCombined(i64 %54, i64 %59, i64 %60)
  %62 = sitofp i64 %61 to double
  %63 = load double*, double** %9, align 8
  %64 = load double, double* %63, align 8
  %65 = fadd double %64, %62
  store double %65, double* %63, align 8
  %66 = load double*, double** %9, align 8
  %67 = load double, double* %66, align 8
  %68 = load double, double* %8, align 8
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %248

71:                                               ; preds = %4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VP8L_NON_TRIVIAL_SYM, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %120

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %77
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 24
  %90 = and i32 %89, 255
  store i32 %90, i32* %12, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 16
  %95 = and i32 %94, 255
  store i32 %95, i32* %13, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 0
  %100 = and i32 %99, 255
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 255
  br i1 %105, label %106, label %119

106:                                              ; preds = %103, %85
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 255
  br i1 %111, label %112, label %119

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %116, 255
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %112
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %115, %109, %103
  br label %120

120:                                              ; preds = %119, %77, %71
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NUM_LITERAL_CODES, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i64 @GetCombinedEntropy(i64 %123, i64 %126, i64 %127, i32 %132, i32 %137, i32 %138)
  %140 = sitofp i64 %139 to double
  %141 = load double*, double** %9, align 8
  %142 = load double, double* %141, align 8
  %143 = fadd double %142, %140
  store double %143, double* %141, align 8
  %144 = load double*, double** %9, align 8
  %145 = load double, double* %144, align 8
  %146 = load double, double* %8, align 8
  %147 = fcmp ogt double %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %248

149:                                              ; preds = %120
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NUM_LITERAL_CODES, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @GetCombinedEntropy(i64 %152, i64 %155, i64 %156, i32 %161, i32 %166, i32 %167)
  %169 = sitofp i64 %168 to double
  %170 = load double*, double** %9, align 8
  %171 = load double, double* %170, align 8
  %172 = fadd double %171, %169
  store double %172, double* %170, align 8
  %173 = load double*, double** %9, align 8
  %174 = load double, double* %173, align 8
  %175 = load double, double* %8, align 8
  %176 = fcmp ogt double %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %149
  store i32 0, i32* %5, align 4
  br label %248

178:                                              ; preds = %149
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @NUM_LITERAL_CODES, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i64 @GetCombinedEntropy(i64 %181, i64 %184, i64 %185, i32 %190, i32 %195, i32 %196)
  %198 = sitofp i64 %197 to double
  %199 = load double*, double** %9, align 8
  %200 = load double, double* %199, align 8
  %201 = fadd double %200, %198
  store double %201, double* %199, align 8
  %202 = load double*, double** %9, align 8
  %203 = load double, double* %202, align 8
  %204 = load double, double* %8, align 8
  %205 = fcmp ogt double %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %178
  store i32 0, i32* %5, align 4
  br label %248

207:                                              ; preds = %178
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @NUM_DISTANCE_CODES, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @GetCombinedEntropy(i64 %210, i64 %213, i64 %214, i32 %219, i32 %224, i32 0)
  %226 = sitofp i64 %225 to double
  %227 = load double*, double** %9, align 8
  %228 = load double, double* %227, align 8
  %229 = fadd double %228, %226
  store double %229, double* %227, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @NUM_DISTANCE_CODES, align 8
  %237 = call i64 @VP8LExtraCostCombined(i64 %232, i64 %235, i64 %236)
  %238 = sitofp i64 %237 to double
  %239 = load double*, double** %9, align 8
  %240 = load double, double* %239, align 8
  %241 = fadd double %240, %238
  store double %241, double* %239, align 8
  %242 = load double*, double** %9, align 8
  %243 = load double, double* %242, align 8
  %244 = load double, double* %8, align 8
  %245 = fcmp ogt double %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  br label %248

247:                                              ; preds = %207
  store i32 1, i32* %5, align 4
  br label %248

248:                                              ; preds = %247, %246, %206, %177, %148, %70
  %249 = load i32, i32* %5, align 4
  ret i32 %249
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GetCombinedEntropy(i64, i64, i64, i32, i32, i32) #1

declare dso_local i64 @VP8LHistogramNumCodes(i32) #1

declare dso_local i64 @VP8LExtraCostCombined(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
