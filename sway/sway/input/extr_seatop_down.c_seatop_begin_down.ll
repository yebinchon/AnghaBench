; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_seatop_begin_down.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_seatop_begin_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.seatop_down_event*, i32*, %struct.TYPE_4__* }
%struct.seatop_down_event = type { i32, i32, i32, i32, %struct.sway_container* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sway_container = type { i32 }

@seatop_impl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_begin_down(%struct.sway_seat* %0, %struct.sway_container* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.seatop_down_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %6, align 8
  store %struct.sway_container* %1, %struct.sway_container** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %13 = call i32 @seatop_end(%struct.sway_seat* %12)
  %14 = call %struct.seatop_down_event* @calloc(i32 1, i32 24)
  store %struct.seatop_down_event* %14, %struct.seatop_down_event** %11, align 8
  %15 = load %struct.seatop_down_event*, %struct.seatop_down_event** %11, align 8
  %16 = icmp ne %struct.seatop_down_event* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %53

18:                                               ; preds = %5
  %19 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %20 = load %struct.seatop_down_event*, %struct.seatop_down_event** %11, align 8
  %21 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %20, i32 0, i32 4
  store %struct.sway_container* %19, %struct.sway_container** %21, align 8
  %22 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %23 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.seatop_down_event*, %struct.seatop_down_event** %11, align 8
  %30 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %32 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.seatop_down_event*, %struct.seatop_down_event** %11, align 8
  %39 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.seatop_down_event*, %struct.seatop_down_event** %11, align 8
  %42 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.seatop_down_event*, %struct.seatop_down_event** %11, align 8
  %45 = getelementptr inbounds %struct.seatop_down_event, %struct.seatop_down_event* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %47 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %46, i32 0, i32 1
  store i32* @seatop_impl, i32** %47, align 8
  %48 = load %struct.seatop_down_event*, %struct.seatop_down_event** %11, align 8
  %49 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %50 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %49, i32 0, i32 0
  store %struct.seatop_down_event* %48, %struct.seatop_down_event** %50, align 8
  %51 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %52 = call i32 @container_raise_floating(%struct.sway_container* %51)
  br label %53

53:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @seatop_end(%struct.sway_seat*) #1

declare dso_local %struct.seatop_down_event* @calloc(i32, i32) #1

declare dso_local i32 @container_raise_floating(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
