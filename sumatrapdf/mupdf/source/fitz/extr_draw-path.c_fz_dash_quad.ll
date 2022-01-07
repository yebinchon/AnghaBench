; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_dash_quad.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_dash_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctx = type { float }

@MAX_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctx*, float, float, float, float, float, float, i32)* @fz_dash_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_dash_quad(i32* %0, %struct.sctx* %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sctx*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store %struct.sctx* %1, %struct.sctx** %11, align 8
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %26 = load float, float* %12, align 4
  %27 = load float, float* %14, align 4
  %28 = fsub float %26, %27
  %29 = call float @fz_abs(float %28)
  store float %29, float* %19, align 4
  %30 = load float, float* %19, align 4
  %31 = load float, float* %13, align 4
  %32 = load float, float* %15, align 4
  %33 = fsub float %31, %32
  %34 = call float @fz_abs(float %33)
  %35 = call float @fz_max(float %30, float %34)
  store float %35, float* %19, align 4
  %36 = load float, float* %19, align 4
  %37 = load float, float* %16, align 4
  %38 = load float, float* %14, align 4
  %39 = fsub float %37, %38
  %40 = call float @fz_abs(float %39)
  %41 = call float @fz_max(float %36, float %40)
  store float %41, float* %19, align 4
  %42 = load float, float* %19, align 4
  %43 = load float, float* %17, align 4
  %44 = load float, float* %15, align 4
  %45 = fsub float %43, %44
  %46 = call float @fz_abs(float %45)
  %47 = call float @fz_max(float %42, float %46)
  store float %47, float* %19, align 4
  %48 = load float, float* %19, align 4
  %49 = load %struct.sctx*, %struct.sctx** %11, align 8
  %50 = getelementptr inbounds %struct.sctx, %struct.sctx* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fcmp olt float %48, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %9
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @MAX_DEPTH, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %9
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.sctx*, %struct.sctx** %11, align 8
  %60 = load float, float* %16, align 4
  %61 = load float, float* %17, align 4
  %62 = call i32 @fz_dash_lineto(i32* %58, %struct.sctx* %59, float %60, float %61, i32 1)
  br label %114

63:                                               ; preds = %53
  %64 = load float, float* %12, align 4
  %65 = load float, float* %14, align 4
  %66 = fadd float %64, %65
  store float %66, float* %20, align 4
  %67 = load float, float* %13, align 4
  %68 = load float, float* %15, align 4
  %69 = fadd float %67, %68
  store float %69, float* %21, align 4
  %70 = load float, float* %14, align 4
  %71 = load float, float* %16, align 4
  %72 = fadd float %70, %71
  store float %72, float* %22, align 4
  %73 = load float, float* %15, align 4
  %74 = load float, float* %17, align 4
  %75 = fadd float %73, %74
  store float %75, float* %23, align 4
  %76 = load float, float* %20, align 4
  %77 = load float, float* %22, align 4
  %78 = fadd float %76, %77
  store float %78, float* %24, align 4
  %79 = load float, float* %21, align 4
  %80 = load float, float* %23, align 4
  %81 = fadd float %79, %80
  store float %81, float* %25, align 4
  %82 = load float, float* %20, align 4
  %83 = fmul float %82, 5.000000e-01
  store float %83, float* %20, align 4
  %84 = load float, float* %21, align 4
  %85 = fmul float %84, 5.000000e-01
  store float %85, float* %21, align 4
  %86 = load float, float* %22, align 4
  %87 = fmul float %86, 5.000000e-01
  store float %87, float* %22, align 4
  %88 = load float, float* %23, align 4
  %89 = fmul float %88, 5.000000e-01
  store float %89, float* %23, align 4
  %90 = load float, float* %24, align 4
  %91 = fmul float %90, 2.500000e-01
  store float %91, float* %24, align 4
  %92 = load float, float* %25, align 4
  %93 = fmul float %92, 2.500000e-01
  store float %93, float* %25, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.sctx*, %struct.sctx** %11, align 8
  %96 = load float, float* %12, align 4
  %97 = load float, float* %13, align 4
  %98 = load float, float* %20, align 4
  %99 = load float, float* %21, align 4
  %100 = load float, float* %24, align 4
  %101 = load float, float* %25, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  call void @fz_dash_quad(i32* %94, %struct.sctx* %95, float %96, float %97, float %98, float %99, float %100, float %101, i32 %103)
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.sctx*, %struct.sctx** %11, align 8
  %106 = load float, float* %24, align 4
  %107 = load float, float* %25, align 4
  %108 = load float, float* %22, align 4
  %109 = load float, float* %23, align 4
  %110 = load float, float* %16, align 4
  %111 = load float, float* %17, align 4
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, 1
  call void @fz_dash_quad(i32* %104, %struct.sctx* %105, float %106, float %107, float %108, float %109, float %110, float %111, i32 %113)
  br label %114

114:                                              ; preds = %63, %57
  ret void
}

declare dso_local float @fz_abs(float) #1

declare dso_local float @fz_max(float, float) #1

declare dso_local i32 @fz_dash_lineto(i32*, %struct.sctx*, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
