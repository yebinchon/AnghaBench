; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_box.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32, i32, i32, i32 }
%struct.wlr_box = type { i32 }

@root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @node_get_box(%struct.sway_node* %0, %struct.wlr_box* %1) #0 {
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  store %struct.wlr_box* %1, %struct.wlr_box** %4, align 8
  %5 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %6 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %30 [
    i32 129, label %8
    i32 130, label %12
    i32 128, label %18
    i32 131, label %24
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @root, align 4
  %10 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %11 = call i32 @root_get_box(i32 %9, %struct.wlr_box* %10)
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %17 = call i32 @output_get_box(i32 %15, %struct.wlr_box* %16)
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %20 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %23 = call i32 @workspace_get_box(i32 %21, %struct.wlr_box* %22)
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %26 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %29 = call i32 @container_get_box(i32 %27, %struct.wlr_box* %28)
  br label %30

30:                                               ; preds = %2, %24, %18, %12, %8
  ret void
}

declare dso_local i32 @root_get_box(i32, %struct.wlr_box*) #1

declare dso_local i32 @output_get_box(i32, %struct.wlr_box*) #1

declare dso_local i32 @workspace_get_box(i32, %struct.wlr_box*) #1

declare dso_local i32 @container_get_box(i32, %struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
