; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_request_activate.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_request_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_view = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sway_workspace* }
%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_request_activate(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %5 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %6 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  store %struct.sway_workspace* %9, %struct.sway_workspace** %3, align 8
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %11 = icmp ne %struct.sway_workspace* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %14, %struct.sway_seat** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %42 [
    i32 129, label %18
    i32 128, label %32
    i32 131, label %35
    i32 130, label %41
  ]

18:                                               ; preds = %13
  %19 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %20 = call i32 @workspace_is_visible(%struct.sway_workspace* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %24 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %25 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @seat_set_focus_container(%struct.sway_seat* %23, %struct.TYPE_3__* %26)
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %30 = call i32 @view_set_urgent(%struct.sway_view* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %22
  br label %42

32:                                               ; preds = %13
  %33 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %34 = call i32 @view_set_urgent(%struct.sway_view* %33, i32 1)
  br label %42

35:                                               ; preds = %13
  %36 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %37 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %38 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @seat_set_focus_container(%struct.sway_seat* %36, %struct.TYPE_3__* %39)
  br label %42

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %12, %13, %41, %35, %32, %31
  ret void
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32 @workspace_is_visible(%struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus_container(%struct.sway_seat*, %struct.TYPE_3__*) #1

declare dso_local i32 @view_set_urgent(%struct.sway_view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
