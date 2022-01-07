; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_pad_notify_enter.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_pad_notify_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet_pad = type { %struct.TYPE_6__, %struct.wlr_surface*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wlr_surface = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@handle_pad_tablet_surface_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_tablet_pad_notify_enter(%struct.sway_tablet_pad* %0, %struct.wlr_surface* %1) #0 {
  %3 = alloca %struct.sway_tablet_pad*, align 8
  %4 = alloca %struct.wlr_surface*, align 8
  store %struct.sway_tablet_pad* %0, %struct.sway_tablet_pad** %3, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %4, align 8
  %5 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %6 = icmp ne %struct.sway_tablet_pad* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %9 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %81

13:                                               ; preds = %7
  %14 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %15 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %16 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %15, i32 0, i32 1
  %17 = load %struct.wlr_surface*, %struct.wlr_surface** %16, align 8
  %18 = icmp eq %struct.wlr_surface* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %81

20:                                               ; preds = %13
  %21 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %22 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %21, i32 0, i32 1
  %23 = load %struct.wlr_surface*, %struct.wlr_surface** %22, align 8
  %24 = icmp ne %struct.wlr_surface* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %27 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %30 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %29, i32 0, i32 1
  %31 = load %struct.wlr_surface*, %struct.wlr_surface** %30, align 8
  %32 = call i32 @wlr_tablet_v2_tablet_pad_notify_leave(i32 %28, %struct.wlr_surface* %31)
  %33 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %34 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = call i32 @wl_list_remove(i32* %35)
  %37 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %38 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = call i32 @wl_list_init(i32* %39)
  %41 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %42 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %41, i32 0, i32 1
  store %struct.wlr_surface* null, %struct.wlr_surface** %42, align 8
  br label %43

43:                                               ; preds = %25, %20
  %44 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %45 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %50 = call i32 @wlr_surface_accepts_tablet_v2(i32 %48, %struct.wlr_surface* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %81

53:                                               ; preds = %43
  %54 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %55 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %58 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %63 = call i32 @wlr_tablet_v2_tablet_pad_notify_enter(i32 %56, i32 %61, %struct.wlr_surface* %62)
  %64 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %65 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %66 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %65, i32 0, i32 1
  store %struct.wlr_surface* %64, %struct.wlr_surface** %66, align 8
  %67 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %68 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = call i32 @wl_list_remove(i32* %69)
  %71 = load i32, i32* @handle_pad_tablet_surface_destroy, align 4
  %72 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %73 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %76 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %79 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %78, i32 0, i32 0
  %80 = call i32 @wl_signal_add(i32* %77, %struct.TYPE_6__* %79)
  br label %81

81:                                               ; preds = %53, %52, %19, %12
  ret void
}

declare dso_local i32 @wlr_tablet_v2_tablet_pad_notify_leave(i32, %struct.wlr_surface*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @wlr_surface_accepts_tablet_v2(i32, %struct.wlr_surface*) #1

declare dso_local i32 @wlr_tablet_v2_tablet_pad_notify_enter(i32, i32, %struct.wlr_surface*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
