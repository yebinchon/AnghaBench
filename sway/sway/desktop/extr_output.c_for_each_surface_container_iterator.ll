; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_for_each_surface_container_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_for_each_surface_container_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.surface_iterator_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, i8*)* @for_each_surface_container_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_each_surface_container_iterator(%struct.sway_container* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.surface_iterator_data*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %7 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @view_is_visible(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %2
  br label %33

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.surface_iterator_data*
  store %struct.surface_iterator_data* %19, %struct.surface_iterator_data** %5, align 8
  %20 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %5, align 8
  %21 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %24 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %5, align 8
  %27 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %5, align 8
  %30 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @output_view_for_each_surface(i32 %22, i32 %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @view_is_visible(i32) #1

declare dso_local i32 @output_view_for_each_surface(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
