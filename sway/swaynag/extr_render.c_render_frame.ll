; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_frame.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@CAIRO_CONTENT_COLOR_ALPHA = common dso_local global i32 0, align 4
@CAIRO_OPERATOR_CLEAR = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to get buffer. Skipping frame.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_frame(%struct.swaynag* %0) #0 {
  %2 = alloca %struct.swaynag*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.swaynag* %0, %struct.swaynag** %2, align 8
  %7 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %8 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %144

12:                                               ; preds = %1
  %13 = load i32, i32* @CAIRO_CONTENT_COLOR_ALPHA, align 4
  %14 = call i32* @cairo_recording_surface_create(i32 %13, i32* null)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @cairo_create(i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @cairo_save(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @CAIRO_OPERATOR_CLEAR, align 4
  %21 = call i32 @cairo_set_operator(i32* %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @cairo_paint(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @cairo_restore(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %28 = call i32 @render_to_cairo(i32* %26, %struct.swaynag* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %31 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %12
  %35 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %36 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @zwlr_layer_surface_v1_set_size(i32 %37, i32 0, i32 %38)
  %40 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %41 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @zwlr_layer_surface_v1_set_exclusive_zone(i32 %42, i32 %43)
  %45 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %46 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wl_surface_commit(i32 %47)
  %49 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %50 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wl_display_roundtrip(i32 %51)
  br label %138

53:                                               ; preds = %12
  %54 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %55 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %58 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %61 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %64 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %68 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %71 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = call %struct.TYPE_2__* @get_next_buffer(i32 %56, i32 %59, i32 %66, i32 %73)
  %75 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %76 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %75, i32 0, i32 5
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %76, align 8
  %77 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %78 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %77, i32 0, i32 5
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %53
  %82 = load i32, i32* @SWAY_DEBUG, align 4
  %83 = call i32 @sway_log(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %139

84:                                               ; preds = %53
  %85 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %86 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %85, i32 0, i32 5
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %6, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @cairo_save(i32* %90)
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @CAIRO_OPERATOR_CLEAR, align 4
  %94 = call i32 @cairo_set_operator(i32* %92, i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @cairo_paint(i32* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @cairo_restore(i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @cairo_set_source_surface(i32* %99, i32* %100, double 0.000000e+00, double 0.000000e+00)
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @cairo_paint(i32* %102)
  %104 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %105 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %108 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @wl_surface_set_buffer_scale(i32 %106, i32 %109)
  %111 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %112 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %115 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %114, i32 0, i32 5
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @wl_surface_attach(i32 %113, i32 %118, i32 0, i32 0)
  %120 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %121 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %124 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %127 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @wl_surface_damage(i32 %122, i32 0, i32 0, i32 %125, i32 %128)
  %130 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %131 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @wl_surface_commit(i32 %132)
  %134 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %135 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @wl_display_roundtrip(i32 %136)
  br label %138

138:                                              ; preds = %84, %34
  br label %139

139:                                              ; preds = %138, %81
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @cairo_surface_destroy(i32* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @cairo_destroy(i32* %142)
  br label %144

144:                                              ; preds = %139, %11
  ret void
}

declare dso_local i32* @cairo_recording_surface_create(i32, i32*) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_save(i32*) #1

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_restore(i32*) #1

declare dso_local i32 @render_to_cairo(i32*, %struct.swaynag*) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_size(i32, i32, i32) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_exclusive_zone(i32, i32) #1

declare dso_local i32 @wl_surface_commit(i32) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local %struct.TYPE_2__* @get_next_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, double, double) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #1

declare dso_local i32 @wl_surface_attach(i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_damage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
