; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xdg_popup = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.wlr_xdg_surface* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wlr_xdg_surface = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.wlr_xdg_popup = type { %struct.wlr_xdg_surface* }
%struct.sway_view = type { i32 }

@popup_impl = common dso_local global i32 0, align 4
@popup_handle_new_popup = common dso_local global i32 0, align 4
@popup_handle_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_xdg_popup* (%struct.wlr_xdg_popup*, %struct.sway_view*)* @popup_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_xdg_popup* @popup_create(%struct.wlr_xdg_popup* %0, %struct.sway_view* %1) #0 {
  %3 = alloca %struct.sway_xdg_popup*, align 8
  %4 = alloca %struct.wlr_xdg_popup*, align 8
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.wlr_xdg_surface*, align 8
  %7 = alloca %struct.sway_xdg_popup*, align 8
  store %struct.wlr_xdg_popup* %0, %struct.wlr_xdg_popup** %4, align 8
  store %struct.sway_view* %1, %struct.sway_view** %5, align 8
  %8 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %4, align 8
  %9 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %8, i32 0, i32 0
  %10 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %9, align 8
  store %struct.wlr_xdg_surface* %10, %struct.wlr_xdg_surface** %6, align 8
  %11 = call %struct.sway_xdg_popup* @calloc(i32 1, i32 24)
  store %struct.sway_xdg_popup* %11, %struct.sway_xdg_popup** %7, align 8
  %12 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %13 = icmp eq %struct.sway_xdg_popup* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.sway_xdg_popup* null, %struct.sway_xdg_popup** %3, align 8
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %17 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %16, i32 0, i32 0
  %18 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %19 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %20 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @view_child_init(%struct.TYPE_6__* %17, i32* @popup_impl, %struct.sway_view* %18, i32 %21)
  %23 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %24 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %25 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %24, i32 0, i32 3
  store %struct.wlr_xdg_surface* %23, %struct.wlr_xdg_surface** %25, align 8
  %26 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %27 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %30 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %29, i32 0, i32 2
  %31 = call i32 @wl_signal_add(i32* %28, %struct.TYPE_5__* %30)
  %32 = load i32, i32* @popup_handle_new_popup, align 4
  %33 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %34 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %37 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %40 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %39, i32 0, i32 1
  %41 = call i32 @wl_signal_add(i32* %38, %struct.TYPE_5__* %40)
  %42 = load i32, i32* @popup_handle_destroy, align 4
  %43 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %44 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %47 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %50 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i32 @wl_signal_add(i32* %48, %struct.TYPE_5__* %51)
  %53 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %54 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %57 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @wl_signal_add(i32* %55, %struct.TYPE_5__* %58)
  %60 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  %61 = call i32 @popup_unconstrain(%struct.sway_xdg_popup* %60)
  %62 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %7, align 8
  store %struct.sway_xdg_popup* %62, %struct.sway_xdg_popup** %3, align 8
  br label %63

63:                                               ; preds = %15, %14
  %64 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %3, align 8
  ret %struct.sway_xdg_popup* %64
}

declare dso_local %struct.sway_xdg_popup* @calloc(i32, i32) #1

declare dso_local i32 @view_child_init(%struct.TYPE_6__*, i32*, %struct.sway_view*, i32) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @popup_unconstrain(%struct.sway_xdg_popup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
