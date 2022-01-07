; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_line_dot.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_line_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@FZ_PI = common dso_local global i32 0, align 4
@FZ_SQRT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, float, float)* @fz_add_line_dot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_add_line_dot(i32* %0, %struct.TYPE_4__* %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 4
  store float %22, float* %9, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load float, float* %24, align 4
  store float %25, float* %10, align 4
  %26 = load i32, i32* @FZ_PI, align 4
  %27 = load i32, i32* @FZ_SQRT2, align 4
  %28 = load float, float* %9, align 4
  %29 = load float, float* %10, align 4
  %30 = fdiv float %28, %29
  %31 = call i32 @sqrtf(float %30)
  %32 = mul nsw i32 %27, %31
  %33 = sdiv i32 %26, %32
  %34 = call i32 @ceilf(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load float, float* %7, align 4
  %36 = load float, float* %10, align 4
  %37 = fsub float %35, %36
  store float %37, float* %12, align 4
  %38 = load float, float* %8, align 4
  store float %38, float* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 3, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %4
  store i32 1, i32* %14, align 4
  br label %43

43:                                               ; preds = %78, %42
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load i32, i32* @FZ_PI, align 4
  %49 = mul nsw i32 %48, 2
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = sdiv i32 %51, %52
  %54 = sitofp i32 %53 to float
  store float %54, float* %15, align 4
  %55 = load float, float* %15, align 4
  %56 = call float @cosf(float %55) #3
  store float %56, float* %16, align 4
  %57 = load float, float* %15, align 4
  %58 = call float @sinf(float %57) #3
  store float %58, float* %17, align 4
  %59 = load float, float* %7, align 4
  %60 = load float, float* %16, align 4
  %61 = load float, float* %10, align 4
  %62 = fmul float %60, %61
  %63 = fsub float %59, %62
  store float %63, float* %18, align 4
  %64 = load float, float* %8, align 4
  %65 = load float, float* %17, align 4
  %66 = load float, float* %10, align 4
  %67 = fmul float %65, %66
  %68 = fadd float %64, %67
  store float %68, float* %19, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = load float, float* %12, align 4
  %72 = load float, float* %13, align 4
  %73 = load float, float* %18, align 4
  %74 = load float, float* %19, align 4
  %75 = call i32 @fz_add_line(i32* %69, %struct.TYPE_4__* %70, float %71, float %72, float %73, float %74, i32 0)
  %76 = load float, float* %18, align 4
  store float %76, float* %12, align 4
  %77 = load float, float* %19, align 4
  store float %77, float* %13, align 4
  br label %78

78:                                               ; preds = %47
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %43

81:                                               ; preds = %43
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = load float, float* %12, align 4
  %85 = load float, float* %13, align 4
  %86 = load float, float* %7, align 4
  %87 = load float, float* %10, align 4
  %88 = fsub float %86, %87
  %89 = load float, float* %8, align 4
  %90 = call i32 @fz_add_line(i32* %82, %struct.TYPE_4__* %83, float %84, float %85, float %88, float %89, i32 0)
  ret void
}

declare dso_local i32 @ceilf(i32) #1

declare dso_local i32 @sqrtf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

declare dso_local i32 @fz_add_line(i32*, %struct.TYPE_4__*, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
