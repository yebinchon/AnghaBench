; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_damage_child_views_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_damage_child_views_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_output = type { i32 }

@damage_surface_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, i8*)* @damage_child_views_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @damage_child_views_iterator(%struct.sway_container* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %8 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %13 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @view_is_visible(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %2
  br label %27

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.sway_output*
  store %struct.sway_output* %20, %struct.sway_output** %5, align 8
  store i32 1, i32* %6, align 4
  %21 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @damage_surface_iterator, align 4
  %26 = call i32 @output_view_for_each_surface(%struct.sway_output* %21, i32 %24, i32 %25, i32* %6)
  br label %27

27:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @view_is_visible(i32) #1

declare dso_local i32 @output_view_for_each_surface(%struct.sway_output*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
