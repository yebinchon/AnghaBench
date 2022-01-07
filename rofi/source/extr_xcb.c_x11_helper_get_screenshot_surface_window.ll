; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_helper_get_screenshot_surface_window.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_helper_get_screenshot_surface_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, double, double, i32 }

@xcb = common dso_local global %struct.TYPE_8__* null, align 8
@XCB_MAP_STATE_VIEWABLE = common dso_local global i64 0, align 8
@CAIRO_STATUS_SUCCESS = common dso_local global i64 0, align 8
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @x11_helper_get_screenshot_surface_window(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @xcb_get_geometry(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.TYPE_7__* @xcb_get_geometry_reply(i32 %23, i32 %24, i32* null)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = icmp eq %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %140

29:                                               ; preds = %2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @xcb_get_window_attributes(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.TYPE_7__* @xcb_get_window_attributes_reply(i32 %37, i32 %38, i32* null)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = icmp eq %struct.TYPE_7__* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %29
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @XCB_MAP_STATE_VIEWABLE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42, %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = call i32 @free(%struct.TYPE_7__* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = call i32 @free(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %53, %48
  store i32* null, i32** %3, align 8
  br label %140

57:                                               ; preds = %42
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @lookup_visual(i32 %60, i32 %63)
  store i32* %64, i32** %10, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = call i32 @free(%struct.TYPE_7__* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load double, double* %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = call i32* @cairo_xcb_surface_create(i32 %69, i32 %70, i32* %71, double %74, double %77)
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i64 @cairo_surface_status(i32* %79)
  %81 = load i64, i64* @CAIRO_STATUS_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %57
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @cairo_surface_destroy(i32* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = call i32 @free(%struct.TYPE_7__* %86)
  store i32* null, i32** %3, align 8
  br label %140

88:                                               ; preds = %57
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load double, double* %93, align 8
  %95 = call i32 @MAX(double %91, double %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sitofp i32 %96 to double
  %98 = load i32, i32* %12, align 4
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %97, %99
  store double %100, double* %13, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load double, double* %104, align 8
  %106 = load double, double* %13, align 8
  %107 = fmul double %105, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load double, double* %109, align 8
  %111 = load double, double* %13, align 8
  %112 = fmul double %110, %111
  %113 = call i32* @cairo_surface_create_similar_image(i32* %101, i32 %102, double %107, double %112)
  store i32* %113, i32** %14, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = call i32 @free(%struct.TYPE_7__* %114)
  %116 = load i32*, i32** %14, align 8
  %117 = call i64 @cairo_surface_status(i32* %116)
  %118 = load i64, i64* @CAIRO_STATUS_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %88
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @cairo_surface_destroy(i32* %121)
  store i32* null, i32** %3, align 8
  br label %140

123:                                              ; preds = %88
  %124 = load i32*, i32** %14, align 8
  %125 = call i32* @cairo_create(i32* %124)
  store i32* %125, i32** %15, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = load double, double* %13, align 8
  %128 = load double, double* %13, align 8
  %129 = call i32 @cairo_scale(i32* %126, double %127, double %128)
  %130 = load i32*, i32** %15, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @cairo_set_source_surface(i32* %130, i32* %131, i32 0, i32 0)
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @cairo_paint(i32* %133)
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @cairo_destroy(i32* %135)
  %137 = load i32*, i32** %11, align 8
  %138 = call i32 @cairo_surface_destroy(i32* %137)
  %139 = load i32*, i32** %14, align 8
  store i32* %139, i32** %3, align 8
  br label %140

140:                                              ; preds = %123, %120, %83, %56, %28
  %141 = load i32*, i32** %3, align 8
  ret i32* %141
}

declare dso_local i32 @xcb_get_geometry(i32, i32) #1

declare dso_local %struct.TYPE_7__* @xcb_get_geometry_reply(i32, i32, i32*) #1

declare dso_local i32 @xcb_get_window_attributes(i32, i32) #1

declare dso_local %struct.TYPE_7__* @xcb_get_window_attributes_reply(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32* @lookup_visual(i32, i32) #1

declare dso_local i32* @cairo_xcb_surface_create(i32, i32, i32*, double, double) #1

declare dso_local i64 @cairo_surface_status(i32*) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @MAX(double, double) #1

declare dso_local i32* @cairo_surface_create_similar_image(i32*, i32, double, double) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_scale(i32*, double, double) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, i32, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
