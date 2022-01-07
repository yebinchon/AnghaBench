; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_focused_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_focused_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { i64, %struct.sway_workspace*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sway_workspace* }

@root = common dso_local global %struct.TYPE_4__* null, align 8
@N_CONTAINER = common dso_local global i64 0, align 8
@N_WORKSPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_node*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  %5 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %5, i32* %7)
  store %struct.sway_node* %8, %struct.sway_node** %4, align 8
  %9 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %10 = icmp ne %struct.sway_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.sway_workspace* null, %struct.sway_workspace** %2, align 8
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @N_CONTAINER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %20 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %22, align 8
  store %struct.sway_workspace* %23, %struct.sway_workspace** %2, align 8
  br label %35

24:                                               ; preds = %12
  %25 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %26 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @N_WORKSPACE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %32 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %31, i32 0, i32 1
  %33 = load %struct.sway_workspace*, %struct.sway_workspace** %32, align 8
  store %struct.sway_workspace* %33, %struct.sway_workspace** %2, align 8
  br label %35

34:                                               ; preds = %24
  store %struct.sway_workspace* null, %struct.sway_workspace** %2, align 8
  br label %35

35:                                               ; preds = %34, %30, %18, %11
  %36 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  ret %struct.sway_workspace* %36
}

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
