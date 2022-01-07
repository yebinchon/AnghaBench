; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_picture_CreateFromPNG.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_picture_CreateFromPNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.vlc_logger* }
%struct.vlc_logger = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_PNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32*, i64)* @picture_CreateFromPNG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @picture_CreateFromPNG(%struct.TYPE_17__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vlc_logger*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %79

18:                                               ; preds = %3
  %19 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %20 = call i32 @video_format_Init(i32* %8, i32 %19)
  %21 = load i32, i32* @VIDEO_ES, align 4
  %22 = load i32, i32* @VLC_CODEC_PNG, align 4
  %23 = call i32 @es_format_Init(%struct.TYPE_16__* %9, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.TYPE_18__* @block_Alloc(i64 %28)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %10, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %79

33:                                               ; preds = %18
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @memcpy(i32 %36, i32* %37, i64 %38)
  store i32* null, i32** %11, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.vlc_logger*, %struct.vlc_logger** %42, align 8
  store %struct.vlc_logger* %43, %struct.vlc_logger** %12, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  store %struct.vlc_logger* null, %struct.vlc_logger** %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = call i32* @image_HandlerCreate(%struct.TYPE_17__* %54)
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %33
  %59 = load i32*, i32** %14, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = call i32* @image_Read(i32* %59, %struct.TYPE_18__* %60, %struct.TYPE_16__* %9, i32* %8)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @image_HandlerDelete(i32* %62)
  br label %67

64:                                               ; preds = %33
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = call i32 @block_Release(%struct.TYPE_18__* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.vlc_logger*, %struct.vlc_logger** %12, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  store %struct.vlc_logger* %72, %struct.vlc_logger** %75, align 8
  %76 = call i32 @es_format_Clean(%struct.TYPE_16__* %9)
  %77 = call i32 @video_format_Clean(i32* %8)
  %78 = load i32*, i32** %11, align 8
  store i32* %78, i32** %4, align 8
  br label %79

79:                                               ; preds = %67, %32, %17
  %80 = load i32*, i32** %4, align 8
  ret i32* %80
}

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32* @image_HandlerCreate(%struct.TYPE_17__*) #1

declare dso_local i32* @image_Read(i32*, %struct.TYPE_18__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_16__*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
