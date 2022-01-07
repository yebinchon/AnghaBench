; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_bezier.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_bezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, float, float, float, float, float, float, float, float, float, i32)* @bezier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bezier(i32* %0, i32* %1, i32 %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32 %2, i32* %16, align 4
  store float %3, float* %17, align 4
  store float %4, float* %18, align 4
  store float %5, float* %19, align 4
  store float %6, float* %20, align 4
  store float %7, float* %21, align 4
  store float %8, float* %22, align 4
  store float %9, float* %23, align 4
  store float %10, float* %24, align 4
  store float %11, float* %25, align 4
  store i32 %12, i32* %26, align 4
  %40 = load float, float* %18, align 4
  %41 = load float, float* %20, align 4
  %42 = fsub float %40, %41
  %43 = call float @fz_abs(float %42)
  store float %43, float* %27, align 4
  %44 = load float, float* %27, align 4
  %45 = load float, float* %19, align 4
  %46 = load float, float* %21, align 4
  %47 = fsub float %45, %46
  %48 = call float @fz_abs(float %47)
  %49 = call float @fz_max(float %44, float %48)
  store float %49, float* %27, align 4
  %50 = load float, float* %27, align 4
  %51 = load float, float* %24, align 4
  %52 = load float, float* %22, align 4
  %53 = fsub float %51, %52
  %54 = call float @fz_abs(float %53)
  %55 = call float @fz_max(float %50, float %54)
  store float %55, float* %27, align 4
  %56 = load float, float* %27, align 4
  %57 = load float, float* %25, align 4
  %58 = load float, float* %23, align 4
  %59 = fsub float %57, %58
  %60 = call float @fz_abs(float %59)
  %61 = call float @fz_max(float %56, float %60)
  store float %61, float* %27, align 4
  %62 = load float, float* %27, align 4
  %63 = load float, float* %17, align 4
  %64 = fcmp olt float %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %13
  %66 = load i32, i32* %26, align 4
  %67 = load i32, i32* @MAX_DEPTH, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %13
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load float, float* %18, align 4
  %74 = load float, float* %19, align 4
  %75 = load float, float* %24, align 4
  %76 = load float, float* %25, align 4
  %77 = call i32 @line(i32* %70, i32* %71, i32 %72, float %73, float %74, float %75, float %76)
  br label %163

78:                                               ; preds = %65
  %79 = load float, float* %18, align 4
  %80 = load float, float* %20, align 4
  %81 = fadd float %79, %80
  store float %81, float* %28, align 4
  %82 = load float, float* %19, align 4
  %83 = load float, float* %21, align 4
  %84 = fadd float %82, %83
  store float %84, float* %29, align 4
  %85 = load float, float* %20, align 4
  %86 = load float, float* %22, align 4
  %87 = fadd float %85, %86
  store float %87, float* %30, align 4
  %88 = load float, float* %21, align 4
  %89 = load float, float* %23, align 4
  %90 = fadd float %88, %89
  store float %90, float* %31, align 4
  %91 = load float, float* %22, align 4
  %92 = load float, float* %24, align 4
  %93 = fadd float %91, %92
  store float %93, float* %32, align 4
  %94 = load float, float* %23, align 4
  %95 = load float, float* %25, align 4
  %96 = fadd float %94, %95
  store float %96, float* %33, align 4
  %97 = load float, float* %28, align 4
  %98 = load float, float* %30, align 4
  %99 = fadd float %97, %98
  store float %99, float* %34, align 4
  %100 = load float, float* %29, align 4
  %101 = load float, float* %31, align 4
  %102 = fadd float %100, %101
  store float %102, float* %35, align 4
  %103 = load float, float* %30, align 4
  %104 = load float, float* %32, align 4
  %105 = fadd float %103, %104
  store float %105, float* %36, align 4
  %106 = load float, float* %31, align 4
  %107 = load float, float* %33, align 4
  %108 = fadd float %106, %107
  store float %108, float* %37, align 4
  %109 = load float, float* %34, align 4
  %110 = load float, float* %36, align 4
  %111 = fadd float %109, %110
  store float %111, float* %38, align 4
  %112 = load float, float* %35, align 4
  %113 = load float, float* %37, align 4
  %114 = fadd float %112, %113
  store float %114, float* %39, align 4
  %115 = load float, float* %28, align 4
  %116 = fmul float %115, 5.000000e-01
  store float %116, float* %28, align 4
  %117 = load float, float* %29, align 4
  %118 = fmul float %117, 5.000000e-01
  store float %118, float* %29, align 4
  %119 = load float, float* %32, align 4
  %120 = fmul float %119, 5.000000e-01
  store float %120, float* %32, align 4
  %121 = load float, float* %33, align 4
  %122 = fmul float %121, 5.000000e-01
  store float %122, float* %33, align 4
  %123 = load float, float* %34, align 4
  %124 = fmul float %123, 2.500000e-01
  store float %124, float* %34, align 4
  %125 = load float, float* %35, align 4
  %126 = fmul float %125, 2.500000e-01
  store float %126, float* %35, align 4
  %127 = load float, float* %36, align 4
  %128 = fmul float %127, 2.500000e-01
  store float %128, float* %36, align 4
  %129 = load float, float* %37, align 4
  %130 = fmul float %129, 2.500000e-01
  store float %130, float* %37, align 4
  %131 = load float, float* %38, align 4
  %132 = fmul float %131, 1.250000e-01
  store float %132, float* %38, align 4
  %133 = load float, float* %39, align 4
  %134 = fmul float %133, 1.250000e-01
  store float %134, float* %39, align 4
  %135 = load i32*, i32** %14, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load float, float* %17, align 4
  %139 = load float, float* %18, align 4
  %140 = load float, float* %19, align 4
  %141 = load float, float* %28, align 4
  %142 = load float, float* %29, align 4
  %143 = load float, float* %34, align 4
  %144 = load float, float* %35, align 4
  %145 = load float, float* %38, align 4
  %146 = load float, float* %39, align 4
  %147 = load i32, i32* %26, align 4
  %148 = add nsw i32 %147, 1
  call void @bezier(i32* %135, i32* %136, i32 %137, float %138, float %139, float %140, float %141, float %142, float %143, float %144, float %145, float %146, i32 %148)
  %149 = load i32*, i32** %14, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load float, float* %17, align 4
  %153 = load float, float* %38, align 4
  %154 = load float, float* %39, align 4
  %155 = load float, float* %36, align 4
  %156 = load float, float* %37, align 4
  %157 = load float, float* %32, align 4
  %158 = load float, float* %33, align 4
  %159 = load float, float* %24, align 4
  %160 = load float, float* %25, align 4
  %161 = load i32, i32* %26, align 4
  %162 = add nsw i32 %161, 1
  call void @bezier(i32* %149, i32* %150, i32 %151, float %152, float %153, float %154, float %155, float %156, float %157, float %158, float %159, float %160, i32 %162)
  br label %163

163:                                              ; preds = %78, %69
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
