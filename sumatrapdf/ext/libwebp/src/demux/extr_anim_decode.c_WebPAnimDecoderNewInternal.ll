; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/demux/extr_anim_decode.c_WebPAnimDecoderNewInternal.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/demux/extr_anim_decode.c_WebPAnimDecoderNewInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, i32*, i32* }
%struct.TYPE_7__ = type { i64, i32, i8*, i8*, i8* }

@WEBP_DEMUX_ABI_VERSION = common dso_local global i32 0, align 4
@WEBP_FF_CANVAS_WIDTH = common dso_local global i32 0, align 4
@WEBP_FF_CANVAS_HEIGHT = common dso_local global i32 0, align 4
@WEBP_FF_LOOP_COUNT = common dso_local global i32 0, align 4
@WEBP_FF_BACKGROUND_COLOR = common dso_local global i32 0, align 4
@WEBP_FF_FRAME_COUNT = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @WebPAnimDecoderNewInternal(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @WEBP_DEMUX_ABI_VERSION, align 4
  %15 = call i64 @WEBP_ABI_IS_INCOMPATIBLE(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %136

18:                                               ; preds = %12
  %19 = call i64 @WebPSafeCalloc(i64 1, i32 64)
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %133

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %32

30:                                               ; preds = %24
  %31 = call i32 @DefaultDecoderOptions(i32* %8)
  br label %32

32:                                               ; preds = %30, %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = call i32 @ApplyDecoderOptions(i32* %8, %struct.TYPE_8__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %133

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = call i32* @WebPDemux(i32* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %133

47:                                               ; preds = %37
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @WEBP_FF_CANVAS_WIDTH, align 4
  %52 = call i8* @WebPDemuxGetI(i32* %50, i32 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @WEBP_FF_CANVAS_HEIGHT, align 4
  %61 = call i8* @WebPDemuxGetI(i32* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @WEBP_FF_LOOP_COUNT, align 4
  %70 = call i8* @WebPDemuxGetI(i32* %68, i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  store i8* %70, i8** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @WEBP_FF_BACKGROUND_COLOR, align 4
  %78 = call i8* @WebPDemuxGetI(i32* %76, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store i8* %78, i8** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @WEBP_FF_FRAME_COUNT, align 4
  %86 = call i8* @WebPDemuxGetI(i32* %84, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NUM_CHANNELS, align 8
  %95 = mul i64 %93, %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @WebPSafeCalloc(i64 %95, i32 %99)
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %47
  br label %133

109:                                              ; preds = %47
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NUM_CHANNELS, align 8
  %115 = mul i64 %113, %114
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @WebPSafeCalloc(i64 %115, i32 %119)
  %121 = inttoptr i64 %120 to i32*
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %109
  br label %133

129:                                              ; preds = %109
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = call i32 @WebPAnimDecoderReset(%struct.TYPE_8__* %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %4, align 8
  br label %136

133:                                              ; preds = %128, %108, %46, %36, %23
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = call i32 @WebPAnimDecoderDelete(%struct.TYPE_8__* %134)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %136

136:                                              ; preds = %133, %129, %17
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %137
}

declare dso_local i64 @WEBP_ABI_IS_INCOMPATIBLE(i32, i32) #1

declare dso_local i64 @WebPSafeCalloc(i64, i32) #1

declare dso_local i32 @DefaultDecoderOptions(i32*) #1

declare dso_local i32 @ApplyDecoderOptions(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @WebPDemux(i32*) #1

declare dso_local i8* @WebPDemuxGetI(i32*, i32) #1

declare dso_local i32 @WebPAnimDecoderReset(%struct.TYPE_8__*) #1

declare dso_local i32 @WebPAnimDecoderDelete(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
