; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_AoutCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_AoutCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@on_volume_changed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@on_mute_changed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@on_device_changed = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, i8*)* @vlc_player_AoutCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_player_AoutCallback(i32* %0, i8* %1, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %2, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %4, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @on_volume_changed, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @vlc_player_aout_SendEvent(i32* %24, i32 %25, i32* %26, i64 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @vlc_player_osd_Volume(i32* %30, i32 0)
  br label %32

32:                                               ; preds = %23, %17
  br label %89

33:                                               ; preds = %5
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @on_mute_changed, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @vlc_player_aout_SendEvent(i32* %44, i32 %45, i32* %46, i64 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @vlc_player_osd_Volume(i32* %50, i32 1)
  br label %52

52:                                               ; preds = %43, %37
  br label %88

53:                                               ; preds = %33
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %57
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @strcmp(i8* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71, %68, %65
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* @on_device_changed, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = call i32 @vlc_player_aout_SendEvent(i32* %77, i32 %78, i32* %79, i64 %82)
  br label %84

84:                                               ; preds = %76, %71, %57
  br label %87

85:                                               ; preds = %53
  %86 = call i32 (...) @vlc_assert_unreachable()
  br label %87

87:                                               ; preds = %85, %84
  br label %88

88:                                               ; preds = %87, %52
  br label %89

89:                                               ; preds = %88, %32
  %90 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %90
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_player_aout_SendEvent(i32*, i32, i32*, i64) #1

declare dso_local i32 @vlc_player_osd_Volume(i32*, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
