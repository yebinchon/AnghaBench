; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_stroke_bezier.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_stroke_bezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctx = type { float }

@MAX_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctx*, float, float, float, float, float, float, float, float, i32)* @fz_stroke_bezier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stroke_bezier(i32* %0, %struct.sctx* %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sctx*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  store i32* %0, i32** %12, align 8
  store %struct.sctx* %1, %struct.sctx** %13, align 8
  store float %2, float* %14, align 4
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store float %8, float* %20, align 4
  store float %9, float* %21, align 4
  store i32 %10, i32* %22, align 4
  %36 = load float, float* %14, align 4
  %37 = load float, float* %16, align 4
  %38 = fsub float %36, %37
  %39 = call float @fz_abs(float %38)
  store float %39, float* %23, align 4
  %40 = load float, float* %23, align 4
  %41 = load float, float* %15, align 4
  %42 = load float, float* %17, align 4
  %43 = fsub float %41, %42
  %44 = call float @fz_abs(float %43)
  %45 = call float @fz_max(float %40, float %44)
  store float %45, float* %23, align 4
  %46 = load float, float* %23, align 4
  %47 = load float, float* %20, align 4
  %48 = load float, float* %18, align 4
  %49 = fsub float %47, %48
  %50 = call float @fz_abs(float %49)
  %51 = call float @fz_max(float %46, float %50)
  store float %51, float* %23, align 4
  %52 = load float, float* %23, align 4
  %53 = load float, float* %21, align 4
  %54 = load float, float* %19, align 4
  %55 = fsub float %53, %54
  %56 = call float @fz_abs(float %55)
  %57 = call float @fz_max(float %52, float %56)
  store float %57, float* %23, align 4
  %58 = load float, float* %23, align 4
  %59 = load %struct.sctx*, %struct.sctx** %13, align 8
  %60 = getelementptr inbounds %struct.sctx, %struct.sctx* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  %62 = fcmp olt float %58, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %11
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* @MAX_DEPTH, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63, %11
  %68 = load i32*, i32** %12, align 8
  %69 = load %struct.sctx*, %struct.sctx** %13, align 8
  %70 = load float, float* %20, align 4
  %71 = load float, float* %21, align 4
  %72 = call i32 @fz_stroke_lineto(i32* %68, %struct.sctx* %69, float %70, float %71, i32 1)
  br label %154

73:                                               ; preds = %63
  %74 = load float, float* %14, align 4
  %75 = load float, float* %16, align 4
  %76 = fadd float %74, %75
  store float %76, float* %24, align 4
  %77 = load float, float* %15, align 4
  %78 = load float, float* %17, align 4
  %79 = fadd float %77, %78
  store float %79, float* %25, align 4
  %80 = load float, float* %16, align 4
  %81 = load float, float* %18, align 4
  %82 = fadd float %80, %81
  store float %82, float* %26, align 4
  %83 = load float, float* %17, align 4
  %84 = load float, float* %19, align 4
  %85 = fadd float %83, %84
  store float %85, float* %27, align 4
  %86 = load float, float* %18, align 4
  %87 = load float, float* %20, align 4
  %88 = fadd float %86, %87
  store float %88, float* %28, align 4
  %89 = load float, float* %19, align 4
  %90 = load float, float* %21, align 4
  %91 = fadd float %89, %90
  store float %91, float* %29, align 4
  %92 = load float, float* %24, align 4
  %93 = load float, float* %26, align 4
  %94 = fadd float %92, %93
  store float %94, float* %30, align 4
  %95 = load float, float* %25, align 4
  %96 = load float, float* %27, align 4
  %97 = fadd float %95, %96
  store float %97, float* %31, align 4
  %98 = load float, float* %26, align 4
  %99 = load float, float* %28, align 4
  %100 = fadd float %98, %99
  store float %100, float* %32, align 4
  %101 = load float, float* %27, align 4
  %102 = load float, float* %29, align 4
  %103 = fadd float %101, %102
  store float %103, float* %33, align 4
  %104 = load float, float* %30, align 4
  %105 = load float, float* %32, align 4
  %106 = fadd float %104, %105
  store float %106, float* %34, align 4
  %107 = load float, float* %31, align 4
  %108 = load float, float* %33, align 4
  %109 = fadd float %107, %108
  store float %109, float* %35, align 4
  %110 = load float, float* %24, align 4
  %111 = fmul float %110, 5.000000e-01
  store float %111, float* %24, align 4
  %112 = load float, float* %25, align 4
  %113 = fmul float %112, 5.000000e-01
  store float %113, float* %25, align 4
  %114 = load float, float* %28, align 4
  %115 = fmul float %114, 5.000000e-01
  store float %115, float* %28, align 4
  %116 = load float, float* %29, align 4
  %117 = fmul float %116, 5.000000e-01
  store float %117, float* %29, align 4
  %118 = load float, float* %30, align 4
  %119 = fmul float %118, 2.500000e-01
  store float %119, float* %30, align 4
  %120 = load float, float* %31, align 4
  %121 = fmul float %120, 2.500000e-01
  store float %121, float* %31, align 4
  %122 = load float, float* %32, align 4
  %123 = fmul float %122, 2.500000e-01
  store float %123, float* %32, align 4
  %124 = load float, float* %33, align 4
  %125 = fmul float %124, 2.500000e-01
  store float %125, float* %33, align 4
  %126 = load float, float* %34, align 4
  %127 = fmul float %126, 1.250000e-01
  store float %127, float* %34, align 4
  %128 = load float, float* %35, align 4
  %129 = fmul float %128, 1.250000e-01
  store float %129, float* %35, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = load %struct.sctx*, %struct.sctx** %13, align 8
  %132 = load float, float* %14, align 4
  %133 = load float, float* %15, align 4
  %134 = load float, float* %24, align 4
  %135 = load float, float* %25, align 4
  %136 = load float, float* %30, align 4
  %137 = load float, float* %31, align 4
  %138 = load float, float* %34, align 4
  %139 = load float, float* %35, align 4
  %140 = load i32, i32* %22, align 4
  %141 = add nsw i32 %140, 1
  call void @fz_stroke_bezier(i32* %130, %struct.sctx* %131, float %132, float %133, float %134, float %135, float %136, float %137, float %138, float %139, i32 %141)
  %142 = load i32*, i32** %12, align 8
  %143 = load %struct.sctx*, %struct.sctx** %13, align 8
  %144 = load float, float* %34, align 4
  %145 = load float, float* %35, align 4
  %146 = load float, float* %32, align 4
  %147 = load float, float* %33, align 4
  %148 = load float, float* %28, align 4
  %149 = load float, float* %29, align 4
  %150 = load float, float* %20, align 4
  %151 = load float, float* %21, align 4
  %152 = load i32, i32* %22, align 4
  %153 = add nsw i32 %152, 1
  call void @fz_stroke_bezier(i32* %142, %struct.sctx* %143, float %144, float %145, float %146, float %147, float %148, float %149, float %150, float %151, i32 %153)
  br label %154

154:                                              ; preds = %73, %67
  ret void
}

declare dso_local float @fz_abs(float) #1

declare dso_local float @fz_max(float, float) #1

declare dso_local i32 @fz_stroke_lineto(i32*, %struct.sctx*, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
