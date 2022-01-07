; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_horiz_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_horiz_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float, float, float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, float, float, float, float)* @fz_add_horiz_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_add_horiz_rect(i32* %0, %struct.TYPE_6__* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @fz_antidropout_rasterizer(i32* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %161

27:                                               ; preds = %6
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = fcmp oeq float %31, 0.000000e+00
  br i1 %32, label %33, label %93

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = fcmp oeq float %37, 0.000000e+00
  br i1 %38, label %39, label %93

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load float, float* %42, align 4
  %44 = load float, float* %9, align 4
  %45 = fmul float %43, %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load float, float* %48, align 4
  %50 = fadd float %45, %49
  store float %50, float* %13, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load float, float* %53, align 4
  %55 = load float, float* %10, align 4
  %56 = fmul float %54, %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  %60 = load float, float* %59, align 4
  %61 = fadd float %56, %60
  store float %61, float* %14, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load float, float* %64, align 4
  %66 = load float, float* %11, align 4
  %67 = fmul float %65, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load float, float* %70, align 4
  %72 = fadd float %67, %71
  store float %72, float* %15, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load float, float* %75, align 4
  %77 = load float, float* %12, align 4
  %78 = fmul float %76, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load float, float* %81, align 4
  %83 = fadd float %78, %82
  store float %83, float* %16, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load float, float* %15, align 4
  %89 = load float, float* %16, align 4
  %90 = load float, float* %13, align 4
  %91 = load float, float* %14, align 4
  %92 = call i32 @fz_insert_rasterizer_rect(i32* %84, i32 %87, float %88, float %89, float %90, float %91)
  br label %176

93:                                               ; preds = %33, %27
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load float, float* %96, align 4
  %98 = fcmp oeq float %97, 0.000000e+00
  br i1 %98, label %99, label %159

99:                                               ; preds = %93
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load float, float* %102, align 4
  %104 = fcmp oeq float %103, 0.000000e+00
  br i1 %104, label %105, label %159

105:                                              ; preds = %99
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = load float, float* %10, align 4
  %111 = fmul float %109, %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load float, float* %114, align 4
  %116 = fadd float %111, %115
  store float %116, float* %17, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load float, float* %119, align 4
  %121 = load float, float* %9, align 4
  %122 = fmul float %120, %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  %126 = load float, float* %125, align 4
  %127 = fadd float %122, %126
  store float %127, float* %18, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load float, float* %130, align 4
  %132 = load float, float* %12, align 4
  %133 = fmul float %131, %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load float, float* %136, align 4
  %138 = fadd float %133, %137
  store float %138, float* %19, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load float, float* %141, align 4
  %143 = load float, float* %11, align 4
  %144 = fmul float %142, %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  %148 = load float, float* %147, align 4
  %149 = fadd float %144, %148
  store float %149, float* %20, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load float, float* %19, align 4
  %155 = load float, float* %18, align 4
  %156 = load float, float* %17, align 4
  %157 = load float, float* %20, align 4
  %158 = call i32 @fz_insert_rasterizer_rect(i32* %150, i32 %153, float %154, float %155, float %156, float %157)
  br label %176

159:                                              ; preds = %99, %93
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %6
  %162 = load i32*, i32** %7, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = load float, float* %9, align 4
  %165 = load float, float* %10, align 4
  %166 = load float, float* %11, align 4
  %167 = load float, float* %10, align 4
  %168 = call i32 @fz_add_line(i32* %162, %struct.TYPE_6__* %163, float %164, float %165, float %166, float %167, i32 0)
  %169 = load i32*, i32** %7, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %171 = load float, float* %11, align 4
  %172 = load float, float* %12, align 4
  %173 = load float, float* %9, align 4
  %174 = load float, float* %12, align 4
  %175 = call i32 @fz_add_line(i32* %169, %struct.TYPE_6__* %170, float %171, float %172, float %173, float %174, i32 1)
  br label %176

176:                                              ; preds = %161, %105, %39
  ret void
}

declare dso_local i64 @fz_antidropout_rasterizer(i32*, i32) #1

declare dso_local i32 @fz_insert_rasterizer_rect(i32*, i32, float, float, float, float) #1

declare dso_local i32 @fz_add_line(i32*, %struct.TYPE_6__*, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
