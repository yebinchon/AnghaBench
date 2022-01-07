; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/playlist/extr_html.c_Export_HTML.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/playlist/extr_html.c_Export_HTML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_export = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"saving using HTML format\00", align 1
@.str.1 = private unnamed_addr constant [748 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22 ?>\0A<!DOCTYPE html PUBLIC \22-//W3C//DTD XHTML 1.1//EN\22 \22http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\22>\0A<html xmlns=\22http://www.w3.org/1999/xhtml\22 xml:lang=\22en\22>\0A<head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html; charset=utf-8\22 />\0A  <meta name=\22Generator\22 content=\22VLC media player\22 />\0A  <meta name=\22Author\22 content=\22VLC, http://www.videolan.org/vlc/\22 />\0A  <title>VLC generated playlist</title>\0A  <style type=\22text/css\22>\0A    body {\0A      background-color: #E4F3FF;\0A      font-family: sans-serif, Helvetica, Arial;\0A      font-size: 13px;\0A    }\0A    h1 {\0A      color: #2D58AE;\0A      font-size: 25px;\0A    }\0A    hr {\0A      color: #555555;\0A    }\0A  </style>\0A</head>\0A\0A<body>\0A  <h1>Playlist</h1>\0A  <hr />\0A  <ol>\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"  </ol>\0A  <hr />\0A</body>\0A</html>\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Export_HTML(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vlc_playlist_export*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.vlc_playlist_export*
  store %struct.vlc_playlist_export* %5, %struct.vlc_playlist_export** %3, align 8
  %6 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %7 = call i32 @msg_Dbg(%struct.vlc_playlist_export* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %9 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([748 x i8], [748 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %13 = call i32 @DoExport(%struct.vlc_playlist_export* %12)
  %14 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %3, align 8
  %15 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %18
}

declare dso_local i32 @msg_Dbg(%struct.vlc_playlist_export*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @DoExport(%struct.vlc_playlist_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
