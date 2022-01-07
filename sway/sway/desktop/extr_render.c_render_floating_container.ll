; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_floating_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_floating_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.border_colors, %struct.border_colors, %struct.border_colors }
%struct.border_colors = type { i32 }
%struct.sway_output = type { i32 }
%struct.sway_container = type { %struct.TYPE_5__, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.wlr_texture*, %struct.sway_view* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }
%struct.wlr_texture = type { i32 }
%struct.sway_view = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@B_NORMAL = common dso_local global i64 0, align 8
@B_PIXEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.sway_container*)* @render_floating_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_floating_container(%struct.sway_output* %0, i32* %1, %struct.sway_container* %2) #0 {
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca %struct.sway_view*, align 8
  %8 = alloca %struct.border_colors*, align 8
  %9 = alloca %struct.wlr_texture*, align 8
  %10 = alloca %struct.wlr_texture*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.sway_container* %2, %struct.sway_container** %6, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 7
  %13 = load %struct.sway_view*, %struct.sway_view** %12, align 8
  %14 = icmp ne %struct.sway_view* %13, null
  br i1 %14, label %15, label %106

15:                                               ; preds = %3
  %16 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 7
  %18 = load %struct.sway_view*, %struct.sway_view** %17, align 8
  store %struct.sway_view* %18, %struct.sway_view** %7, align 8
  %19 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %20 = call i64 @view_is_urgent(%struct.sway_view* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store %struct.border_colors* %25, %struct.border_colors** %8, align 8
  %26 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 6
  %28 = load %struct.wlr_texture*, %struct.wlr_texture** %27, align 8
  store %struct.wlr_texture* %28, %struct.wlr_texture** %9, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %30 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %29, i32 0, i32 5
  %31 = load %struct.wlr_texture*, %struct.wlr_texture** %30, align 8
  store %struct.wlr_texture* %31, %struct.wlr_texture** %10, align 8
  br label %59

32:                                               ; preds = %15
  %33 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store %struct.border_colors* %41, %struct.border_colors** %8, align 8
  %42 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %43 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %42, i32 0, i32 4
  %44 = load %struct.wlr_texture*, %struct.wlr_texture** %43, align 8
  store %struct.wlr_texture* %44, %struct.wlr_texture** %9, align 8
  %45 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %46 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %45, i32 0, i32 3
  %47 = load %struct.wlr_texture*, %struct.wlr_texture** %46, align 8
  store %struct.wlr_texture* %47, %struct.wlr_texture** %10, align 8
  br label %58

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store %struct.border_colors* %51, %struct.border_colors** %8, align 8
  %52 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 2
  %54 = load %struct.wlr_texture*, %struct.wlr_texture** %53, align 8
  store %struct.wlr_texture* %54, %struct.wlr_texture** %9, align 8
  %55 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 1
  %57 = load %struct.wlr_texture*, %struct.wlr_texture** %56, align 8
  store %struct.wlr_texture* %57, %struct.wlr_texture** %10, align 8
  br label %58

58:                                               ; preds = %48, %38
  br label %59

59:                                               ; preds = %58, %22
  %60 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @B_NORMAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %70 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %79 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %83 = load %struct.wlr_texture*, %struct.wlr_texture** %9, align 8
  %84 = load %struct.wlr_texture*, %struct.wlr_texture** %10, align 8
  %85 = call i32 @render_titlebar(%struct.sway_output* %67, i32* %68, %struct.sway_container* %69, i32 %73, i32 %77, i32 %81, %struct.border_colors* %82, %struct.wlr_texture* %83, %struct.wlr_texture* %84)
  br label %100

86:                                               ; preds = %59
  %87 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %88 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @B_PIXEL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %97 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %98 = call i32 @render_top_border(%struct.sway_output* %94, i32* %95, %struct.sway_container* %96, %struct.border_colors* %97)
  br label %99

99:                                               ; preds = %93, %86
  br label %100

100:                                              ; preds = %99, %66
  %101 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %104 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %105 = call i32 @render_view(%struct.sway_output* %101, i32* %102, %struct.sway_container* %103, %struct.border_colors* %104)
  br label %115

106:                                              ; preds = %3
  %107 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %110 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %111 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @render_container(%struct.sway_output* %107, i32* %108, %struct.sway_container* %109, i64 %113)
  br label %115

115:                                              ; preds = %106, %100
  ret void
}

declare dso_local i64 @view_is_urgent(%struct.sway_view*) #1

declare dso_local i32 @render_titlebar(%struct.sway_output*, i32*, %struct.sway_container*, i32, i32, i32, %struct.border_colors*, %struct.wlr_texture*, %struct.wlr_texture*) #1

declare dso_local i32 @render_top_border(%struct.sway_output*, i32*, %struct.sway_container*, %struct.border_colors*) #1

declare dso_local i32 @render_view(%struct.sway_output*, i32*, %struct.sway_container*, %struct.border_colors*) #1

declare dso_local i32 @render_container(%struct.sway_output*, i32*, %struct.sway_container*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
