; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_insert_child.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_insert_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, %struct.sway_container*, i32 }

@set_workspace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_insert_child(%struct.sway_container* %0, %struct.sway_container* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store %struct.sway_container* %1, %struct.sway_container** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %8 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %13 = call i32 @container_detach(%struct.sway_container* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %20 = call i32 @list_insert(i32 %17, i32 %18, %struct.sway_container* %19)
  %21 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 1
  store %struct.sway_container* %21, %struct.sway_container** %23, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %30 = load i32, i32* @set_workspace, align 4
  %31 = call i32 @container_for_each_child(%struct.sway_container* %29, i32 %30, i32* null)
  %32 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %33 = call i32 @container_handle_fullscreen_reparent(%struct.sway_container* %32)
  %34 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %35 = call i32 @container_update_representation(%struct.sway_container* %34)
  ret void
}

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @list_insert(i32, i32, %struct.sway_container*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32, i32*) #1

declare dso_local i32 @container_handle_fullscreen_reparent(%struct.sway_container*) #1

declare dso_local i32 @container_update_representation(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
