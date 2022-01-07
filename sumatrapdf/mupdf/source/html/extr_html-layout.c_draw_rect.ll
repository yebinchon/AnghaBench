; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_draw_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_draw_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, float, float, float }

@fz_default_color_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, float, %struct.TYPE_3__*, float, float, float, float)* @draw_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_rect(i32* %0, i32* %1, i32 %2, float %3, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store float %3, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  store float %8, float* %17, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %9
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @fz_new_path(i32* %24)
  store i32* %25, i32** %19, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %19, align 8
  %28 = load float, float* %14, align 4
  %29 = load float, float* %15, align 4
  %30 = load float, float* %13, align 4
  %31 = fsub float %29, %30
  %32 = call i32 @fz_moveto(i32* %26, i32* %27, float %28, float %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %19, align 8
  %35 = load float, float* %16, align 4
  %36 = load float, float* %15, align 4
  %37 = load float, float* %13, align 4
  %38 = fsub float %36, %37
  %39 = call i32 @fz_lineto(i32* %33, i32* %34, float %35, float %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = load float, float* %16, align 4
  %43 = load float, float* %17, align 4
  %44 = load float, float* %13, align 4
  %45 = fsub float %43, %44
  %46 = call i32 @fz_lineto(i32* %40, i32* %41, float %42, float %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load float, float* %14, align 4
  %50 = load float, float* %17, align 4
  %51 = load float, float* %13, align 4
  %52 = fsub float %50, %51
  %53 = call i32 @fz_lineto(i32* %47, i32* %48, float %49, float %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @fz_closepath(i32* %54, i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %58 = load float, float* %57, align 8
  %59 = fdiv float %58, 2.550000e+02
  %60 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 0
  store float %59, float* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %62 = load float, float* %61, align 4
  %63 = fdiv float %62, 2.550000e+02
  %64 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 1
  store float %63, float* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %66 = load float, float* %65, align 8
  %67 = fdiv float %66, 2.550000e+02
  %68 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 2
  store float %67, float* %68, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @fz_device_rgb(i32* %73)
  %75 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to float
  %79 = fdiv float %78, 2.550000e+02
  %80 = load i32, i32* @fz_default_color_params, align 4
  %81 = call i32 @fz_fill_path(i32* %69, i32* %70, i32* %71, i32 0, i32 %72, i32 %74, float* %75, float %79, i32 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = call i32 @fz_drop_path(i32* %82, i32* %83)
  br label %85

85:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32* @fz_new_path(i32*) #1

declare dso_local i32 @fz_moveto(i32*, i32*, float, float) #1

declare dso_local i32 @fz_lineto(i32*, i32*, float, float) #1

declare dso_local i32 @fz_closepath(i32*, i32*) #1

declare dso_local i32 @fz_fill_path(i32*, i32*, i32*, i32, i32, i32, float*, float, i32) #1

declare dso_local i32 @fz_device_rgb(i32*) #1

declare dso_local i32 @fz_drop_path(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
