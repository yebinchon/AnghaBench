; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_damage_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_damage_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32 }
%struct.wlr_surface = type { i32 }

@damage_surface_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_damage_surface(%struct.sway_output* %0, double %1, double %2, %struct.wlr_surface* %3, i32 %4) #0 {
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.wlr_surface*, align 8
  %10 = alloca i32, align 4
  store %struct.sway_output* %0, %struct.sway_output** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store %struct.wlr_surface* %3, %struct.wlr_surface** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %12 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %13 = load double, double* %7, align 8
  %14 = load double, double* %8, align 8
  %15 = load i32, i32* @damage_surface_iterator, align 4
  %16 = call i32 @output_surface_for_each_surface(%struct.sway_output* %11, %struct.wlr_surface* %12, double %13, double %14, i32 %15, i32* %10)
  ret void
}

declare dso_local i32 @output_surface_for_each_surface(%struct.sway_output*, %struct.wlr_surface*, double, double, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
