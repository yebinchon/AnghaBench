; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_quad.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, float, float, float, float, float, float, float, i32)* @quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quad(i32* %0, i32* %1, i32 %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
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
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store float %8, float* %20, align 4
  store float %9, float* %21, align 4
  store i32 %10, i32* %22, align 4
  %30 = load float, float* %16, align 4
  %31 = load float, float* %18, align 4
  %32 = fsub float %30, %31
  %33 = call float @fz_abs(float %32)
  store float %33, float* %23, align 4
  %34 = load float, float* %23, align 4
  %35 = load float, float* %17, align 4
  %36 = load float, float* %19, align 4
  %37 = fsub float %35, %36
  %38 = call float @fz_abs(float %37)
  %39 = call float @fz_max(float %34, float %38)
  store float %39, float* %23, align 4
  %40 = load float, float* %23, align 4
  %41 = load float, float* %20, align 4
  %42 = load float, float* %18, align 4
  %43 = fsub float %41, %42
  %44 = call float @fz_abs(float %43)
  %45 = call float @fz_max(float %40, float %44)
  store float %45, float* %23, align 4
  %46 = load float, float* %23, align 4
  %47 = load float, float* %21, align 4
  %48 = load float, float* %19, align 4
  %49 = fsub float %47, %48
  %50 = call float @fz_abs(float %49)
  %51 = call float @fz_max(float %46, float %50)
  store float %51, float* %23, align 4
  %52 = load float, float* %23, align 4
  %53 = load float, float* %15, align 4
  %54 = fcmp olt float %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %11
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* @MAX_DEPTH, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55, %11
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load float, float* %16, align 4
  %64 = load float, float* %17, align 4
  %65 = load float, float* %20, align 4
  %66 = load float, float* %21, align 4
  %67 = call i32 @line(i32* %60, i32* %61, i32 %62, float %63, float %64, float %65, float %66)
  br label %123

68:                                               ; preds = %55
  %69 = load float, float* %16, align 4
  %70 = load float, float* %18, align 4
  %71 = fadd float %69, %70
  store float %71, float* %24, align 4
  %72 = load float, float* %17, align 4
  %73 = load float, float* %19, align 4
  %74 = fadd float %72, %73
  store float %74, float* %25, align 4
  %75 = load float, float* %18, align 4
  %76 = load float, float* %20, align 4
  %77 = fadd float %75, %76
  store float %77, float* %26, align 4
  %78 = load float, float* %19, align 4
  %79 = load float, float* %21, align 4
  %80 = fadd float %78, %79
  store float %80, float* %27, align 4
  %81 = load float, float* %24, align 4
  %82 = load float, float* %26, align 4
  %83 = fadd float %81, %82
  store float %83, float* %28, align 4
  %84 = load float, float* %25, align 4
  %85 = load float, float* %27, align 4
  %86 = fadd float %84, %85
  store float %86, float* %29, align 4
  %87 = load float, float* %24, align 4
  %88 = fmul float %87, 5.000000e-01
  store float %88, float* %24, align 4
  %89 = load float, float* %25, align 4
  %90 = fmul float %89, 5.000000e-01
  store float %90, float* %25, align 4
  %91 = load float, float* %26, align 4
  %92 = fmul float %91, 5.000000e-01
  store float %92, float* %26, align 4
  %93 = load float, float* %27, align 4
  %94 = fmul float %93, 5.000000e-01
  store float %94, float* %27, align 4
  %95 = load float, float* %28, align 4
  %96 = fmul float %95, 2.500000e-01
  store float %96, float* %28, align 4
  %97 = load float, float* %29, align 4
  %98 = fmul float %97, 2.500000e-01
  store float %98, float* %29, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load float, float* %15, align 4
  %103 = load float, float* %16, align 4
  %104 = load float, float* %17, align 4
  %105 = load float, float* %24, align 4
  %106 = load float, float* %25, align 4
  %107 = load float, float* %28, align 4
  %108 = load float, float* %29, align 4
  %109 = load i32, i32* %22, align 4
  %110 = add nsw i32 %109, 1
  call void @quad(i32* %99, i32* %100, i32 %101, float %102, float %103, float %104, float %105, float %106, float %107, float %108, i32 %110)
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load float, float* %15, align 4
  %115 = load float, float* %28, align 4
  %116 = load float, float* %29, align 4
  %117 = load float, float* %26, align 4
  %118 = load float, float* %27, align 4
  %119 = load float, float* %20, align 4
  %120 = load float, float* %21, align 4
  %121 = load i32, i32* %22, align 4
  %122 = add nsw i32 %121, 1
  call void @quad(i32* %111, i32* %112, i32 %113, float %114, float %115, float %116, float %117, float %118, float %119, float %120, i32 %122)
  br label %123

123:                                              ; preds = %68, %59
  ret void
}

declare dso_local float @fz_abs(float) #1

declare dso_local float @fz_max(float, float) #1

declare dso_local i32 @line(i32*, i32*, i32, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
