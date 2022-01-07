; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_set_format.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@False = common dso_local global i32 0, align 4
@g_swapaudio = common dso_local global i32 0, align 4
@AL_SAMPLE_8 = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@AL_SAMPLE_16 = common dso_local global i32 0, align 4
@g_snd_rate = common dso_local global i32 0, align 4
@audioconfig = common dso_local global i32 0, align 4
@AL_SAMPFMT_TWOSCOMP = common dso_local global i32 0, align 4
@output_port = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"rdpsnd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"wave_out_set_format: alOpenPort failed: %s\0A\00", align 1
@resource = common dso_local global i32 0, align 4
@maxFillable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"wave_out_set_format: bad frameSize or channelCount\0A\00", align 1
@combinedFrameSize = common dso_local global i32 0, align 4
@AL_RATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"wave_set_format: alSetParams failed: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"wave_set_format: invalid rate %d\0A\00", align 1
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wave_out_set_format(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load i32, i32* @False, align 4
  store i32 %8, i32* @g_swapaudio, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @AL_SAMPLE_8, align 4
  store i32 %14, i32* @width, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @AL_SAMPLE_16, align 4
  store i32 %21, i32* @width, align 4
  store i32 0, i32* @g_swapaudio, align 4
  br label %22

22:                                               ; preds = %20, %15
  br label %23

23:                                               ; preds = %22, %13
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @g_snd_rate, align 4
  %30 = load i32, i32* @audioconfig, align 4
  %31 = load i32, i32* @AL_SAMPFMT_TWOSCOMP, align 4
  %32 = call i32 @alSetSampFmt(i32 %30, i32 %31)
  %33 = load i32, i32* @audioconfig, align 4
  %34 = load i32, i32* @width, align 4
  %35 = call i32 @alSetWidth(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @audioconfig, align 4
  %38 = call i32 @alGetChannels(i32 %37)
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %23
  %41 = load i64, i64* @output_port, align 8
  %42 = call i32 @alClosePort(i64 %41)
  %43 = load i32, i32* @audioconfig, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @alSetChannels(i32 %43, i32 %44)
  %46 = load i32, i32* @audioconfig, align 4
  %47 = call i64 @alOpenPort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i64 %47, i64* @output_port, align 8
  %48 = load i64, i64* @output_port, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (...) @oserror()
  %53 = call i8* @alGetErrorString(i32 %52)
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @False, align 4
  store i32 %55, i32* %2, align 4
  br label %106

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i64, i64* @output_port, align 8
  %59 = call i32 @alGetResource(i64 %58)
  store i32 %59, i32* @resource, align 4
  %60 = load i64, i64* @output_port, align 8
  %61 = call i32 @alGetFillable(i64 %60)
  store i32 %61, i32* @maxFillable, align 4
  %62 = load i32, i32* @audioconfig, align 4
  %63 = call i32 @alGetChannels(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @audioconfig, align 4
  %65 = call i32 @alGetWidth(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %57
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @False, align 4
  store i32 %74, i32* %2, align 4
  br label %106

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* @combinedFrameSize, align 4
  %79 = load i32, i32* @AL_RATE, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @g_snd_rate, align 4
  %82 = sext i32 %81 to i64
  %83 = shl i64 %82, 32
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @resource, align 4
  %87 = call i64 @alSetParams(i32 %86, %struct.TYPE_8__* %7, i32 1)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %75
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (...) @oserror()
  %92 = call i8* @alGetErrorString(i32 %91)
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @False, align 4
  store i32 %94, i32* %2, align 4
  br label %106

95:                                               ; preds = %75
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* @g_snd_rate, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @False, align 4
  store i32 %103, i32* %2, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @True, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %99, %89, %71, %50
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @alSetSampFmt(i32, i32) #1

declare dso_local i32 @alSetWidth(i32, i32) #1

declare dso_local i32 @alGetChannels(i32) #1

declare dso_local i32 @alClosePort(i64) #1

declare dso_local i32 @alSetChannels(i32, i32) #1

declare dso_local i64 @alOpenPort(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @alGetErrorString(i32) #1

declare dso_local i32 @oserror(...) #1

declare dso_local i32 @alGetResource(i64) #1

declare dso_local i32 @alGetFillable(i64) #1

declare dso_local i32 @alGetWidth(i32) #1

declare dso_local i64 @alSetParams(i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
