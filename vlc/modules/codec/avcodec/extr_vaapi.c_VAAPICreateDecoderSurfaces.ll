; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_vaapi.c_VAAPICreateDecoderSurfaces.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_vaapi.c_VAAPICreateDecoderSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }

@VAGenericValueTypeInteger = common dso_local global i32 0, align 4
@VA_SURFACE_ATTRIB_SETTABLE = common dso_local global i32 0, align 4
@VASurfaceAttribPixelFormat = common dso_local global i32 0, align 4
@vaCreateSurfaces = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_17__*, i64)* @VAAPICreateDecoderSurfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VAAPICreateDecoderSurfaces(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_17__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.TYPE_18__], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @VLC_UNUSED(i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %10, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vlc_chroma_to_vaapi(i32 %21, i32* %11, i32* %12)
  %23 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %13, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %29 = load i32, i32* @VAGenericValueTypeInteger, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %31 = load i32, i32* @VA_SURFACE_ATTRIB_SETTABLE, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %33 = load i32, i32* @VASurfaceAttribPixelFormat, align 4
  store i32 %33, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = call i32 @VLC_OBJECT(%struct.TYPE_15__* %34)
  %36 = load i32, i32* @vaCreateSurfaces, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %13, i64 0, i64 0
  %53 = call i32 @VA_CALL(i32 %35, i32 %36, i32 %40, i32 %41, i32 %44, i32 %47, i32 %50, i64 %51, %struct.TYPE_18__* %52, i32 1)
  %54 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; No predecessors!
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %4
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @vlc_chroma_to_vaapi(i32, i32*, i32*) #1

declare dso_local i32 @VA_CALL(i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
