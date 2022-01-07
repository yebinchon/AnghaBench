; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_compute_image_key.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_compute_image_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 (i32, float, float, i32, %struct.TYPE_18__*)* }
%struct.TYPE_20__ = type { float, float }
%struct.TYPE_17__ = type { float, float, float, float }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32*, i32*, i32*, i32*)* @fz_compute_image_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_compute_image_key(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_17__* %2, %struct.TYPE_19__* %3, %struct.TYPE_18__* %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 3
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %31, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %36 = icmp eq %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %10
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  store float 0.000000e+00, float* %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  store float 0.000000e+00, float* %43, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  store float %46, float* %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  store float %52, float* %55, align 4
  br label %92

56:                                               ; preds = %10
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %60 = bitcast %struct.TYPE_18__* %58 to i8*
  %61 = bitcast %struct.TYPE_18__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 16, i1 false)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32 (i32, float, float, i32, %struct.TYPE_18__*)*, i32 (i32, float, float, i32, %struct.TYPE_18__*)** %65, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load float, float* %76, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = call i32 %66(i32 %71, float %74, float %77, i32 %80, %struct.TYPE_18__* %82)
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @fz_adjust_image_subarea(%struct.TYPE_21__* %84, %struct.TYPE_20__* %85, %struct.TYPE_18__* %87, i32 %90)
  br label %92

92:                                               ; preds = %56, %37
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %94 = icmp ne %struct.TYPE_17__* %93, null
  br i1 %94, label %95, label %160

95:                                               ; preds = %92
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load float, float* %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load float, float* %102, align 8
  %104 = fsub float %99, %103
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load float, float* %106, align 4
  %108 = fdiv float %104, %107
  store float %108, float* %21, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load float, float* %111, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load float, float* %115, align 4
  %117 = fsub float %112, %116
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load float, float* %119, align 4
  %121 = fdiv float %117, %120
  store float %121, float* %22, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load float, float* %123, align 4
  %125 = load float, float* %21, align 4
  %126 = fmul float %124, %125
  store float %126, float* %23, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load float, float* %128, align 4
  %130 = load float, float* %22, align 4
  %131 = fmul float %129, %130
  store float %131, float* %24, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load float, float* %133, align 4
  %135 = load float, float* %21, align 4
  %136 = fmul float %134, %135
  store float %136, float* %25, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 3
  %139 = load float, float* %138, align 4
  %140 = load float, float* %22, align 4
  %141 = fmul float %139, %140
  store float %141, float* %26, align 4
  %142 = load float, float* %23, align 4
  %143 = load float, float* %23, align 4
  %144 = fmul float %142, %143
  %145 = load float, float* %24, align 4
  %146 = load float, float* %24, align 4
  %147 = fmul float %145, %146
  %148 = fadd float %144, %147
  %149 = call i32 @sqrtf(float %148)
  %150 = load i32*, i32** %17, align 8
  store i32 %149, i32* %150, align 4
  %151 = load float, float* %25, align 4
  %152 = load float, float* %25, align 4
  %153 = fmul float %151, %152
  %154 = load float, float* %26, align 4
  %155 = load float, float* %26, align 4
  %156 = fmul float %154, %155
  %157 = fadd float %153, %156
  %158 = call i32 @sqrtf(float %157)
  %159 = load i32*, i32** %18, align 8
  store i32 %158, i32* %159, align 4
  br label %171

160:                                              ; preds = %92
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load float, float* %162, align 4
  %164 = fptosi float %163 to i32
  %165 = load i32*, i32** %17, align 8
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load float, float* %167, align 4
  %169 = fptosi float %168 to i32
  %170 = load i32*, i32** %18, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %160, %95
  %172 = load i32*, i32** %19, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32*, i32** %17, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %19, align 8
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32*, i32** %20, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32*, i32** %18, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %20, align 8
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %186, align 4
  %188 = sitofp i32 %187 to float
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load float, float* %190, align 4
  %192 = fcmp ogt float %188, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load float, float* %195, align 4
  %197 = fptosi float %196 to i32
  %198 = load i32*, i32** %17, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %185
  %200 = load i32*, i32** %18, align 8
  %201 = load i32, i32* %200, align 4
  %202 = sitofp i32 %201 to float
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  %205 = load float, float* %204, align 4
  %206 = fcmp ogt float %202, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %199
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 1
  %210 = load float, float* %209, align 4
  %211 = fptosi float %210 to i32
  %212 = load i32*, i32** %18, align 8
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %207, %199
  %214 = load i32*, i32** %17, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i32*, i32** %18, align 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217, %213
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %217
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fz_adjust_image_subarea(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
