; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_AddAssociatedMedia.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_AddAssociatedMedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_USER = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@INPUT_CONTROL_ADD_SLAVE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Audio track added\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Subtitle track added\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_AddAssociatedMedia(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vlc_player_input*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %19)
  store %struct.vlc_player_input* %20, %struct.vlc_player_input** %14, align 8
  %21 = load %struct.vlc_player_input*, %struct.vlc_player_input** %14, align 8
  %22 = icmp ne %struct.vlc_player_input* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %6
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %7, align 4
  br label %87

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %32 [
    i32 131, label %30
    i32 128, label %31
  ]

30:                                               ; preds = %28
  store i32 130, i32* %15, align 4
  br label %34

31:                                               ; preds = %28
  store i32 129, i32* %15, align 4
  br label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %7, align 4
  br label %87

34:                                               ; preds = %31, %30
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @subtitles_Filter(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %7, align 4
  br label %87

46:                                               ; preds = %40, %37, %34
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @SLAVE_PRIORITY_USER, align 4
  %50 = call %struct.TYPE_6__* @input_item_slave_New(i8* %47, i32 %48, i32 %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %16, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %54, i32* %7, align 4
  br label %87

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.vlc_player_input*, %struct.vlc_player_input** %14, align 8
  %62 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @INPUT_CONTROL_ADD_SLAVE, align 4
  %65 = call i32 @input_ControlPushHelper(i32 %63, i32 %64, %struct.TYPE_5__* %17)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* @VLC_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %7, align 4
  br label %87

71:                                               ; preds = %55
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  switch i32 %75, label %84 [
    i32 130, label %76
    i32 129, label %80
  ]

76:                                               ; preds = %74
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @vlc_gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %79 = call i32 @vlc_player_osd_Message(i32* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %84

80:                                               ; preds = %74
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @vlc_gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @vlc_player_osd_Message(i32* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %74, %80, %76
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %69, %53, %44, %32, %26
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @subtitles_Filter(i8*) #1

declare dso_local %struct.TYPE_6__* @input_item_slave_New(i8*, i32, i32) #1

declare dso_local i32 @input_ControlPushHelper(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @vlc_player_osd_Message(i32*, i8*, i32) #1

declare dso_local i32 @vlc_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
