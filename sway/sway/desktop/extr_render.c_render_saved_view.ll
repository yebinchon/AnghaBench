; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_saved_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_saved_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sway_output = type { i32, i32, i64, i64, %struct.wlr_output* }
%struct.wlr_output = type { i32, i32 }
%struct.wlr_box = type { i32, i32, i64, i64 }

@WL_OUTPUT_TRANSFORM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, %struct.sway_output*, i32*, float)* @render_saved_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_saved_view(%struct.sway_view* %0, %struct.sway_output* %1, i32* %2, float %3) #0 {
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.wlr_output*, align 8
  %10 = alloca %struct.wlr_box, align 8
  %11 = alloca %struct.wlr_box, align 8
  %12 = alloca %struct.wlr_box, align 8
  %13 = alloca i32, align 4
  %14 = alloca [9 x float], align 16
  store %struct.sway_view* %0, %struct.sway_view** %5, align 8
  store %struct.sway_output* %1, %struct.sway_output** %6, align 8
  store i32* %2, i32** %7, align 8
  store float %3, float* %8, align 4
  %15 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %16 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %15, i32 0, i32 4
  %17 = load %struct.wlr_output*, %struct.wlr_output** %16, align 8
  store %struct.wlr_output* %17, %struct.wlr_output** %9, align 8
  %18 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %19 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %24 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %4
  br label %104

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 0
  %32 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %33 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 1
  %36 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %37 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 2
  %40 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %41 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %46 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %50 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %48, %52
  store i64 %53, i64* %39, align 8
  %54 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 3
  %55 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %56 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %61 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %65 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %63, %67
  store i64 %68, i64* %54, align 8
  %69 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 0
  %70 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %71 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %69, align 8
  %73 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 1
  %74 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %75 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %73, align 4
  %77 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = call i32 @wlr_box_intersection(%struct.wlr_box* %12, %struct.wlr_box* %11, %struct.wlr_box* %10)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %30
  br label %104

83:                                               ; preds = %30
  %84 = load %struct.wlr_output*, %struct.wlr_output** %9, align 8
  %85 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @scale_box(%struct.wlr_box* %10, i32 %86)
  %88 = getelementptr inbounds [9 x float], [9 x float]* %14, i64 0, i64 0
  %89 = load i32, i32* @WL_OUTPUT_TRANSFORM_NORMAL, align 4
  %90 = load %struct.wlr_output*, %struct.wlr_output** %9, align 8
  %91 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wlr_matrix_project_box(float* %88, %struct.wlr_box* %10, i32 %89, i32 0, i32 %92)
  %94 = load %struct.wlr_output*, %struct.wlr_output** %9, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %97 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [9 x float], [9 x float]* %14, i64 0, i64 0
  %102 = load float, float* %8, align 4
  %103 = call i32 @render_texture(%struct.wlr_output* %94, i32* %95, i32 %100, %struct.wlr_box* %10, float* %101, float %102)
  br label %104

104:                                              ; preds = %83, %82, %29
  ret void
}

declare dso_local i32 @wlr_box_intersection(%struct.wlr_box*, %struct.wlr_box*, %struct.wlr_box*) #1

declare dso_local i32 @scale_box(%struct.wlr_box*, i32) #1

declare dso_local i32 @wlr_matrix_project_box(float*, %struct.wlr_box*, i32, i32, i32) #1

declare dso_local i32 @render_texture(%struct.wlr_output*, i32*, i32, %struct.wlr_box*, float*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
