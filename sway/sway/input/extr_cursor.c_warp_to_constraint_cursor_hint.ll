; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_warp_to_constraint_cursor_hint.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_warp_to_constraint_cursor_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32, %struct.wlr_pointer_constraint_v1* }
%struct.wlr_pointer_constraint_v1 = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, double }
%struct.sway_view = type { %struct.TYPE_6__, %struct.sway_container* }
%struct.TYPE_6__ = type { double, double }
%struct.sway_container = type { double, double }

@WLR_POINTER_CONSTRAINT_V1_STATE_CURSOR_HINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_cursor*)* @warp_to_constraint_cursor_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warp_to_constraint_cursor_hint(%struct.sway_cursor* %0) #0 {
  %2 = alloca %struct.sway_cursor*, align 8
  %3 = alloca %struct.wlr_pointer_constraint_v1*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %2, align 8
  %10 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %11 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %10, i32 0, i32 1
  %12 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %11, align 8
  store %struct.wlr_pointer_constraint_v1* %12, %struct.wlr_pointer_constraint_v1** %3, align 8
  %13 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %3, align 8
  %14 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @WLR_POINTER_CONSTRAINT_V1_STATE_CURSOR_HINT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %1
  %21 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %3, align 8
  %22 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  store double %25, double* %4, align 8
  %26 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %3, align 8
  %27 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  store double %30, double* %5, align 8
  %31 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %3, align 8
  %32 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.sway_view* @view_from_wlr_surface(i32 %33)
  store %struct.sway_view* %34, %struct.sway_view** %6, align 8
  %35 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 1
  %37 = load %struct.sway_container*, %struct.sway_container** %36, align 8
  store %struct.sway_container* %37, %struct.sway_container** %7, align 8
  %38 = load double, double* %4, align 8
  %39 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fadd double %38, %41
  %43 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %44 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = fsub double %42, %46
  store double %47, double* %8, align 8
  %48 = load double, double* %5, align 8
  %49 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = fadd double %48, %51
  %53 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %54 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = fsub double %52, %56
  store double %57, double* %9, align 8
  %58 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %59 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load double, double* %8, align 8
  %62 = load double, double* %9, align 8
  %63 = call i32 @wlr_cursor_warp(i32 %60, i32* null, double %61, double %62)
  br label %64

64:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.sway_view* @view_from_wlr_surface(i32) #1

declare dso_local i32 @wlr_cursor_warp(i32, i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
