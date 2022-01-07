; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_subsurface_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_subsurface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32 }
%struct.wlr_subsurface = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sway_subsurface = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@subsurface_impl = common dso_local global i32 0, align 4
@subsurface_handle_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, %struct.wlr_subsurface*)* @view_subsurface_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @view_subsurface_create(%struct.sway_view* %0, %struct.wlr_subsurface* %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.wlr_subsurface*, align 8
  %5 = alloca %struct.sway_subsurface*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store %struct.wlr_subsurface* %1, %struct.wlr_subsurface** %4, align 8
  %6 = call %struct.sway_subsurface* @calloc(i32 1, i32 8)
  store %struct.sway_subsurface* %6, %struct.sway_subsurface** %5, align 8
  %7 = load %struct.sway_subsurface*, %struct.sway_subsurface** %5, align 8
  %8 = icmp eq %struct.sway_subsurface* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @SWAY_ERROR, align 4
  %11 = call i32 @sway_log(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.sway_subsurface*, %struct.sway_subsurface** %5, align 8
  %14 = getelementptr inbounds %struct.sway_subsurface, %struct.sway_subsurface* %13, i32 0, i32 0
  %15 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %16 = load %struct.wlr_subsurface*, %struct.wlr_subsurface** %4, align 8
  %17 = getelementptr inbounds %struct.wlr_subsurface, %struct.wlr_subsurface* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @view_child_init(%struct.TYPE_7__* %14, i32* @subsurface_impl, %struct.sway_view* %15, i32 %18)
  %20 = load %struct.wlr_subsurface*, %struct.wlr_subsurface** %4, align 8
  %21 = getelementptr inbounds %struct.wlr_subsurface, %struct.wlr_subsurface* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.sway_subsurface*, %struct.sway_subsurface** %5, align 8
  %24 = getelementptr inbounds %struct.sway_subsurface, %struct.sway_subsurface* %23, i32 0, i32 1
  %25 = call i32 @wl_signal_add(i32* %22, %struct.TYPE_6__* %24)
  %26 = load i32, i32* @subsurface_handle_destroy, align 4
  %27 = load %struct.sway_subsurface*, %struct.sway_subsurface** %5, align 8
  %28 = getelementptr inbounds %struct.sway_subsurface, %struct.sway_subsurface* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.sway_subsurface*, %struct.sway_subsurface** %5, align 8
  %31 = getelementptr inbounds %struct.sway_subsurface, %struct.sway_subsurface* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.sway_subsurface*, %struct.sway_subsurface** %5, align 8
  %34 = getelementptr inbounds %struct.sway_subsurface, %struct.sway_subsurface* %33, i32 0, i32 0
  %35 = call i32 @view_child_damage(%struct.TYPE_7__* %34, i32 1)
  br label %36

36:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.sway_subsurface* @calloc(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @view_child_init(%struct.TYPE_7__*, i32*, %struct.sway_view*, i32) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @view_child_damage(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
