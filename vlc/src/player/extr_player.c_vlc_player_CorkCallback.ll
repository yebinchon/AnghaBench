; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_CorkCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_CorkCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_PLAYING = common dso_local global i64 0, align 8
@VLC_PLAYER_STATE_STARTED = common dso_local global i64 0, align 8
@on_cork_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i8*)* @vlc_player_CorkCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_player_CorkCallback(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %3, i64* %14, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %23, i32* %6, align 4
  br label %82

24:                                               ; preds = %5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = call i32 @vlc_player_Lock(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VLC_PLAYER_STATE_PLAYING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VLC_PLAYER_STATE_STARTED, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ true, %35 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = call i32 @vlc_player_Pause(%struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %56, %47
  br label %71

60:                                               ; preds = %31
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %67 = call i32 @vlc_player_Resume(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %59
  br label %78

72:                                               ; preds = %24
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = load i32, i32* @on_cork_changed, align 4
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @vlc_player_SendEvent(%struct.TYPE_11__* %73, i32 %74, i64 %76)
  br label %78

78:                                               ; preds = %72, %71
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = call i32 @vlc_player_Unlock(%struct.TYPE_11__* %79)
  %81 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %22
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @vlc_player_Lock(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_player_Pause(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_player_Resume(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_player_SendEvent(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @vlc_player_Unlock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
