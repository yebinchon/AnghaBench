; ModuleID = '/home/carl/AnghaBench/sway/common/extr_cairo.c_cairo_image_surface_scale.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_cairo.c_cairo_image_surface_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cairo_image_surface_scale(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @cairo_image_surface_get_width(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @cairo_image_surface_get_height(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @cairo_image_surface_create(i32 %15, i32 %16, i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32* @cairo_create(i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sitofp i32 %22 to double
  %24 = load i32, i32* %7, align 4
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = sitofp i32 %27 to double
  %29 = load i32, i32* %8, align 4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %28, %30
  %32 = call i32 @cairo_scale(i32* %21, double %26, double %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @cairo_set_source_surface(i32* %33, i32* %34, i32 0, i32 0)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @cairo_paint(i32* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @cairo_destroy(i32* %38)
  %40 = load i32*, i32** %9, align 8
  ret i32* %40
}

declare dso_local i32 @cairo_image_surface_get_width(i32*) #1

declare dso_local i32 @cairo_image_surface_get_height(i32*) #1

declare dso_local i32* @cairo_image_surface_create(i32, i32, i32) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_scale(i32*, double, double) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, i32, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
