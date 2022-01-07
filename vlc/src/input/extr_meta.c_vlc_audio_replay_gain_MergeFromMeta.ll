; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_meta.c_vlc_audio_replay_gain_MergeFromMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_meta.c_vlc_audio_replay_gain_MergeFromMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i8**, i8** }

@.str = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_TRACK_GAIN\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RG_RADIO\00", align 1
@AUDIO_REPLAY_GAIN_TRACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_TRACK_PEAK\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"RG_PEAK\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_ALBUM_GAIN\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"RG_AUDIOPHILE\00", align 1
@AUDIO_REPLAY_GAIN_ALBUM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_ALBUM_PEAK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_audio_replay_gain_MergeFromMeta(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %89

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @vlc_meta_GetExtra(i32* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @vlc_meta_GetExtra(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %13, %9
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 1, i32* %22, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @us_atof(i8* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* %24, i8** %29, align 8
  br label %30

30:                                               ; preds = %17, %13
  %31 = load i32*, i32** %4, align 8
  %32 = call i8* @vlc_meta_GetExtra(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @vlc_meta_GetExtra(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %36, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %34, %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 1, i32* %43, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @us_atof(i8* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8* %45, i8** %50, align 8
  br label %51

51:                                               ; preds = %38, %34
  %52 = load i32*, i32** %4, align 8
  %53 = call i8* @vlc_meta_GetExtra(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i8* %53, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = call i8* @vlc_meta_GetExtra(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %57, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %55, %51
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 1, i32* %64, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @us_atof(i8* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  store i8* %66, i8** %71, align 8
  br label %72

72:                                               ; preds = %59, %55
  %73 = load i32*, i32** %4, align 8
  %74 = call i8* @vlc_meta_GetExtra(i32* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i8* %74, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 1, i32* %81, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = call i8* @us_atof(i8* %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  store i8* %83, i8** %88, align 8
  br label %89

89:                                               ; preds = %8, %76, %72
  ret void
}

declare dso_local i8* @vlc_meta_GetExtra(i32*, i8*) #1

declare dso_local i8* @us_atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
