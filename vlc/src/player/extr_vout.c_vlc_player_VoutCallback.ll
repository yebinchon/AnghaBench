; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_vout.c_vlc_player_VoutCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_vout.c_vlc_player_VoutCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@on_fullscreen_changed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"video-wallpaper\00", align 1
@on_wallpaper_mode_changed = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i8*)* @vlc_player_VoutCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_player_VoutCallback(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 %3, i64* %13, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @on_fullscreen_changed, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @vlc_player_vout_SendEvent(i32* %26, i32 %27, i32* %28, i64 %30)
  br label %32

32:                                               ; preds = %25, %19
  br label %54

33:                                               ; preds = %5
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @on_wallpaper_mode_changed, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @vlc_player_vout_SendEvent(i32* %44, i32 %45, i32* %46, i64 %48)
  br label %50

50:                                               ; preds = %43, %37
  br label %53

51:                                               ; preds = %33
  %52 = call i32 (...) @vlc_assert_unreachable()
  br label %53

53:                                               ; preds = %51, %50
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_player_vout_SendEvent(i32*, i32, i32*, i64) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
