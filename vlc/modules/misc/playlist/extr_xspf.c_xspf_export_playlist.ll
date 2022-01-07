; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/playlist/extr_xspf.c_xspf_export_playlist.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/playlist/extr_xspf.c_xspf_export_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_export = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"<?xml version=\221.0\22 encoding=\22UTF-8\22?>\0A\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"<playlist xmlns=\22http://xspf.org/ns/0/\22 xmlns:vlc=\22http://www.videolan.org/vlc/playlist/ns/0/\22 version=\221\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09<trackList>\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\09</trackList>\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"</playlist>\0A\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xspf_export_playlist(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vlc_playlist_export*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.vlc_playlist_export*
  store %struct.vlc_playlist_export* %9, %struct.vlc_playlist_export** %3, align 8
  %10 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %11 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %15 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %19 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %23 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @vlc_playlist_view_Count(i32 %24)
  store i64 %25, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %44, %1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %32 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32* @vlc_playlist_view_Get(i32 %33, i64 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @vlc_playlist_item_GetMedia(i32* %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %40 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @xspf_export_item(i32* %38, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %26

47:                                               ; preds = %26
  %48 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %49 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %53 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %56
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @vlc_playlist_view_Count(i32) #1

declare dso_local i32* @vlc_playlist_view_Get(i32, i64) #1

declare dso_local i32* @vlc_playlist_item_GetMedia(i32*) #1

declare dso_local i32 @xspf_export_item(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
