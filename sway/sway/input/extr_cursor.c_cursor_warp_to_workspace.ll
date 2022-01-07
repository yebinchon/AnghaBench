; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_warp_to_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_warp_to_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32 }
%struct.sway_workspace = type { double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_warp_to_workspace(%struct.sway_cursor* %0, %struct.sway_workspace* %1) #0 {
  %3 = alloca %struct.sway_cursor*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %3, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %4, align 8
  %7 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %8 = icmp ne %struct.sway_workspace* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %12 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %15 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fdiv double %16, 2.000000e+00
  %18 = fadd double %13, %17
  store double %18, double* %5, align 8
  %19 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %20 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  %22 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %23 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %22, i32 0, i32 3
  %24 = load double, double* %23, align 8
  %25 = fdiv double %24, 2.000000e+00
  %26 = fadd double %21, %25
  store double %26, double* %6, align 8
  %27 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %28 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load double, double* %5, align 8
  %31 = load double, double* %6, align 8
  %32 = call i32 @wlr_cursor_warp(i32 %29, i32* null, double %30, double %31)
  br label %33

33:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @wlr_cursor_warp(i32, i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
