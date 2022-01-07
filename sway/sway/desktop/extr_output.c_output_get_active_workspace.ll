; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_get_active_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_get_active_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32 }
%struct.sway_output = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sway_workspace**, i32 }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { %struct.sway_workspace* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_node*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %3, align 8
  %6 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %6, %struct.sway_seat** %4, align 8
  %7 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %8 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %9 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %8, i32 0, i32 1
  %10 = call %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat* %7, i32* %9)
  store %struct.sway_node* %10, %struct.sway_node** %5, align 8
  %11 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %12 = icmp ne %struct.sway_node* %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %15 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store %struct.sway_workspace* null, %struct.sway_workspace** %2, align 8
  br label %33

21:                                               ; preds = %13
  %22 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %23 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.sway_workspace**, %struct.sway_workspace*** %25, align 8
  %27 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %26, i64 0
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %27, align 8
  store %struct.sway_workspace* %28, %struct.sway_workspace** %2, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %31 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %30, i32 0, i32 0
  %32 = load %struct.sway_workspace*, %struct.sway_workspace** %31, align 8
  store %struct.sway_workspace* %32, %struct.sway_workspace** %2, align 8
  br label %33

33:                                               ; preds = %29, %21, %20
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  ret %struct.sway_workspace* %34
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
