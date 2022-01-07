; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Track.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s track: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_osd_Track(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_player_track*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @vlc_es_id_GetCat(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.vlc_player_track* @vlc_player_GetTrack(i32* %13, i32* %14)
  store %struct.vlc_player_track* %15, %struct.vlc_player_track** %8, align 8
  %16 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %17 = icmp ne %struct.vlc_player_track* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %42

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @es_format_category_to_string(i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %31 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %35

33:                                               ; preds = %22
  %34 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i8* [ %32, %29 ], [ %34, %33 ]
  store i8* %36, i8** %10, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @vlc_player_osd_Message(i32* %37, i8* %38, i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @vlc_es_id_GetCat(i32*) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetTrack(i32*, i32*) #1

declare dso_local i8* @es_format_category_to_string(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @vlc_player_osd_Message(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
