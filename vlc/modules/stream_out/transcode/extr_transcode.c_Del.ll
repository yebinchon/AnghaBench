; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_transcode.c_Del.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_transcode.c_Del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@UNKNOWN_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i8*)* @Del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Del(%struct.TYPE_18__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %6, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %96

17:                                               ; preds = %2
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = icmp ne %struct.TYPE_16__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @UNKNOWN_ES, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i32 [ %28, %22 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %94 [
    i32 130, label %34
    i32 128, label %60
    i32 129, label %86
  ]

34:                                               ; preds = %31
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = call i32 @Send(%struct.TYPE_18__* %35, %struct.TYPE_20__* %36, i32* null)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = call i32 @decoder_Destroy(%struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = call i32 @vlc_mutex_lock(i32* %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = icmp eq %struct.TYPE_20__* %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %52, align 8
  br label %53

53:                                               ; preds = %50, %34
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = call i32 @vlc_mutex_unlock(i32* %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = call i32 @transcode_audio_clean(%struct.TYPE_18__* %57, %struct.TYPE_20__* %58)
  br label %95

60:                                               ; preds = %31
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = call i32 @Send(%struct.TYPE_18__* %61, %struct.TYPE_20__* %62, i32* null)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = call i32 @decoder_Destroy(%struct.TYPE_16__* %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = call i32 @vlc_mutex_lock(i32* %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = icmp eq %struct.TYPE_20__* %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %78, align 8
  br label %79

79:                                               ; preds = %76, %60
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = call i32 @vlc_mutex_unlock(i32* %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = call i32 @transcode_video_clean(%struct.TYPE_18__* %83, %struct.TYPE_20__* %84)
  br label %95

86:                                               ; preds = %31
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = call i32 @decoder_Destroy(%struct.TYPE_16__* %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %93 = call i32 @transcode_spu_clean(%struct.TYPE_18__* %91, %struct.TYPE_20__* %92)
  br label %95

94:                                               ; preds = %31
  br label %95

95:                                               ; preds = %94, %86, %79, %53
  br label %101

96:                                               ; preds = %2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = call i32 @decoder_Destroy(%struct.TYPE_16__* %99)
  br label %101

101:                                              ; preds = %96, %95
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @sout_StreamIdDel(i32 %109, i64 %112)
  br label %114

114:                                              ; preds = %106, %101
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = call i32 @DeleteSoutStreamID(%struct.TYPE_20__* %115)
  ret void
}

declare dso_local i32 @Send(%struct.TYPE_18__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @decoder_Destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @transcode_audio_clean(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @transcode_video_clean(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @transcode_spu_clean(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @sout_StreamIdDel(i32, i64) #1

declare dso_local i32 @DeleteSoutStreamID(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
