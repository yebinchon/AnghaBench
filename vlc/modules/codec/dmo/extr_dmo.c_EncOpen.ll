; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/dmo/extr_dmo.c_EncOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/dmo/extr_dmo.c_EncOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__, %struct.TYPE_20__, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__*, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (i32*)*, i64 (%struct.TYPE_25__*, i32, i32*, i32*)*, i64 (%struct.TYPE_25__*, i32, i32*, i32*, i32*)* }

@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GetInputSizeInfo() failed\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"GetInputSizeInfo(): bytes %i, align %i, %i\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GetOutputSizeInfo() failed\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"GetOutputSizeInfo(): bytes %i, align %i\00", align 1
@AUDIO_ES = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @EncOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncOpen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  store i32* null, i32** %7, align 8
  %15 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %16 = call i32 @CoInitializeEx(i32* null, i32 %15)
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @vlc_assert_unreachable()
  br label %21

21:                                               ; preds = %19, %1
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = call i64 @LoadDMO(i32* %22, i32** %7, %struct.TYPE_25__** %6, %struct.TYPE_19__* %24, i32 1)
  %26 = load i64, i64* @VLC_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32* null, i32** %7, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  br label %134

29:                                               ; preds = %21
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VIDEO_ES, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %39 = call i64 @EncoderSetVideoType(%struct.TYPE_23__* %37, %struct.TYPE_25__* %38)
  %40 = load i64, i64* @VLC_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %134

43:                                               ; preds = %36
  br label %52

44:                                               ; preds = %29
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = call i64 @EncoderSetAudioType(%struct.TYPE_23__* %45, %struct.TYPE_25__* %46)
  %48 = load i64, i64* @VLC_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %134

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %43
  %53 = call %struct.TYPE_24__* @malloc(i32 24)
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %5, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %55, align 8
  %56 = icmp eq %struct.TYPE_24__* %53, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %134

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 2
  store %struct.TYPE_25__* %62, %struct.TYPE_25__** %64, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load i64 (%struct.TYPE_25__*, i32, i32*, i32*, i32*)*, i64 (%struct.TYPE_25__*, i32, i32*, i32*, i32*)** %68, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = call i64 %69(%struct.TYPE_25__* %70, i32 0, i32* %8, i32* %9, i32* %10)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = call i32 @msg_Err(%struct.TYPE_23__* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %82

76:                                               ; preds = %58
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (%struct.TYPE_23__*, i8*, i32, i32, ...) @msg_Dbg(%struct.TYPE_23__* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load i64 (%struct.TYPE_25__*, i32, i32*, i32*)*, i64 (%struct.TYPE_25__*, i32, i32*, i32*)** %88, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = call i64 %89(%struct.TYPE_25__* %90, i32 0, i32* %11, i32* %12)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = call i32 @msg_Err(%struct.TYPE_23__* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %134

96:                                               ; preds = %82
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 (%struct.TYPE_23__*, i8*, i32, i32, ...) @msg_Dbg(%struct.TYPE_23__* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AUDIO_ES, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %104
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @date_Init(i32* %120, i32 %125, i32 1)
  br label %131

127:                                              ; preds = %104
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = call i32 @date_Init(i32* %129, i32 25, i32 1)
  br label %131

131:                                              ; preds = %127, %118
  %132 = load i64, i64* @VLC_SUCCESS, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %2, align 4
  br label %157

134:                                              ; preds = %93, %57, %50, %42, %28
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %136 = icmp ne %struct.TYPE_25__* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32 (i32*)*, i32 (i32*)** %141, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %144 = bitcast %struct.TYPE_25__* %143 to i32*
  %145 = call i32 %142(i32* %144)
  br label %146

146:                                              ; preds = %137, %134
  %147 = load i32*, i32** %7, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @FreeLibrary(i32* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = call i32 (...) @CoUninitialize()
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %155 = call i32 @free(%struct.TYPE_24__* %154)
  %156 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %152, %131
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @LoadDMO(i32*, i32**, %struct.TYPE_25__**, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @EncoderSetVideoType(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i64 @EncoderSetAudioType(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @malloc(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_23__*, i8*, i32, i32, ...) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @FreeLibrary(i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
