; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_gestures.c_player_on_vout_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_gestures.c_player_on_vout_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32** }

@VIDEO_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mouse-moved\00", align 1
@MovedEvent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"mouse-button-down\00", align 1
@ButtonEvent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i8*)* @player_on_vout_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_vout_changed(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @VLC_UNUSED(i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @VLC_UNUSED(i32 %20)
  %22 = load i8*, i8** %12, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %13, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %14, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i64 @vlc_es_id_GetCat(i32* %27)
  %29 = load i64, i64* @VIDEO_ES, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  br label %93

32:                                               ; preds = %6
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %91 [
    i32 129, label %34
    i32 128, label %52
  ]

34:                                               ; preds = %32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @vlc_vector_push(%struct.TYPE_9__* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @vout_Hold(i32* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @MovedEvent, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %46 = call i32 @var_AddCallback(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %44, %struct.TYPE_7__* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @ButtonEvent, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = call i32 @var_AddCallback(i32* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %48, %struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %40, %34
  br label %93

52:                                               ; preds = %32
  store i64 0, i64* %15, align 8
  br label %53

53:                                               ; preds = %87, %52
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %53
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = icmp eq i32* %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %60
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @vlc_vector_remove(%struct.TYPE_9__* %73, i64 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @MovedEvent, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %79 = call i32 @var_DelCallback(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %77, %struct.TYPE_7__* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* @ButtonEvent, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %83 = call i32 @var_DelCallback(i32* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %81, %struct.TYPE_7__* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @vout_Release(i32* %84)
  br label %90

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %15, align 8
  br label %53

90:                                               ; preds = %71, %53
  br label %93

91:                                               ; preds = %32
  %92 = call i32 (...) @vlc_assert_unreachable()
  br label %93

93:                                               ; preds = %31, %91, %90, %51
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i64 @vlc_es_id_GetCat(i32*) #1

declare dso_local i32 @vlc_vector_push(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @vout_Hold(i32*) #1

declare dso_local i32 @var_AddCallback(i32*, i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @vlc_vector_remove(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @var_DelCallback(i32*, i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
