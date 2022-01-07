; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_vc1.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_vc1.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { float, i32, i64, i32* }
%struct.TYPE_10__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vc-1 module discarded (no startcode)\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"this doesn't look like a VC-1 ES stream, continuing anyway\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"vc1-fps\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_VC1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"VC-1\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vlc_stream_Peek(i32 %12, i32** %6, i32 4)
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %2, align 4
  br label %102

17:                                               ; preds = %1
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 15
  br i1 %36, label %37, label %50

37:                                               ; preds = %32, %27, %22, %17
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = call i32 @msg_Warn(%struct.TYPE_11__* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %2, align 4
  br label %102

47:                                               ; preds = %37
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @msg_Err(%struct.TYPE_11__* %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %32
  %51 = call %struct.TYPE_12__* @malloc(i32 24)
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %5, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = icmp eq %struct.TYPE_12__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %58, i32* %2, align 4
  br label %102

59:                                               ; preds = %50
  %60 = load i32, i32* @Demux, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @Control, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = call float @var_CreateGetFloat(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store float %74, float* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load float, float* %78, align 8
  %80 = fcmp olt float %79, 0x3F50624DE0000000
  br i1 %80, label %81, label %84

81:                                               ; preds = %59
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store float 0.000000e+00, float* %83, align 8
  br label %84

84:                                               ; preds = %81, %59
  %85 = load i32, i32* @VIDEO_ES, align 4
  %86 = load i32, i32* @VLC_CODEC_VC1, align 4
  %87 = call i32 @es_format_Init(i32* %7, i32 %85, i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = call i32 @demux_PacketizerNew(%struct.TYPE_11__* %88, i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = call i32 @free(%struct.TYPE_12__* %97)
  %99 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %99, i32* %2, align 4
  br label %102

100:                                              ; preds = %84
  %101 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %96, %57, %43, %15
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local float @var_CreateGetFloat(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

declare dso_local i32 @demux_PacketizerNew(%struct.TYPE_11__*, i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
