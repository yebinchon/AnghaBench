; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_parent.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.sway_node }
%struct.sway_node = type { i32, %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sway_node }
%struct.sway_container = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.sway_node }
%struct.TYPE_6__ = type { %struct.sway_node }

@root = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_node* @node_get_parent(%struct.sway_node* %0) #0 {
  %2 = alloca %struct.sway_node*, align 8
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  %6 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %7 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %51 [
    i32 131, label %9
    i32 128, label %33
    i32 130, label %47
    i32 129, label %50
  ]

9:                                                ; preds = %1
  %10 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %11 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %10, i32 0, i32 2
  %12 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  store %struct.sway_container* %12, %struct.sway_container** %4, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.sway_node* %21, %struct.sway_node** %2, align 8
  br label %52

22:                                               ; preds = %9
  %23 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %24 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store %struct.sway_node* %31, %struct.sway_node** %2, align 8
  br label %52

32:                                               ; preds = %22
  store %struct.sway_node* null, %struct.sway_node** %2, align 8
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %35 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %34, i32 0, i32 1
  %36 = load %struct.sway_workspace*, %struct.sway_workspace** %35, align 8
  store %struct.sway_workspace* %36, %struct.sway_workspace** %5, align 8
  %37 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %38 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %43 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store %struct.sway_node* %45, %struct.sway_node** %2, align 8
  br label %52

46:                                               ; preds = %33
  store %struct.sway_node* null, %struct.sway_node** %2, align 8
  br label %52

47:                                               ; preds = %1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store %struct.sway_node* %49, %struct.sway_node** %2, align 8
  br label %52

50:                                               ; preds = %1
  store %struct.sway_node* null, %struct.sway_node** %2, align 8
  br label %52

51:                                               ; preds = %1
  store %struct.sway_node* null, %struct.sway_node** %2, align 8
  br label %52

52:                                               ; preds = %51, %50, %47, %46, %41, %32, %27, %17
  %53 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  ret %struct.sway_node* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
