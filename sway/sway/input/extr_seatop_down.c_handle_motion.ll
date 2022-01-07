; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_handle_motion.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_handle_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32, %struct.TYPE_6__*, %struct.seatop_down_event* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double, double }
%struct.seatop_down_event = type { double, double, double, double, %struct.sway_container* }
%struct.sway_container = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32, double, double)* @handle_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_motion(%struct.sway_seat* %0, i32 %1, double %2, double %3) #0 {
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.seatop_down_event*, align 8
  %10 = alloca %struct.sway_container*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %15 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %16 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %15, i32 0, i32 2
  %17 = load %struct.seatop_down_event*, %struct.seatop_down_event** %16, align 8
  store %struct.seatop_down_event* %17, %struct.seatop_down_event** %9, align 8
  %18 = load %struct.seatop_down_event*, %struct.seatop_down_event** %9, align 8
  %19 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %18, i32 0, i32 4
  %20 = load %struct.sway_container*, %struct.sway_container** %19, align 8
  store %struct.sway_container* %20, %struct.sway_container** %10, align 8
  %21 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @seat_is_input_allowed(%struct.sway_seat* %21, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %4
  %30 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %31 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.seatop_down_event*, %struct.seatop_down_event** %9, align 8
  %38 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fsub double %36, %39
  store double %40, double* %11, align 8
  %41 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %42 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = load %struct.seatop_down_event*, %struct.seatop_down_event** %9, align 8
  %49 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fsub double %47, %50
  store double %51, double* %12, align 8
  %52 = load %struct.seatop_down_event*, %struct.seatop_down_event** %9, align 8
  %53 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %52, i32 0, i32 2
  %54 = load double, double* %53, align 8
  %55 = load double, double* %11, align 8
  %56 = fadd double %54, %55
  store double %56, double* %13, align 8
  %57 = load %struct.seatop_down_event*, %struct.seatop_down_event** %9, align 8
  %58 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %57, i32 0, i32 3
  %59 = load double, double* %58, align 8
  %60 = load double, double* %12, align 8
  %61 = fadd double %59, %60
  store double %61, double* %14, align 8
  %62 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %63 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load double, double* %13, align 8
  %67 = load double, double* %14, align 8
  %68 = call i32 @wlr_seat_pointer_notify_motion(i32 %64, i32 %65, double %66, double %67)
  br label %69

69:                                               ; preds = %29, %4
  ret void
}

declare dso_local i64 @seat_is_input_allowed(%struct.sway_seat*, i32) #1

declare dso_local i32 @wlr_seat_pointer_notify_motion(i32, i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
