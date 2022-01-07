; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_view_toplevels.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_view_toplevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { double, double }
%struct.TYPE_3__ = type { double, double }
%struct.sway_output = type { double, double }
%struct.render_data = type { float, i32* }

@render_surface_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, %struct.sway_output*, i32*, float)* @render_view_toplevels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_view_toplevels(%struct.sway_view* %0, %struct.sway_output* %1, i32* %2, float %3) #0 {
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.render_data, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.sway_view* %0, %struct.sway_view** %5, align 8
  store %struct.sway_output* %1, %struct.sway_output** %6, align 8
  store i32* %2, i32** %7, align 8
  store float %3, float* %8, align 4
  %12 = getelementptr inbounds %struct.render_data, %struct.render_data* %9, i32 0, i32 0
  %13 = load float, float* %8, align 4
  store float %13, float* %12, align 8
  %14 = getelementptr inbounds %struct.render_data, %struct.render_data* %9, i32 0, i32 1
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %14, align 8
  %16 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %22 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fsub double %20, %23
  %25 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %26 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fsub double %24, %28
  store double %29, double* %10, align 8
  %30 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %31 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %36 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = fsub double %34, %37
  %39 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %40 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = fsub double %38, %42
  store double %43, double* %11, align 8
  %44 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %45 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %46 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load double, double* %10, align 8
  %49 = load double, double* %11, align 8
  %50 = load i32, i32* @render_surface_iterator, align 4
  %51 = call i32 @output_surface_for_each_surface(%struct.sway_output* %44, i32 %47, double %48, double %49, i32 %50, %struct.render_data* %9)
  ret void
}

declare dso_local i32 @output_surface_for_each_surface(%struct.sway_output*, i32, double, double, i32, %struct.render_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
