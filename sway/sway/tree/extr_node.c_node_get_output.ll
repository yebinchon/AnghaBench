; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32 }
%struct.sway_node = type { i32, %struct.sway_output*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.sway_output* }
%struct.TYPE_3__ = type { %struct.sway_workspace* }
%struct.sway_workspace = type { %struct.sway_output* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_output* @node_get_output(%struct.sway_node* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  %5 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %6 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %34 [
    i32 131, label %8
    i32 128, label %23
    i32 130, label %29
    i32 129, label %33
  ]

8:                                                ; preds = %1
  %9 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %10 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %12, align 8
  store %struct.sway_workspace* %13, %struct.sway_workspace** %4, align 8
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %15 = icmp ne %struct.sway_workspace* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %18 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %17, i32 0, i32 0
  %19 = load %struct.sway_output*, %struct.sway_output** %18, align 8
  br label %21

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi %struct.sway_output* [ %19, %16 ], [ null, %20 ]
  store %struct.sway_output* %22, %struct.sway_output** %2, align 8
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %25 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.sway_output*, %struct.sway_output** %27, align 8
  store %struct.sway_output* %28, %struct.sway_output** %2, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %31 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %30, i32 0, i32 1
  %32 = load %struct.sway_output*, %struct.sway_output** %31, align 8
  store %struct.sway_output* %32, %struct.sway_output** %2, align 8
  br label %35

33:                                               ; preds = %1
  store %struct.sway_output* null, %struct.sway_output** %2, align 8
  br label %35

34:                                               ; preds = %1
  store %struct.sway_output* null, %struct.sway_output** %2, align 8
  br label %35

35:                                               ; preds = %34, %33, %29, %23, %21
  %36 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  ret %struct.sway_output* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
