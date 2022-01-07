; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_create_unmanaged.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_create_unmanaged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_unmanaged = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.wlr_xwayland_surface* }
%struct.TYPE_4__ = type { i32 }
%struct.wlr_xwayland_surface = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@unmanaged_handle_request_configure = common dso_local global i32 0, align 4
@unmanaged_handle_map = common dso_local global i32 0, align 4
@unmanaged_handle_unmap = common dso_local global i32 0, align 4
@unmanaged_handle_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_xwayland_unmanaged* (%struct.wlr_xwayland_surface*)* @create_unmanaged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_xwayland_unmanaged* @create_unmanaged(%struct.wlr_xwayland_surface* %0) #0 {
  %2 = alloca %struct.sway_xwayland_unmanaged*, align 8
  %3 = alloca %struct.wlr_xwayland_surface*, align 8
  %4 = alloca %struct.sway_xwayland_unmanaged*, align 8
  store %struct.wlr_xwayland_surface* %0, %struct.wlr_xwayland_surface** %3, align 8
  %5 = call %struct.sway_xwayland_unmanaged* @calloc(i32 1, i32 24)
  store %struct.sway_xwayland_unmanaged* %5, %struct.sway_xwayland_unmanaged** %4, align 8
  %6 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %7 = icmp eq %struct.sway_xwayland_unmanaged* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @SWAY_ERROR, align 4
  %10 = call i32 @sway_log(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.sway_xwayland_unmanaged* null, %struct.sway_xwayland_unmanaged** %2, align 8
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %3, align 8
  %13 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %14 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %13, i32 0, i32 4
  store %struct.wlr_xwayland_surface* %12, %struct.wlr_xwayland_surface** %14, align 8
  %15 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %3, align 8
  %16 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %19 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %18, i32 0, i32 3
  %20 = call i32 @wl_signal_add(i32* %17, %struct.TYPE_4__* %19)
  %21 = load i32, i32* @unmanaged_handle_request_configure, align 4
  %22 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %23 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %3, align 8
  %26 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %29 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %28, i32 0, i32 2
  %30 = call i32 @wl_signal_add(i32* %27, %struct.TYPE_4__* %29)
  %31 = load i32, i32* @unmanaged_handle_map, align 4
  %32 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %33 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %3, align 8
  %36 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %39 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %38, i32 0, i32 1
  %40 = call i32 @wl_signal_add(i32* %37, %struct.TYPE_4__* %39)
  %41 = load i32, i32* @unmanaged_handle_unmap, align 4
  %42 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %43 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %3, align 8
  %46 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %49 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %48, i32 0, i32 0
  %50 = call i32 @wl_signal_add(i32* %47, %struct.TYPE_4__* %49)
  %51 = load i32, i32* @unmanaged_handle_destroy, align 4
  %52 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  %53 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %4, align 8
  store %struct.sway_xwayland_unmanaged* %55, %struct.sway_xwayland_unmanaged** %2, align 8
  br label %56

56:                                               ; preds = %11, %8
  %57 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %2, align 8
  ret %struct.sway_xwayland_unmanaged* %57
}

declare dso_local %struct.sway_xwayland_unmanaged* @calloc(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
