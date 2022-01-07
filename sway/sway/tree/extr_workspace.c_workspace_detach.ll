; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_detach.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32, %struct.sway_output* }
%struct.sway_output = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_detach(%struct.sway_workspace* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca i32, align 4
  store %struct.sway_workspace* %0, %struct.sway_workspace** %2, align 8
  %5 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %6 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %5, i32 0, i32 1
  %7 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  store %struct.sway_output* %7, %struct.sway_output** %3, align 8
  %8 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %9 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %12 = call i32 @list_find(i32 %10, %struct.sway_workspace* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %17 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @list_del(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %23 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %22, i32 0, i32 1
  store %struct.sway_output* null, %struct.sway_output** %23, align 8
  %24 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %25 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %24, i32 0, i32 0
  %26 = call i32 @node_set_dirty(i32* %25)
  %27 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %28 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %27, i32 0, i32 0
  %29 = call i32 @node_set_dirty(i32* %28)
  ret void
}

declare dso_local i32 @list_find(i32, %struct.sway_workspace*) #1

declare dso_local i32 @list_del(i32, i32) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
