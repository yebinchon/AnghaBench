; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_process_shade_type1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_process_shade_type1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float*, i32, i32, float**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32, i32*)* @fz_process_shade_type1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_process_shade_type1(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca [2 x [2 x i32]], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load float*, float** %28, align 8
  store float* %29, float** %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load float**, float*** %43, align 8
  %45 = getelementptr inbounds float*, float** %44, i64 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  store float %48, float* %12, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load float**, float*** %52, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  %57 = load float, float* %56, align 4
  store float %57, float* %13, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load float**, float*** %61, align 8
  %63 = getelementptr inbounds float*, float** %62, i64 1
  %64 = load float*, float** %63, align 8
  %65 = getelementptr inbounds float, float* %64, i64 0
  %66 = load float, float* %65, align 4
  store float %66, float* %14, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load float**, float*** %70, align 8
  %72 = getelementptr inbounds float*, float** %71, i64 1
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  %75 = load float, float* %74, align 4
  store float %75, float* %15, align 4
  %76 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %21, i64 0, i64 0
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 0
  store i32* %77, i32** %22, align 8
  %78 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %21, i64 0, i64 1
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 0
  store i32* %79, i32** %23, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @fz_colorspace_n(i32* %80, i32 %83)
  store i32 %84, i32* %24, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @fz_concat(i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load float, float* %13, align 4
  store float %92, float* %18, align 4
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %201, %4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %204

97:                                               ; preds = %93
  %98 = load float, float* %13, align 4
  %99 = load float, float* %15, align 4
  %100 = load float, float* %13, align 4
  %101 = fsub float %99, %100
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  %104 = sitofp i32 %103 to float
  %105 = fmul float %101, %104
  %106 = load i32, i32* %11, align 4
  %107 = sitofp i32 %106 to float
  %108 = fdiv float %105, %107
  %109 = fadd float %98, %108
  store float %109, float* %19, align 4
  %110 = load float, float* %12, align 4
  store float %110, float* %20, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32*, i32** %22, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %7, align 4
  %116 = load float, float* %20, align 4
  %117 = load float, float* %18, align 4
  %118 = load float*, float** %9, align 8
  %119 = call i32 @fz_prepare_vertex(i32* %111, i32* %112, i32* %114, i32 %115, float %116, float %117, float* %118)
  %120 = load i32, i32* %24, align 4
  %121 = load float*, float** %9, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds float, float* %121, i64 %122
  store float* %123, float** %9, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32*, i32** %22, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %7, align 4
  %129 = load float, float* %20, align 4
  %130 = load float, float* %19, align 4
  %131 = load float*, float** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %24, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %131, i64 %135
  %137 = call i32 @fz_prepare_vertex(i32* %124, i32* %125, i32* %127, i32 %128, float %129, float %130, float* %136)
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %196, %97
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %199

142:                                              ; preds = %138
  %143 = load float, float* %12, align 4
  %144 = load float, float* %14, align 4
  %145 = load float, float* %12, align 4
  %146 = fsub float %144, %145
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  %149 = sitofp i32 %148 to float
  %150 = fmul float %146, %149
  %151 = load i32, i32* %10, align 4
  %152 = sitofp i32 %151 to float
  %153 = fdiv float %150, %152
  %154 = fadd float %143, %153
  store float %154, float* %20, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32*, i32** %23, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %7, align 4
  %160 = load float, float* %20, align 4
  %161 = load float, float* %18, align 4
  %162 = load float*, float** %9, align 8
  %163 = call i32 @fz_prepare_vertex(i32* %155, i32* %156, i32* %158, i32 %159, float %160, float %161, float* %162)
  %164 = load i32, i32* %24, align 4
  %165 = load float*, float** %9, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds float, float* %165, i64 %166
  store float* %167, float** %9, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load i32*, i32** %23, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %7, align 4
  %173 = load float, float* %20, align 4
  %174 = load float, float* %19, align 4
  %175 = load float*, float** %9, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %24, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %175, i64 %179
  %181 = call i32 @fz_prepare_vertex(i32* %168, i32* %169, i32* %171, i32 %172, float %173, float %174, float* %180)
  %182 = load i32*, i32** %5, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = load i32*, i32** %22, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32*, i32** %23, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32*, i32** %23, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32*, i32** %22, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = call i32 @paint_quad(i32* %182, i32* %183, i32* %185, i32* %187, i32* %189, i32* %191)
  %193 = load i32*, i32** %22, align 8
  %194 = load i32*, i32** %23, align 8
  %195 = call i32 @SWAP(i32* %193, i32* %194)
  br label %196

196:                                              ; preds = %142
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %16, align 4
  br label %138

199:                                              ; preds = %138
  %200 = load float, float* %19, align 4
  store float %200, float* %18, align 4
  br label %201

201:                                              ; preds = %199
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %17, align 4
  br label %93

204:                                              ; preds = %93
  ret void
}

declare dso_local i32 @fz_colorspace_n(i32*, i32) #1

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i32 @fz_prepare_vertex(i32*, i32*, i32*, i32, float, float, float*) #1

declare dso_local i32 @paint_quad(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SWAP(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
