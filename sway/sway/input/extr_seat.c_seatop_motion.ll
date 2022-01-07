; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seatop_motion.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seatop_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sway_seat*, i32, double, double)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_motion(%struct.sway_seat* %0, i32 %1, double %2, double %3) #0 {
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %10 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.sway_seat*, i32, double, double)*, i32 (%struct.sway_seat*, i32, double, double)** %12, align 8
  %14 = icmp ne i32 (%struct.sway_seat*, i32, double, double)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %17 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.sway_seat*, i32, double, double)*, i32 (%struct.sway_seat*, i32, double, double)** %19, align 8
  %21 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load double, double* %7, align 8
  %24 = load double, double* %8, align 8
  %25 = call i32 %20(%struct.sway_seat* %21, i32 %22, double %23, double %24)
  br label %26

26:                                               ; preds = %15, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
