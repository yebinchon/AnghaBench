; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet = type { %struct.sway_seat_device*, i32 }
%struct.sway_seat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sway_seat_device = type { %struct.sway_tablet* }

@.str = private unnamed_addr constant [40 x i8] c"could not allocate sway tablet for seat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_tablet* @sway_tablet_create(%struct.sway_seat* %0, %struct.sway_seat_device* %1) #0 {
  %3 = alloca %struct.sway_tablet*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_seat_device*, align 8
  %6 = alloca %struct.sway_tablet*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %4, align 8
  store %struct.sway_seat_device* %1, %struct.sway_seat_device** %5, align 8
  %7 = call %struct.sway_tablet* @calloc(i32 1, i32 16)
  store %struct.sway_tablet* %7, %struct.sway_tablet** %6, align 8
  %8 = load %struct.sway_tablet*, %struct.sway_tablet** %6, align 8
  %9 = call i32 @sway_assert(%struct.sway_tablet* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.sway_tablet* null, %struct.sway_tablet** %3, align 8
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %14 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sway_tablet*, %struct.sway_tablet** %6, align 8
  %18 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %17, i32 0, i32 1
  %19 = call i32 @wl_list_insert(i32* %16, i32* %18)
  %20 = load %struct.sway_tablet*, %struct.sway_tablet** %6, align 8
  %21 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %22 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %21, i32 0, i32 0
  store %struct.sway_tablet* %20, %struct.sway_tablet** %22, align 8
  %23 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %24 = load %struct.sway_tablet*, %struct.sway_tablet** %6, align 8
  %25 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %24, i32 0, i32 0
  store %struct.sway_seat_device* %23, %struct.sway_seat_device** %25, align 8
  %26 = load %struct.sway_tablet*, %struct.sway_tablet** %6, align 8
  store %struct.sway_tablet* %26, %struct.sway_tablet** %3, align 8
  br label %27

27:                                               ; preds = %12, %11
  %28 = load %struct.sway_tablet*, %struct.sway_tablet** %3, align 8
  ret %struct.sway_tablet* %28
}

declare dso_local %struct.sway_tablet* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_tablet*, i8*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
