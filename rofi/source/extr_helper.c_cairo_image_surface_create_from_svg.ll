; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_cairo_image_surface_create_from_svg.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_cairo_image_surface_create_from_svg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { double, i64 }

@config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@CAIRO_STATUS_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to render file: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to render SVG file: '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cairo_image_surface_create_from_svg(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @rsvg_handle_new_from_file(i32* %12, %struct.TYPE_9__** %5)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @G_LIKELY(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %2
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 0), align 4
  %22 = call i32 @rsvg_handle_set_dpi(i32* %20, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @rsvg_handle_get_dimensions(i32* %23, %struct.TYPE_8__* %8)
  %25 = load i32, i32* %4, align 4
  %26 = sitofp i32 %25 to double
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fdiv double %26, %28
  store double %29, double* %9, align 8
  %30 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sitofp i64 %32 to double
  %34 = load double, double* %9, align 8
  %35 = fmul double %33, %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load double, double* %9, align 8
  %39 = fmul double %37, %38
  %40 = call i32* @cairo_image_surface_create(i32 %30, double %35, double %39)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @cairo_surface_status(i32* %41)
  %43 = load i64, i64* @CAIRO_STATUS_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @FALSE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @G_LIKELY(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %19
  %54 = load i32*, i32** %6, align 8
  %55 = call i32* @cairo_create(i32* %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load double, double* %9, align 8
  %58 = load double, double* %9, align 8
  %59 = call i32 @cairo_scale(i32* %56, double %57, double %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i64 @rsvg_handle_render_cairo(i32* %60, i32* %61)
  %63 = load i64, i64* @FALSE, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @cairo_destroy(i32* %67)
  br label %69

69:                                               ; preds = %53, %19
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @rsvg_handle_close(i32* %70, %struct.TYPE_9__** %5)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @g_object_unref(i32* %72)
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @G_UNLIKELY(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 (i8*, i32*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @cairo_surface_destroy(i32* %80)
  store i32* null, i32** %6, align 8
  br label %82

82:                                               ; preds = %77, %69
  br label %83

83:                                               ; preds = %82, %2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  %86 = zext i1 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = call i64 @G_UNLIKELY(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %91, i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = call i32 @g_error_free(%struct.TYPE_9__* %96)
  br label %98

98:                                               ; preds = %90, %83
  %99 = load i32*, i32** %6, align 8
  ret i32* %99
}

declare dso_local i32* @rsvg_handle_new_from_file(i32*, %struct.TYPE_9__**) #1

declare dso_local i64 @G_LIKELY(i32) #1

declare dso_local i32 @rsvg_handle_set_dpi(i32*, i32) #1

declare dso_local i32 @rsvg_handle_get_dimensions(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @cairo_image_surface_create(i32, double, double) #1

declare dso_local i64 @cairo_surface_status(i32*) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_scale(i32*, double, double) #1

declare dso_local i64 @rsvg_handle_render_cairo(i32*, i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @rsvg_handle_close(i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i64 @G_UNLIKELY(i64) #1

declare dso_local i32 @g_warning(i8*, i32*, ...) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @g_error_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
