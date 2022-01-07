; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_InitAudio.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_InitAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, float, i32, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"starting audio %u/%u rate:%u delay:%d\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_S16L = common dso_local global i32 0, align 4
@AOUT_CHANS_STEREO = common dso_local global i32 0, align 4
@SAMPLERATE_TOLERANCE = common dso_local global float 0.000000e+00, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*)* @InitAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitAudio(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @msg_Dbg(%struct.TYPE_14__* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = load i32, i32* @AUDIO_ES, align 4
  %26 = load i32, i32* @VLC_CODEC_S16L, align 4
  %27 = call i32 @es_format_Init(%struct.TYPE_13__* %7, i32 %25, i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 2, i32* %33, align 4
  %34 = load i32, i32* @AOUT_CHANS_STEREO, align 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  store i32 16, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = sdiv i32 %50, 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @es_out_Add(i32 %68, %struct.TYPE_13__* %7)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %78, %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to float
  %89 = load float, float* @SAMPLERATE_TOLERANCE, align 4
  %90 = fadd float 1.000000e+00, %89
  %91 = fmul float %88, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store float %91, float* %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load float, float* %95, align 8
  %97 = call i32 @vlc_alloc(float %96, i32 8)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %2
  %115 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %115, i32* %3, align 4
  br label %118

116:                                              ; preds = %2
  %117 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @es_out_Add(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @vlc_alloc(float, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
