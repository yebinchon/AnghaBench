; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_seatop_begin_default.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_seatop_begin_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.seatop_default_event*, i32* }
%struct.seatop_default_event = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate seatop_default_event\00", align 1
@seatop_impl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_begin_default(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_seat*, align 8
  %3 = alloca %struct.seatop_default_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %2, align 8
  %4 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %5 = call i32 @seatop_end(%struct.sway_seat* %4)
  %6 = call %struct.seatop_default_event* @calloc(i32 1, i32 4)
  store %struct.seatop_default_event* %6, %struct.seatop_default_event** %3, align 8
  %7 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %8 = call i32 @sway_assert(%struct.seatop_default_event* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %10 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %9, i32 0, i32 1
  store i32* @seatop_impl, i32** %10, align 8
  %11 = load %struct.seatop_default_event*, %struct.seatop_default_event** %3, align 8
  %12 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %13 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %12, i32 0, i32 0
  store %struct.seatop_default_event* %11, %struct.seatop_default_event** %13, align 8
  %14 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %15 = call i32 @seatop_rebase(%struct.sway_seat* %14, i32 0)
  ret void
}

declare dso_local i32 @seatop_end(%struct.sway_seat*) #1

declare dso_local %struct.seatop_default_event* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.seatop_default_event*, i8*) #1

declare dso_local i32 @seatop_rebase(%struct.sway_seat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
