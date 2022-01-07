; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_surface_is_popup.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_surface_is_popup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_surface = type { i32 }
%struct.wlr_xdg_surface = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wlr_xdg_surface* }

@WLR_XDG_SURFACE_ROLE_NONE = common dso_local global i64 0, align 8
@WLR_XDG_SURFACE_ROLE_POPUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlr_surface*)* @surface_is_popup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface_is_popup(%struct.wlr_surface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlr_surface*, align 8
  %4 = alloca %struct.wlr_xdg_surface*, align 8
  store %struct.wlr_surface* %0, %struct.wlr_surface** %3, align 8
  %5 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %6 = call i64 @wlr_surface_is_xdg_surface(%struct.wlr_surface* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %10 = call %struct.wlr_xdg_surface* @wlr_xdg_surface_from_wlr_surface(%struct.wlr_surface* %9)
  store %struct.wlr_xdg_surface* %10, %struct.wlr_xdg_surface** %4, align 8
  br label %11

11:                                               ; preds = %29, %8
  %12 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %4, align 8
  %13 = icmp ne %struct.wlr_xdg_surface* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %4, align 8
  %16 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WLR_XDG_SURFACE_ROLE_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %4, align 8
  %24 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WLR_XDG_SURFACE_ROLE_POPUP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %4, align 8
  %31 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %33, align 8
  store %struct.wlr_xdg_surface* %34, %struct.wlr_xdg_surface** %4, align 8
  br label %11

35:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %28
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @wlr_surface_is_xdg_surface(%struct.wlr_surface*) #1

declare dso_local %struct.wlr_xdg_surface* @wlr_xdg_surface_from_wlr_surface(%struct.wlr_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
