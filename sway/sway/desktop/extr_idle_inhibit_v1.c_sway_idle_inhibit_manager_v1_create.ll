; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_idle_inhibit_v1.c_sway_idle_inhibit_manager_v1_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_idle_inhibit_v1.c_sway_idle_inhibit_manager_v1_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_idle_inhibit_manager_v1 = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.wlr_idle* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wl_display = type { i32 }
%struct.wlr_idle = type { i32 }

@handle_idle_inhibitor_v1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_idle_inhibit_manager_v1* @sway_idle_inhibit_manager_v1_create(%struct.wl_display* %0, %struct.wlr_idle* %1) #0 {
  %3 = alloca %struct.sway_idle_inhibit_manager_v1*, align 8
  %4 = alloca %struct.wl_display*, align 8
  %5 = alloca %struct.wlr_idle*, align 8
  %6 = alloca %struct.sway_idle_inhibit_manager_v1*, align 8
  store %struct.wl_display* %0, %struct.wl_display** %4, align 8
  store %struct.wlr_idle* %1, %struct.wlr_idle** %5, align 8
  %7 = call %struct.sway_idle_inhibit_manager_v1* @calloc(i32 1, i32 24)
  store %struct.sway_idle_inhibit_manager_v1* %7, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %8 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %9 = icmp ne %struct.sway_idle_inhibit_manager_v1* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.sway_idle_inhibit_manager_v1* null, %struct.sway_idle_inhibit_manager_v1** %3, align 8
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.wl_display*, %struct.wl_display** %4, align 8
  %13 = call %struct.TYPE_5__* @wlr_idle_inhibit_v1_create(%struct.wl_display* %12)
  %14 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %15 = getelementptr inbounds %struct.sway_idle_inhibit_manager_v1, %struct.sway_idle_inhibit_manager_v1* %14, i32 0, i32 2
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %17 = getelementptr inbounds %struct.sway_idle_inhibit_manager_v1, %struct.sway_idle_inhibit_manager_v1* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %22 = call i32 @free(%struct.sway_idle_inhibit_manager_v1* %21)
  store %struct.sway_idle_inhibit_manager_v1* null, %struct.sway_idle_inhibit_manager_v1** %3, align 8
  br label %43

23:                                               ; preds = %11
  %24 = load %struct.wlr_idle*, %struct.wlr_idle** %5, align 8
  %25 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %26 = getelementptr inbounds %struct.sway_idle_inhibit_manager_v1, %struct.sway_idle_inhibit_manager_v1* %25, i32 0, i32 3
  store %struct.wlr_idle* %24, %struct.wlr_idle** %26, align 8
  %27 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %28 = getelementptr inbounds %struct.sway_idle_inhibit_manager_v1, %struct.sway_idle_inhibit_manager_v1* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %33 = getelementptr inbounds %struct.sway_idle_inhibit_manager_v1, %struct.sway_idle_inhibit_manager_v1* %32, i32 0, i32 1
  %34 = call i32 @wl_signal_add(i32* %31, %struct.TYPE_6__* %33)
  %35 = load i32, i32* @handle_idle_inhibitor_v1, align 4
  %36 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %37 = getelementptr inbounds %struct.sway_idle_inhibit_manager_v1, %struct.sway_idle_inhibit_manager_v1* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  %40 = getelementptr inbounds %struct.sway_idle_inhibit_manager_v1, %struct.sway_idle_inhibit_manager_v1* %39, i32 0, i32 0
  %41 = call i32 @wl_list_init(i32* %40)
  %42 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %6, align 8
  store %struct.sway_idle_inhibit_manager_v1* %42, %struct.sway_idle_inhibit_manager_v1** %3, align 8
  br label %43

43:                                               ; preds = %23, %20, %10
  %44 = load %struct.sway_idle_inhibit_manager_v1*, %struct.sway_idle_inhibit_manager_v1** %3, align 8
  ret %struct.sway_idle_inhibit_manager_v1* %44
}

declare dso_local %struct.sway_idle_inhibit_manager_v1* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @wlr_idle_inhibit_v1_create(%struct.wl_display*) #1

declare dso_local i32 @free(%struct.sway_idle_inhibit_manager_v1*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @wl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
