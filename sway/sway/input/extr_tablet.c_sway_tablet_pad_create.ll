; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_pad_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_pad_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet_pad = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.sway_seat_device* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sway_seat = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.sway_seat_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"could not allocate sway tablet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_tablet_pad* @sway_tablet_pad_create(%struct.sway_seat* %0, %struct.sway_seat_device* %1) #0 {
  %3 = alloca %struct.sway_tablet_pad*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_seat_device*, align 8
  %6 = alloca %struct.sway_tablet_pad*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %4, align 8
  store %struct.sway_seat_device* %1, %struct.sway_seat_device** %5, align 8
  %7 = call %struct.sway_tablet_pad* @calloc(i32 1, i32 40)
  store %struct.sway_tablet_pad* %7, %struct.sway_tablet_pad** %6, align 8
  %8 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %9 = call i32 @sway_assert(%struct.sway_tablet_pad* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.sway_tablet_pad* null, %struct.sway_tablet_pad** %3, align 8
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %14 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %15 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %14, i32 0, i32 7
  store %struct.sway_seat_device* %13, %struct.sway_seat_device** %15, align 8
  %16 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %17 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = call i32 @wl_list_init(i32* %18)
  %20 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %21 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = call i32 @wl_list_init(i32* %22)
  %24 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %25 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i32 @wl_list_init(i32* %26)
  %28 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %29 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = call i32 @wl_list_init(i32* %30)
  %32 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %33 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = call i32 @wl_list_init(i32* %34)
  %36 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %37 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = call i32 @wl_list_init(i32* %38)
  %40 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %41 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  %45 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %44, i32 0, i32 0
  %46 = call i32 @wl_list_insert(i32* %43, i32* %45)
  %47 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %6, align 8
  store %struct.sway_tablet_pad* %47, %struct.sway_tablet_pad** %3, align 8
  br label %48

48:                                               ; preds = %12, %11
  %49 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  ret %struct.sway_tablet_pad* %49
}

declare dso_local %struct.sway_tablet_pad* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_tablet_pad*, i8*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
