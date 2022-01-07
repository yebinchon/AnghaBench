; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_popup_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_popup_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_box = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, %struct.wlr_surface*, %struct.wlr_box*, float, i8*)* @render_popup_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_popup_iterator(%struct.sway_output* %0, %struct.wlr_surface* %1, %struct.wlr_box* %2, float %3, i8* %4) #0 {
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca %struct.wlr_box*, align 8
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %6, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %7, align 8
  store %struct.wlr_box* %2, %struct.wlr_box** %8, align 8
  store float %3, float* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %12 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %13 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %14 = load float, float* %9, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @render_surface_iterator(%struct.sway_output* %11, %struct.wlr_surface* %12, %struct.wlr_box* %13, float %14, i8* %15)
  %17 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %18 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %19 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %20 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %23 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @output_surface_for_each_surface(%struct.sway_output* %17, %struct.wlr_surface* %18, i32 %21, i32 %24, i32 (%struct.sway_output*, %struct.wlr_surface*, %struct.wlr_box*, float, i8*)* @render_surface_iterator, i8* %25)
  ret void
}

declare dso_local i32 @render_surface_iterator(%struct.sway_output*, %struct.wlr_surface*, %struct.wlr_box*, float, i8*) #1

declare dso_local i32 @output_surface_for_each_surface(%struct.sway_output*, %struct.wlr_surface*, i32, i32, i32 (%struct.sway_output*, %struct.wlr_surface*, %struct.wlr_box*, float, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
