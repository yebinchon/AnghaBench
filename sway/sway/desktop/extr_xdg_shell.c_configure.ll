; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32 }
%struct.sway_xdg_shell_view = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*, double, double, i32, i32)* @configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure(%struct.sway_view* %0, double %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_view*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_xdg_shell_view*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %14 = call %struct.sway_xdg_shell_view* @xdg_shell_view_from_view(%struct.sway_view* %13)
  store %struct.sway_xdg_shell_view* %14, %struct.sway_xdg_shell_view** %12, align 8
  %15 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %12, align 8
  %16 = icmp eq %struct.sway_xdg_shell_view* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %25

18:                                               ; preds = %5
  %19 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %20 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @wlr_xdg_toplevel_set_size(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.sway_xdg_shell_view* @xdg_shell_view_from_view(%struct.sway_view*) #1

declare dso_local i32 @wlr_xdg_toplevel_set_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
