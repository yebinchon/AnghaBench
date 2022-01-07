; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_wrap_children.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_wrap_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_workspace = type { %struct.sway_container*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sway_container**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %2, align 8
  %6 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %7 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %6, i32 0, i32 0
  %8 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  store %struct.sway_container* %8, %struct.sway_container** %3, align 8
  %9 = call %struct.sway_container* @container_create(i32* null)
  store %struct.sway_container* %9, %struct.sway_container** %4, align 8
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %11 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %22, %1
  %16 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %17 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %24 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.sway_container**, %struct.sway_container*** %26, align 8
  %28 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %27, i64 0
  %29 = load %struct.sway_container*, %struct.sway_container** %28, align 8
  store %struct.sway_container* %29, %struct.sway_container** %5, align 8
  %30 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %31 = call i32 @container_detach(%struct.sway_container* %30)
  %32 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %33 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %34 = call i32 @container_add_child(%struct.sway_container* %32, %struct.sway_container* %33)
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %37 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %38 = call i32 @workspace_add_tiling(%struct.sway_workspace* %36, %struct.sway_container* %37)
  %39 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %41 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %40, i32 0, i32 0
  store %struct.sway_container* %39, %struct.sway_container** %41, align 8
  %42 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  ret %struct.sway_container* %42
}

declare dso_local %struct.sway_container* @container_create(i32*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @container_add_child(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @workspace_add_tiling(%struct.sway_workspace*, %struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
