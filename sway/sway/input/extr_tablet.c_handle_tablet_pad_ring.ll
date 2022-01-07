; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_handle_tablet_pad_ring.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_handle_tablet_pad_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet_pad = type { i32, i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_tablet_pad_ring = type { i64, i32, i32, i32 }

@ring = common dso_local global i32 0, align 4
@WLR_TABLET_PAD_RING_SOURCE_FINGER = common dso_local global i64 0, align 8
@pad = common dso_local global %struct.sway_tablet_pad* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_tablet_pad_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tablet_pad_ring(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_tablet_pad*, align 8
  %6 = alloca %struct.wlr_event_tablet_pad_ring*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %9 = ptrtoint %struct.sway_tablet_pad* %8 to i32
  %10 = load i32, i32* @ring, align 4
  %11 = call %struct.sway_tablet_pad* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_tablet_pad* %11, %struct.sway_tablet_pad** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.wlr_event_tablet_pad_ring*
  store %struct.wlr_event_tablet_pad_ring* %13, %struct.wlr_event_tablet_pad_ring** %6, align 8
  %14 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %15 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %21 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wlr_event_tablet_pad_ring*, %struct.wlr_event_tablet_pad_ring** %6, align 8
  %24 = getelementptr inbounds %struct.wlr_event_tablet_pad_ring, %struct.wlr_event_tablet_pad_ring* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wlr_event_tablet_pad_ring*, %struct.wlr_event_tablet_pad_ring** %6, align 8
  %27 = getelementptr inbounds %struct.wlr_event_tablet_pad_ring, %struct.wlr_event_tablet_pad_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wlr_event_tablet_pad_ring*, %struct.wlr_event_tablet_pad_ring** %6, align 8
  %30 = getelementptr inbounds %struct.wlr_event_tablet_pad_ring, %struct.wlr_event_tablet_pad_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WLR_TABLET_PAD_RING_SOURCE_FINGER, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.wlr_event_tablet_pad_ring*, %struct.wlr_event_tablet_pad_ring** %6, align 8
  %36 = getelementptr inbounds %struct.wlr_event_tablet_pad_ring, %struct.wlr_event_tablet_pad_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wlr_tablet_v2_tablet_pad_notify_ring(i32 %22, i32 %25, i32 %28, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.sway_tablet_pad* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_pad_notify_ring(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
