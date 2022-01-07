; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_get_surface_box.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_get_surface_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface_iterator_data = type { i32, i32, i32, i32, i32, %struct.sway_output* }
%struct.sway_output = type { i32, i32 }
%struct.wlr_surface = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.surface_iterator_data*, %struct.wlr_surface*, i32, i32, %struct.wlr_box*)* @get_surface_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_surface_box(%struct.surface_iterator_data* %0, %struct.wlr_surface* %1, i32 %2, i32 %3, %struct.wlr_box* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.surface_iterator_data*, align 8
  %8 = alloca %struct.wlr_surface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wlr_box*, align 8
  %12 = alloca %struct.sway_output*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.wlr_box, align 4
  %18 = alloca %struct.wlr_box, align 4
  %19 = alloca %struct.wlr_box, align 4
  %20 = alloca %struct.wlr_box, align 4
  store %struct.surface_iterator_data* %0, %struct.surface_iterator_data** %7, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.wlr_box* %4, %struct.wlr_box** %11, align 8
  %21 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %7, align 8
  %22 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %21, i32 0, i32 5
  %23 = load %struct.sway_output*, %struct.sway_output** %22, align 8
  store %struct.sway_output* %23, %struct.sway_output** %12, align 8
  %24 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %25 = call i32 @wlr_surface_has_buffer(%struct.wlr_surface* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %102

28:                                               ; preds = %5
  %29 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %30 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %34 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %39 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = sitofp i32 %41 to double
  store double %42, double* %15, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %45 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sitofp i32 %47 to double
  store double %48, double* %16, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %7, align 8
  %52 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %7, align 8
  %55 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %7, align 8
  %58 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @rotate_child_position(double* %15, double* %16, i32 %49, i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 0
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 1
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 2
  %66 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %7, align 8
  %67 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to double
  %70 = load double, double* %16, align 8
  %71 = fadd double %69, %70
  %72 = fptosi double %71 to i32
  store i32 %72, i32* %65, align 4
  %73 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 3
  %74 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %7, align 8
  %75 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sitofp i32 %76 to double
  %78 = load double, double* %15, align 8
  %79 = fadd double %77, %78
  %80 = fptosi double %79 to i32
  store i32 %80, i32* %73, align 4
  %81 = load %struct.wlr_box*, %struct.wlr_box** %11, align 8
  %82 = icmp ne %struct.wlr_box* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %28
  %84 = load %struct.wlr_box*, %struct.wlr_box** %11, align 8
  %85 = call i32 @memcpy(%struct.wlr_box* %84, %struct.wlr_box* %17, i32 16)
  br label %86

86:                                               ; preds = %83, %28
  %87 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %7, align 8
  %88 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @wlr_box_rotated_bounds(%struct.wlr_box* %18, %struct.wlr_box* %17, i32 %89)
  %91 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  %92 = load %struct.sway_output*, %struct.sway_output** %12, align 8
  %93 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %91, align 4
  %95 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  %96 = load %struct.sway_output*, %struct.sway_output** %12, align 8
  %97 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %95, align 4
  %99 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 0, i32* %100, align 4
  %101 = call i32 @wlr_box_intersection(%struct.wlr_box* %20, %struct.wlr_box* %19, %struct.wlr_box* %18)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %86, %27
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @wlr_surface_has_buffer(%struct.wlr_surface*) #1

declare dso_local i32 @rotate_child_position(double*, double*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.wlr_box*, %struct.wlr_box*, i32) #1

declare dso_local i32 @wlr_box_rotated_bounds(%struct.wlr_box*, %struct.wlr_box*, i32) #1

declare dso_local i32 @wlr_box_intersection(%struct.wlr_box*, %struct.wlr_box*, %struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
