; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_pad_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_pad_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet_pad = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_tablet_pad_destroy(%struct.sway_tablet_pad* %0) #0 {
  %2 = alloca %struct.sway_tablet_pad*, align 8
  store %struct.sway_tablet_pad* %0, %struct.sway_tablet_pad** %2, align 8
  %3 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %4 = icmp ne %struct.sway_tablet_pad* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %8 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %7, i32 0, i32 6
  %9 = call i32 @wl_list_remove(i32* %8)
  %10 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %11 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = call i32 @wl_list_remove(i32* %12)
  %14 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %15 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = call i32 @wl_list_remove(i32* %16)
  %18 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %19 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @wl_list_remove(i32* %20)
  %22 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %23 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = call i32 @wl_list_remove(i32* %24)
  %26 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %27 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = call i32 @wl_list_remove(i32* %28)
  %30 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %31 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = call i32 @wl_list_remove(i32* %32)
  %34 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %2, align 8
  %35 = call i32 @free(%struct.sway_tablet_pad* %34)
  br label %36

36:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @free(%struct.sway_tablet_pad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
