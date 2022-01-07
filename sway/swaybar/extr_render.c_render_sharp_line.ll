; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_sharp_line.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_sharp_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAIRO_ANTIALIAS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, double, double, double, double)* @render_sharp_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_sharp_line(i32* %0, i32 %1, double %2, double %3, double %4, double %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %13 = load double, double* %11, align 8
  %14 = fcmp ogt double %13, 1.000000e+00
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = load double, double* %12, align 8
  %17 = fcmp ogt double %16, 1.000000e+00
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load double, double* %9, align 8
  %22 = load double, double* %10, align 8
  %23 = load double, double* %11, align 8
  %24 = load double, double* %12, align 8
  %25 = call i32 @render_sharp_rectangle(i32* %19, i32 %20, double %21, double %22, double %23, double %24)
  br label %69

26:                                               ; preds = %15, %6
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @cairo_save(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @cairo_set_source_u32(i32* %29, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @CAIRO_ANTIALIAS_NONE, align 4
  %34 = call i32 @cairo_set_antialias(i32* %32, i32 %33)
  %35 = load double, double* %11, align 8
  %36 = fcmp oeq double %35, 1.000000e+00
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load double, double* %9, align 8
  %39 = fadd double %38, 5.000000e-01
  store double %39, double* %9, align 8
  %40 = load double, double* %10, align 8
  %41 = load double, double* %12, align 8
  %42 = fadd double %41, %40
  store double %42, double* %12, align 8
  %43 = load double, double* %9, align 8
  store double %43, double* %11, align 8
  br label %44

44:                                               ; preds = %37, %26
  %45 = load double, double* %12, align 8
  %46 = fcmp oeq double %45, 1.000000e+00
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load double, double* %10, align 8
  %49 = fadd double %48, 5.000000e-01
  store double %49, double* %10, align 8
  %50 = load double, double* %9, align 8
  %51 = load double, double* %11, align 8
  %52 = fadd double %51, %50
  store double %52, double* %11, align 8
  %53 = load double, double* %10, align 8
  store double %53, double* %12, align 8
  br label %54

54:                                               ; preds = %47, %44
  %55 = load i32*, i32** %7, align 8
  %56 = load double, double* %9, align 8
  %57 = load double, double* %10, align 8
  %58 = call i32 @cairo_move_to(i32* %55, double %56, double %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @cairo_set_line_width(i32* %59, double 1.000000e+00)
  %61 = load i32*, i32** %7, align 8
  %62 = load double, double* %11, align 8
  %63 = load double, double* %12, align 8
  %64 = call i32 @cairo_line_to(i32* %61, double %62, double %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @cairo_stroke(i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @cairo_restore(i32* %67)
  br label %69

69:                                               ; preds = %54, %18
  ret void
}

declare dso_local i32 @render_sharp_rectangle(i32*, i32, double, double, double, double) #1

declare dso_local i32 @cairo_save(i32*) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_set_antialias(i32*, i32) #1

declare dso_local i32 @cairo_move_to(i32*, double, double) #1

declare dso_local i32 @cairo_set_line_width(i32*, double) #1

declare dso_local i32 @cairo_line_to(i32*, double, double) #1

declare dso_local i32 @cairo_stroke(i32*) #1

declare dso_local i32 @cairo_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
