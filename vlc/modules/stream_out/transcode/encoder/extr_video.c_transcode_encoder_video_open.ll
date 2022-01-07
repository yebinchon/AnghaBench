; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_encoder_video_open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_encoder_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@EncoderThread = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_encoder_video_open(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i64 %10, i64* %14, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 4
  store i32 %17, i32* %21, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @module_need(%struct.TYPE_13__* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27, i32 1)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i32* %28, i32** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %3, align 4
  br label %126

41:                                               ; preds = %2
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* @VIDEO_ES, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vlc_fourcc_GetCodec(i32 %54, i32 %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vlc_sem_init(i32* %68, i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 4
  %77 = call i32 @vlc_cond_init(i32* %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 6
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %41
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 5
  %91 = load i32, i32* @EncoderThread, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @vlc_clone(i32* %90, i32 %91, %struct.TYPE_19__* %92, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %88
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 4
  %103 = call i32 @vlc_cond_destroy(i32* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = call i32 @vlc_sem_destroy(i32* %105)
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @module_unneed(%struct.TYPE_13__* %109, i32* %114)
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  store i32* null, i32** %119, align 8
  %120 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %120, i32* %3, align 4
  br label %126

121:                                              ; preds = %88
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %41
  %125 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %100, %39
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32* @module_need(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @vlc_fourcc_GetCodec(i32, i32) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @module_unneed(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
