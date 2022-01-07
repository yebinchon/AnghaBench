; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_chapter_selection_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_chapter_selection_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_title = type { i32 }
%struct.vlc_player_chapter = type { i32 }
%struct.ctx = type { i32 }
%struct.report_chapter_selection = type { i64, i64 }

@on_chapter_selection_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.vlc_player_title*, i64, %struct.vlc_player_chapter*, i64, i8*)* @player_on_chapter_selection_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_chapter_selection_changed(i32* %0, %struct.vlc_player_title* %1, i64 %2, %struct.vlc_player_chapter* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vlc_player_title*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vlc_player_chapter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ctx*, align 8
  %14 = alloca %struct.report_chapter_selection, align 8
  store i32* %0, i32** %7, align 8
  store %struct.vlc_player_title* %1, %struct.vlc_player_title** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.vlc_player_chapter* %3, %struct.vlc_player_chapter** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = call %struct.ctx* @get_ctx(i32* %15, i8* %16)
  store %struct.ctx* %17, %struct.ctx** %13, align 8
  %18 = getelementptr inbounds %struct.report_chapter_selection, %struct.report_chapter_selection* %14, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.report_chapter_selection, %struct.report_chapter_selection* %14, i32 0, i32 1
  %21 = load i64, i64* %11, align 8
  store i64 %21, i64* %20, align 8
  %22 = load i32, i32* @on_chapter_selection_changed, align 4
  %23 = bitcast %struct.report_chapter_selection* %14 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @VEC_PUSH(i32 %22, i64 %25, i64 %27)
  %29 = load %struct.vlc_player_title*, %struct.vlc_player_title** %8, align 8
  %30 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %10, align 8
  ret void
}

declare dso_local %struct.ctx* @get_ctx(i32*, i8*) #1

declare dso_local i32 @VEC_PUSH(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
