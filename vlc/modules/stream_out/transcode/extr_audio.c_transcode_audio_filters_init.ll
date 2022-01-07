; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_audio.c_transcode_audio_filters_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_audio.c_transcode_audio_filters_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"audio-time-stretch\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"audio-filter\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32*, i32**)* @transcode_audio_filters_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transcode_audio_filters_init(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @VLC_VAR_BOOL, align 4
  %13 = call i32 @var_Create(i32* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @VLC_VAR_STRING, align 4
  %16 = call i32 @var_Create(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @var_SetString(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %21, %5
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @aout_FiltersNew(i32* %28, i32* %29, i32* %30, i32* null)
  %32 = load i32**, i32*** %10, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @var_Destroy(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @var_Destroy(i32* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load i32**, i32*** %10, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @VLC_SUCCESS, align 4
  br label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_SetString(i32*, i8*, i64) #1

declare dso_local i32* @aout_FiltersNew(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @var_Destroy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
