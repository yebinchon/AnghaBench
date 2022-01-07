; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_desktop.c_desktop_damage_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_desktop.c_desktop_damage_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_box = type { i64, i64 }

@root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @desktop_damage_surface(%struct.wlr_surface* %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.wlr_surface*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_output*, align 8
  %11 = alloca %struct.wlr_box*, align 8
  store %struct.wlr_surface* %0, %struct.wlr_surface** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %55, %4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.sway_output**, %struct.sway_output*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %25, i64 %27
  %29 = load %struct.sway_output*, %struct.sway_output** %28, align 8
  store %struct.sway_output* %29, %struct.sway_output** %10, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %34 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.wlr_box* @wlr_output_layout_get_box(i32 %32, i32 %35)
  store %struct.wlr_box* %36, %struct.wlr_box** %11, align 8
  %37 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %38 = load double, double* %6, align 8
  %39 = load %struct.wlr_box*, %struct.wlr_box** %11, align 8
  %40 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to double
  %43 = fsub double %38, %42
  %44 = fptosi double %43 to i64
  %45 = load double, double* %7, align 8
  %46 = load %struct.wlr_box*, %struct.wlr_box** %11, align 8
  %47 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to double
  %50 = fsub double %45, %49
  %51 = fptosi double %50 to i64
  %52 = load %struct.wlr_surface*, %struct.wlr_surface** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @output_damage_surface(%struct.sway_output* %37, i64 %44, i64 %51, %struct.wlr_surface* %52, i32 %53)
  br label %55

55:                                               ; preds = %20
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %12

58:                                               ; preds = %12
  ret void
}

declare dso_local %struct.wlr_box* @wlr_output_layout_get_box(i32, i32) #1

declare dso_local i32 @output_damage_surface(%struct.sway_output*, i64, i64, %struct.wlr_surface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
