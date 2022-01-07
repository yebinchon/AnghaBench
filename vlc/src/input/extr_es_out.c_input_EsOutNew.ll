; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_input_EsOutNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_input_EsOutNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, float, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@es_out_cbs = common dso_local global i32 0, align 4
@ES_OUT_MODE_NONE = common dso_local global i32 0, align 4
@ES_OUT_ES_POLICY_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"video-track-id\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"video-track\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"audio-track-id\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"audio-track\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"audio-language\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"sub-track-id\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sub-track\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"sub-language\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"clock-master\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @input_EsOutNew(i32* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  %8 = call %struct.TYPE_6__* @calloc(i32 1, i32 88)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %81

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32* @es_out_cbs, i32** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 17
  %18 = call i32 @vlc_mutex_init(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 16
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* @ES_OUT_MODE_NONE, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 15
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 14
  %29 = call i32 @vlc_list_init(i32* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 13
  %32 = call i32 @vlc_list_init(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 12
  %35 = call i32 @vlc_list_init(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 11
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @ES_OUT_ES_POLICY_EXCLUSIVE, align 4
  %40 = call i32 @EsOutPropsInit(i32* %37, i32 1, i32* %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* null, i8* null)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 10
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @ES_OUT_ES_POLICY_EXCLUSIVE, align 4
  %45 = call i32 @EsOutPropsInit(i32* %42, i32 1, i32* %43, i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 9
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @ES_OUT_ES_POLICY_EXCLUSIVE, align 4
  %50 = call i32 @EsOutPropsInit(i32* %47, i32 0, i32* %48, i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @var_GetInteger(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @var_InheritInteger(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %63 [
    i32 129, label %58
    i32 128, label %62
  ]

58:                                               ; preds = %12
  %59 = load i32, i32* @AUDIO_ES, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  br label %67

62:                                               ; preds = %12
  br label %63

63:                                               ; preds = %12, %62
  %64 = load i32, i32* @UNKNOWN_ES, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = load float, float* %5, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store float %70, float* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i32 -1, i32* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  store i32 -1, i32* %78, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %3, align 8
  br label %81

81:                                               ; preds = %67, %11
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %82
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_list_init(i32*) #1

declare dso_local i32 @EsOutPropsInit(i32*, i32, i32*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
