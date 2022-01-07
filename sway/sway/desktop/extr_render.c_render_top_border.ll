; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_top_border.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_top_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { float }
%struct.sway_container = type { i32, %struct.sway_container_state }
%struct.sway_container_state = type { i32, i32, i32, i32, i32 }
%struct.border_colors = type { i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.sway_container*, %struct.border_colors*)* @render_top_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_top_border(%struct.sway_output* %0, i32* %1, %struct.sway_container* %2, %struct.border_colors* %3) #0 {
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.border_colors*, align 8
  %9 = alloca %struct.sway_container_state*, align 8
  %10 = alloca %struct.wlr_box, align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca float, align 4
  store %struct.sway_output* %0, %struct.sway_output** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sway_container* %2, %struct.sway_container** %7, align 8
  store %struct.border_colors* %3, %struct.border_colors** %8, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 1
  store %struct.sway_container_state* %14, %struct.sway_container_state** %9, align 8
  %15 = load %struct.sway_container_state*, %struct.sway_container_state** %9, align 8
  %16 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %58

20:                                               ; preds = %4
  %21 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %22 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  store float %25, float* %12, align 4
  %26 = bitcast [4 x float]* %11 to float**
  %27 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %28 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(float** %26, i32 %29, i32 16)
  %31 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %32 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @premultiply_alpha(float* %31, i32 %34)
  %36 = load %struct.sway_container_state*, %struct.sway_container_state** %9, align 8
  %37 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load %struct.sway_container_state*, %struct.sway_container_state** %9, align 8
  %41 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.sway_container_state*, %struct.sway_container_state** %9, align 8
  %45 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.sway_container_state*, %struct.sway_container_state** %9, align 8
  %49 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load float, float* %12, align 4
  %53 = call i32 @scale_box(%struct.wlr_box* %10, float %52)
  %54 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %57 = call i32 @render_rect(%struct.sway_output* %54, i32* %55, %struct.wlr_box* %10, float* %56)
  br label %58

58:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @memcpy(float**, i32, i32) #1

declare dso_local i32 @premultiply_alpha(float*, i32) #1

declare dso_local i32 @scale_box(%struct.wlr_box*, float) #1

declare dso_local i32 @render_rect(%struct.sway_output*, i32*, %struct.wlr_box*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
