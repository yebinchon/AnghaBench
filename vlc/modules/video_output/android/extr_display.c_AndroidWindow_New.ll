; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_AndroidWindow_New.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_AndroidWindow_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32 }

@VLC_CODEC_ANDROID_OPAQUE = common dso_local global i64 0, align 8
@AWindow_Video = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't get Video Surface\00", align 1
@AWindow_Subtitles = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't get Subtitles Surface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @AndroidWindow_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @AndroidWindow_New(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %13 = call %struct.TYPE_14__* @calloc(i32 1, i32 24)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %91

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VLC_CODEC_ANDROID_OPAQUE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %17
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ChromaToAndroidHal(i64 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %91

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %59 [
    i32 128, label %50
    i32 130, label %53
    i32 129, label %56
  ]

50:                                               ; preds = %46
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  store i32 90, i32* %52, align 4
  br label %62

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  store i32 180, i32* %55, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  store i32 270, i32* %58, align 4
  br label %62

59:                                               ; preds = %46
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56, %53, %50
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = call i32 @video_format_ApplyRotation(i32* %64, %struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  store i32 1, i32* %68, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = call i64 @AndroidWindow_ConnectSurface(i32* %69, %struct.TYPE_14__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @AWindow_Video, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = call i32 @msg_Err(%struct.TYPE_12__* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %88

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @AWindow_Subtitles, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = call i32 @msg_Err(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %77
  br label %91

89:                                               ; preds = %62
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %4, align 8
  br label %94

91:                                               ; preds = %88, %44, %16
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = call i32 @free(%struct.TYPE_14__* %92)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %94

94:                                               ; preds = %91, %89
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %95
}

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i32 @ChromaToAndroidHal(i64) #1

declare dso_local i32 @video_format_ApplyRotation(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @AndroidWindow_ConnectSurface(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
