; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_add_child.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, i32, i64, %struct.sway_container*, i32 }

@FULLSCREEN_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_add_child(%struct.sway_container* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %6 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %7 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %12 = call i32 @container_detach(%struct.sway_container* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %15 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %18 = call i32 @list_add(i32 %16, %struct.sway_container* %17)
  %19 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %20 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 3
  store %struct.sway_container* %19, %struct.sway_container** %21, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %28 = call i32 @container_for_each_child(%struct.sway_container* %27, i32 (%struct.sway_container*, i32*)* @set_workspace, i32* null)
  %29 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %30 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FULLSCREEN_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %13
  %35 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FULLSCREEN_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %34, %13
  %41 = phi i1 [ true, %13 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %44 = call i32 @set_fullscreen_iterator(%struct.sway_container* %43, i32* %5)
  %45 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %46 = call i32 @container_for_each_child(%struct.sway_container* %45, i32 (%struct.sway_container*, i32*)* @set_fullscreen_iterator, i32* %5)
  %47 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %48 = call i32 @container_handle_fullscreen_reparent(%struct.sway_container* %47)
  %49 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %50 = call i32 @container_update_representation(%struct.sway_container* %49)
  %51 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 1
  %53 = call i32 @node_set_dirty(i32* %52)
  %54 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 1
  %56 = call i32 @node_set_dirty(i32* %55)
  ret void
}

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @list_add(i32, %struct.sway_container*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32 (%struct.sway_container*, i32*)*, i32*) #1

declare dso_local i32 @set_workspace(%struct.sway_container*, i32*) #1

declare dso_local i32 @set_fullscreen_iterator(%struct.sway_container*, i32*) #1

declare dso_local i32 @container_handle_fullscreen_reparent(%struct.sway_container*) #1

declare dso_local i32 @container_update_representation(%struct.sway_container*) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
