; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_svg_RenderPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_svg_RenderPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"error while rendering SVG: %s\00", align 1
@VLC_CODEC_BGRA = common dso_local global i32 0, align 4
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error while creating cairo surface\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error while rendering SVG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, i8*)* @svg_RenderPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @svg_RenderPicture(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32* @rsvg_handle_new_from_data(i32* %15, i32 %17, %struct.TYPE_18__** %7)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i8*, ...) @msg_Err(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %142

27:                                               ; preds = %2
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @rsvg_handle_get_dimensions(i32* %28, %struct.TYPE_17__* %8)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %33 = call i32 @svg_RescaletoFit(i32* %30, i32* %31, i32* %32, float* %9)
  %34 = load i32, i32* @VLC_CODEC_BGRA, align 4
  %35 = call i32 @video_format_Init(%struct.TYPE_15__* %10, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 32, i32* %36, align 4
  %37 = load i32, i32* @VLC_CODEC_BGRA, align 4
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = call %struct.TYPE_16__* @picture_NewFromFormat(%struct.TYPE_15__* %10)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %11, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %27
  %51 = call i32 @video_format_Clean(%struct.TYPE_15__* %10)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @G_OBJECT(i32* %52)
  %54 = call i32 @g_object_unref(i32 %53)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %142

55:                                               ; preds = %27
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %67, %73
  %75 = call i32 @memset(i32 %61, i32 0, i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @cairo_image_surface_create_for_data(i32 %80, i32 %81, i32 %83, i32 %85, i32 %91)
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %55
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @G_OBJECT(i32* %96)
  %98 = call i32 @g_object_unref(i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %100 = call i32 @picture_Release(%struct.TYPE_16__* %99)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %142

101:                                              ; preds = %55
  %102 = load i32*, i32** %12, align 8
  %103 = call i32* @cairo_create(i32* %102)
  store i32* %103, i32** %13, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 (i32*, i8*, ...) @msg_Err(i32* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @cairo_surface_destroy(i32* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @G_OBJECT(i32* %111)
  %113 = call i32 @g_object_unref(i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %115 = call i32 @picture_Release(%struct.TYPE_16__* %114)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %142

116:                                              ; preds = %101
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @rsvg_handle_render_cairo(i32* %117, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %116
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 (i32*, i8*, ...) @msg_Err(i32* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @cairo_destroy(i32* %124)
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @cairo_surface_destroy(i32* %126)
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @G_OBJECT(i32* %128)
  %130 = call i32 @g_object_unref(i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %132 = call i32 @picture_Release(%struct.TYPE_16__* %131)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %142

133:                                              ; preds = %116
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @cairo_destroy(i32* %134)
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @cairo_surface_destroy(i32* %136)
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @G_OBJECT(i32* %138)
  %140 = call i32 @g_object_unref(i32 %139)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %141, %struct.TYPE_16__** %3, align 8
  br label %142

142:                                              ; preds = %133, %121, %106, %95, %50, %21
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %143
}

declare dso_local i32* @rsvg_handle_new_from_data(i32*, i32, %struct.TYPE_18__**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @rsvg_handle_get_dimensions(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @svg_RescaletoFit(i32*, i32*, i32*, float*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @picture_NewFromFormat(%struct.TYPE_15__*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_15__*) #1

declare dso_local i32 @g_object_unref(i32) #1

declare dso_local i32 @G_OBJECT(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32* @cairo_image_surface_create_for_data(i32, i32, i32, i32, i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_16__*) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @rsvg_handle_render_cairo(i32*, i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
