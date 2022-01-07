; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_process_shade_type3.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_process_shade_type3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float**, i64* }
%struct.TYPE_11__ = type { float, float }

@HUGENUM = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32, i32*)* @fz_process_shade_type3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_process_shade_type3(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load float**, float*** %20, align 8
  %22 = getelementptr inbounds float*, float** %21, i64 0
  %23 = load float*, float** %22, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store float %25, float* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load float**, float*** %30, align 8
  %32 = getelementptr inbounds float*, float** %31, i64 0
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 1
  %35 = load float, float* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store float %35, float* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load float**, float*** %40, align 8
  %42 = getelementptr inbounds float*, float** %41, i64 0
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  %45 = load float, float* %44, align 4
  store float %45, float* %11, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load float**, float*** %49, align 8
  %51 = getelementptr inbounds float*, float** %50, i64 1
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 0
  %54 = load float, float* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store float %54, float* %55, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load float**, float*** %59, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 1
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  %64 = load float, float* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store float %64, float* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load float**, float*** %69, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 1
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 2
  %74 = load float, float* %73, align 4
  store float %74, float* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @fz_matrix_expansion(i32 %75)
  %77 = load float, float* %11, align 4
  %78 = load float, float* %12, align 4
  %79 = call i32 @fz_max(float %77, float %78)
  %80 = mul nsw i32 %76, %79
  %81 = call i32 @sqrtf(i32 %80)
  %82 = mul nsw i32 4, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %86

85:                                               ; preds = %4
  store i32 3, i32* %16, align 4
  br label %86

86:                                               ; preds = %85, %4
  %87 = load i32, i32* %16, align 4
  %88 = icmp sgt i32 %87, 1024
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1024, i32* %16, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %153

99:                                               ; preds = %90
  %100 = load float, float* %11, align 4
  %101 = load float, float* %12, align 4
  %102 = fcmp olt float %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load float, float* %11, align 4
  %105 = load float, float* %11, align 4
  %106 = load float, float* %12, align 4
  %107 = fsub float %105, %106
  %108 = fdiv float %104, %107
  store float %108, float* %15, align 4
  br label %112

109:                                              ; preds = %99
  %110 = load float, float* @HUGENUM, align 4
  %111 = fneg float %110
  store float %111, float* %15, align 4
  br label %112

112:                                              ; preds = %109, %103
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %114 = load float, float* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %116 = load float, float* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %118 = load float, float* %117, align 4
  %119 = fsub float %116, %118
  %120 = load float, float* %15, align 4
  %121 = fmul float %119, %120
  %122 = fadd float %114, %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store float %122, float* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %125 = load float, float* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %127 = load float, float* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %129 = load float, float* %128, align 4
  %130 = fsub float %127, %129
  %131 = load float, float* %15, align 4
  %132 = fmul float %130, %131
  %133 = fadd float %125, %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store float %133, float* %134, align 4
  %135 = load float, float* %11, align 4
  %136 = load float, float* %12, align 4
  %137 = load float, float* %11, align 4
  %138 = fsub float %136, %137
  %139 = load float, float* %15, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %135, %140
  store float %141, float* %14, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load float, float* %14, align 4
  %145 = load float, float* %11, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = bitcast %struct.TYPE_11__* %13 to <2 x float>*
  %149 = load <2 x float>, <2 x float>* %148, align 4
  %150 = bitcast %struct.TYPE_11__* %9 to <2 x float>*
  %151 = load <2 x float>, <2 x float>* %150, align 4
  %152 = call i32 @fz_paint_annulus(i32* %142, i32 %143, <2 x float> %149, float %144, i32 0, <2 x float> %151, float %145, i32 0, i32 %146, i32* %147)
  br label %153

153:                                              ; preds = %112, %90
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load float, float* %11, align 4
  %157 = load float, float* %12, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = bitcast %struct.TYPE_11__* %9 to <2 x float>*
  %161 = load <2 x float>, <2 x float>* %160, align 4
  %162 = bitcast %struct.TYPE_11__* %10 to <2 x float>*
  %163 = load <2 x float>, <2 x float>* %162, align 4
  %164 = call i32 @fz_paint_annulus(i32* %154, i32 %155, <2 x float> %161, float %156, i32 0, <2 x float> %163, float %157, i32 1, i32 %158, i32* %159)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %227

173:                                              ; preds = %153
  %174 = load float, float* %11, align 4
  %175 = load float, float* %12, align 4
  %176 = fcmp ogt float %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load float, float* %12, align 4
  %179 = load float, float* %12, align 4
  %180 = load float, float* %11, align 4
  %181 = fsub float %179, %180
  %182 = fdiv float %178, %181
  store float %182, float* %15, align 4
  br label %186

183:                                              ; preds = %173
  %184 = load float, float* @HUGENUM, align 4
  %185 = fneg float %184
  store float %185, float* %15, align 4
  br label %186

186:                                              ; preds = %183, %177
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %188 = load float, float* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %190 = load float, float* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %192 = load float, float* %191, align 4
  %193 = fsub float %190, %192
  %194 = load float, float* %15, align 4
  %195 = fmul float %193, %194
  %196 = fadd float %188, %195
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store float %196, float* %197, align 4
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %199 = load float, float* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %201 = load float, float* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %203 = load float, float* %202, align 4
  %204 = fsub float %201, %203
  %205 = load float, float* %15, align 4
  %206 = fmul float %204, %205
  %207 = fadd float %199, %206
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store float %207, float* %208, align 4
  %209 = load float, float* %12, align 4
  %210 = load float, float* %11, align 4
  %211 = load float, float* %12, align 4
  %212 = fsub float %210, %211
  %213 = load float, float* %15, align 4
  %214 = fmul float %212, %213
  %215 = fadd float %209, %214
  store float %215, float* %14, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load float, float* %12, align 4
  %219 = load float, float* %14, align 4
  %220 = load i32, i32* %16, align 4
  %221 = load i32*, i32** %8, align 8
  %222 = bitcast %struct.TYPE_11__* %10 to <2 x float>*
  %223 = load <2 x float>, <2 x float>* %222, align 4
  %224 = bitcast %struct.TYPE_11__* %13 to <2 x float>*
  %225 = load <2 x float>, <2 x float>* %224, align 4
  %226 = call i32 @fz_paint_annulus(i32* %216, i32 %217, <2 x float> %223, float %218, i32 1, <2 x float> %225, float %219, i32 1, i32 %220, i32* %221)
  br label %227

227:                                              ; preds = %186, %153
  ret void
}

declare dso_local i32 @sqrtf(i32) #1

declare dso_local i32 @fz_matrix_expansion(i32) #1

declare dso_local i32 @fz_max(float, float) #1

declare dso_local i32 @fz_paint_annulus(i32*, i32, <2 x float>, float, i32, <2 x float>, float, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
