; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_view_popups.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_view_popups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32 }
%struct.sway_output = type { i32 }
%struct.render_data = type { float, i32* }

@render_popup_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, %struct.sway_output*, i32*, float)* @render_view_popups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_view_popups(%struct.sway_view* %0, %struct.sway_output* %1, i32* %2, float %3) #0 {
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.render_data, align 8
  store %struct.sway_view* %0, %struct.sway_view** %5, align 8
  store %struct.sway_output* %1, %struct.sway_output** %6, align 8
  store i32* %2, i32** %7, align 8
  store float %3, float* %8, align 4
  %10 = getelementptr inbounds %struct.render_data, %struct.render_data* %9, i32 0, i32 0
  %11 = load float, float* %8, align 4
  store float %11, float* %10, align 8
  %12 = getelementptr inbounds %struct.render_data, %struct.render_data* %9, i32 0, i32 1
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %12, align 8
  %14 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %15 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %16 = load i32, i32* @render_popup_iterator, align 4
  %17 = call i32 @output_view_for_each_popup(%struct.sway_output* %14, %struct.sway_view* %15, i32 %16, %struct.render_data* %9)
  ret void
}

declare dso_local i32 @output_view_for_each_popup(%struct.sway_output*, %struct.sway_view*, i32, %struct.render_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
