; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_add_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_add_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32, i32 }
%struct.sway_workspace = type { i32, %struct.sway_output* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_add_workspace(%struct.sway_output* %0, %struct.sway_workspace* %1) #0 {
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %3, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %4, align 8
  %5 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %6 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %5, i32 0, i32 1
  %7 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %8 = icmp ne %struct.sway_output* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %11 = call i32 @workspace_detach(%struct.sway_workspace* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %14 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %17 = call i32 @list_add(i32 %15, %struct.sway_workspace* %16)
  %18 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %19 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %20 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %19, i32 0, i32 1
  store %struct.sway_output* %18, %struct.sway_output** %20, align 8
  %21 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %22 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %21, i32 0, i32 0
  %23 = call i32 @node_set_dirty(i32* %22)
  %24 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %25 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %24, i32 0, i32 0
  %26 = call i32 @node_set_dirty(i32* %25)
  ret void
}

declare dso_local i32 @workspace_detach(%struct.sway_workspace*) #1

declare dso_local i32 @list_add(i32, %struct.sway_workspace*) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
