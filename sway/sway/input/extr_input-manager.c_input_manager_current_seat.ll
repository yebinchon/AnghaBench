; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_manager_current_seat.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_manager_current_seat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_seat* }
%struct.sway_seat = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_seat* @input_manager_current_seat() #0 {
  %1 = alloca %struct.sway_seat*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  store %struct.sway_seat* %5, %struct.sway_seat** %1, align 8
  %6 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  %7 = icmp ne %struct.sway_seat* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %9, %struct.sway_seat** %1, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  ret %struct.sway_seat* %11
}

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
