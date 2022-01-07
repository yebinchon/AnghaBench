; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_track_priv_Update.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_track_priv_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track_priv = type { %struct.vlc_player_track }
%struct.vlc_player_track = type { i8*, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_track_priv_Update(%struct.vlc_player_track_priv* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_player_track_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vlc_player_track*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vlc_player_track_priv* %0, %struct.vlc_player_track_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %5, align 8
  %13 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %12, i32 0, i32 0
  store %struct.vlc_player_track* %13, %struct.vlc_player_track** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %16 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %14, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  br label %51

27:                                               ; preds = %20
  %28 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %29 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %34 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %27, %3
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @es_format_Copy(i32* %10, i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @VLC_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %35
  %44 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %45 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %44, i32 0, i32 1
  %46 = call i32 @es_format_Clean(i32* %45)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %49 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %41, %25
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @es_format_Copy(i32*, i32*) #1

declare dso_local i32 @es_format_Clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
