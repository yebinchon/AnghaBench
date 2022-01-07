; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_amem.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_amem.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i8*, i32*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"amem-data\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"amem-setup\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"amem-cleanup\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"amem-rate\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"amem-channels\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"amem-play\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"amem-pause\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"amem-resume\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"amem-flush\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"amem-drain\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"amem-set-volume\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@Start = common dso_local global i32 0, align 4
@Stop = common dso_local global i32 0, align 4
@aout_TimeGetDefault = common dso_local global i32 0, align 4
@Play = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@Drain = common dso_local global i32* null, align 8
@VolumeSet = common dso_local global i32 0, align 4
@MuteSet = common dso_local global i32 0, align 4
@SoftVolumeSet = common dso_local global i32 0, align 4
@SoftMuteSet = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = call %struct.TYPE_6__* @malloc(i32 120)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %149

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @var_InheritAddress(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @var_InheritAddress(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 15
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 15
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @var_InheritAddress(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 13
  store i32* %32, i32** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 14
  store i8* %35, i8** %37, align 8
  br label %52

38:                                               ; preds = %17
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 13
  store i32* null, i32** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 12
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i8* @var_InheritInteger(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 11
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i8* @var_InheritInteger(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 10
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %38, %29
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @var_InheritAddress(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  store i32* %55, i32** %57, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i8* @var_InheritAddress(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 9
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i8* @var_InheritAddress(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i8* @var_InheritAddress(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i8* @var_InheritAddress(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i8* @var_InheritAddress(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 6
  %87 = call i32 @vlc_mutex_init(i32* %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %52
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = call i32 @free(%struct.TYPE_6__* %93)
  %95 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %95, i32* %2, align 4
  br label %149

96:                                               ; preds = %52
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 9
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load i32, i32* @Start, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @Stop, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @aout_TimeGetDefault, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @Play, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @Pause, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @Flush, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %96
  %123 = load i32*, i32** @Drain, align 8
  br label %125

124:                                              ; preds = %96
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32* [ %123, %122 ], [ null, %124 ]
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32* %126, i32** %128, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = load i32, i32* @VolumeSet, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @MuteSet, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %147

140:                                              ; preds = %125
  %141 = load i32, i32* @SoftVolumeSet, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @SoftMuteSet, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %140, %133
  %148 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %92, %15
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @var_InheritAddress(i32*, i8*) #1

declare dso_local i8* @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
