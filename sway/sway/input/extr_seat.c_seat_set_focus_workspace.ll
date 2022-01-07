; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_focus_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_focus_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.sway_workspace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_set_focus_workspace(%struct.sway_seat* %0, %struct.sway_workspace* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %4, align 8
  %5 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %6 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %7 = icmp ne %struct.sway_workspace* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %10 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %9, i32 0, i32 0
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32* [ %10, %8 ], [ null, %11 ]
  %14 = call i32 @seat_set_focus(%struct.sway_seat* %5, i32* %13)
  ret void
}

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
