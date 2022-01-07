; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_from_wlr_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_from_wlr_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32 }
%struct.wlr_surface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.wlr_xdg_surface = type { i32 }
%struct.wlr_subsurface = type { %struct.wlr_surface* }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Surface of unknown type (role %s): %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_view* @view_from_wlr_surface(%struct.wlr_surface* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  %3 = alloca %struct.wlr_surface*, align 8
  %4 = alloca %struct.wlr_xdg_surface*, align 8
  %5 = alloca %struct.wlr_subsurface*, align 8
  %6 = alloca i8*, align 8
  store %struct.wlr_surface* %0, %struct.wlr_surface** %3, align 8
  %7 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %8 = call i64 @wlr_surface_is_xdg_surface(%struct.wlr_surface* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %12 = call %struct.wlr_xdg_surface* @wlr_xdg_surface_from_wlr_surface(%struct.wlr_surface* %11)
  store %struct.wlr_xdg_surface* %12, %struct.wlr_xdg_surface** %4, align 8
  %13 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %4, align 8
  %14 = call %struct.sway_view* @view_from_wlr_xdg_surface(%struct.wlr_xdg_surface* %13)
  store %struct.sway_view* %14, %struct.sway_view** %2, align 8
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %17 = call i64 @wlr_surface_is_subsurface(%struct.wlr_surface* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %21 = call %struct.wlr_subsurface* @wlr_subsurface_from_wlr_surface(%struct.wlr_surface* %20)
  store %struct.wlr_subsurface* %21, %struct.wlr_subsurface** %5, align 8
  %22 = load %struct.wlr_subsurface*, %struct.wlr_subsurface** %5, align 8
  %23 = getelementptr inbounds %struct.wlr_subsurface, %struct.wlr_subsurface* %22, i32 0, i32 0
  %24 = load %struct.wlr_surface*, %struct.wlr_surface** %23, align 8
  %25 = call %struct.sway_view* @view_from_wlr_surface(%struct.wlr_surface* %24)
  store %struct.sway_view* %25, %struct.sway_view** %2, align 8
  br label %49

26:                                               ; preds = %15
  %27 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %28 = call i64 @wlr_surface_is_layer_surface(%struct.wlr_surface* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.sway_view* null, %struct.sway_view** %2, align 8
  br label %49

31:                                               ; preds = %26
  %32 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %33 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %38 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i8* [ %41, %36 ], [ null, %42 ]
  store i8* %44, i8** %6, align 8
  %45 = load i32, i32* @SWAY_DEBUG, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.wlr_surface*, %struct.wlr_surface** %3, align 8
  %48 = call i32 @sway_log(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %46, %struct.wlr_surface* %47)
  store %struct.sway_view* null, %struct.sway_view** %2, align 8
  br label %49

49:                                               ; preds = %43, %30, %19, %10
  %50 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  ret %struct.sway_view* %50
}

declare dso_local i64 @wlr_surface_is_xdg_surface(%struct.wlr_surface*) #1

declare dso_local %struct.wlr_xdg_surface* @wlr_xdg_surface_from_wlr_surface(%struct.wlr_surface*) #1

declare dso_local %struct.sway_view* @view_from_wlr_xdg_surface(%struct.wlr_xdg_surface*) #1

declare dso_local i64 @wlr_surface_is_subsurface(%struct.wlr_surface*) #1

declare dso_local %struct.wlr_subsurface* @wlr_subsurface_from_wlr_surface(%struct.wlr_surface*) #1

declare dso_local i64 @wlr_surface_is_layer_surface(%struct.wlr_surface*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, %struct.wlr_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
