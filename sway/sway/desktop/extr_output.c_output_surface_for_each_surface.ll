; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_surface_for_each_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_surface_for_each_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32 }
%struct.wlr_surface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.surface_iterator_data = type { i8*, double, double, i32, i32, i32, %struct.sway_output*, i32 }

@output_for_each_surface_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_surface_for_each_surface(%struct.sway_output* %0, %struct.wlr_surface* %1, double %2, double %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.sway_output*, align 8
  %8 = alloca %struct.wlr_surface*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.surface_iterator_data, align 8
  store %struct.sway_output* %0, %struct.sway_output** %7, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %12, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 1
  %17 = load double, double* %9, align 8
  store double %17, double* %16, align 8
  %18 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 2
  %19 = load double, double* %10, align 8
  store double %19, double* %18, align 8
  %20 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 4
  %22 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %23 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 5
  %27 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %28 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %26, align 8
  %31 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 6
  %32 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  store %struct.sway_output* %32, %struct.sway_output** %31, align 8
  %33 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %13, i32 0, i32 7
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %33, align 8
  %35 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %36 = load i32, i32* @output_for_each_surface_iterator, align 4
  %37 = call i32 @wlr_surface_for_each_surface(%struct.wlr_surface* %35, i32 %36, %struct.surface_iterator_data* %13)
  ret void
}

declare dso_local i32 @wlr_surface_for_each_surface(%struct.wlr_surface*, i32, %struct.surface_iterator_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
