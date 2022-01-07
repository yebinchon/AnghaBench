; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleChapterEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleChapterEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i64, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, %struct.vlc_player_title* }
%struct.vlc_player_title = type { %struct.vlc_player_chapter*, i64 }
%struct.vlc_player_chapter = type { i32 }
%struct.vlc_input_event_chapter = type { i64, i32 }

@on_chapter_selection_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*, %struct.vlc_input_event_chapter*)* @vlc_player_input_HandleChapterEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_HandleChapterEvent(%struct.vlc_player_input* %0, %struct.vlc_input_event_chapter* %1) #0 {
  %3 = alloca %struct.vlc_player_input*, align 8
  %4 = alloca %struct.vlc_input_event_chapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlc_player_title*, align 8
  %7 = alloca %struct.vlc_player_chapter*, align 8
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %3, align 8
  store %struct.vlc_input_event_chapter* %1, %struct.vlc_input_event_chapter** %4, align 8
  %8 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %9 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %12 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %17 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %22 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %2
  br label %93

26:                                               ; preds = %20
  %27 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %28 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %31 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %29, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %39 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.vlc_player_title*, %struct.vlc_player_title** %41, align 8
  %43 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %44 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %42, i64 %45
  store %struct.vlc_player_title* %46, %struct.vlc_player_title** %6, align 8
  %47 = load %struct.vlc_player_title*, %struct.vlc_player_title** %6, align 8
  %48 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %26
  br label %93

52:                                               ; preds = %26
  %53 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %54 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vlc_player_title*, %struct.vlc_player_title** %6, align 8
  %57 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = icmp slt i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %64 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %67 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %69 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %72 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.vlc_player_title*, %struct.vlc_player_title** %6, align 8
  %74 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %73, i32 0, i32 0
  %75 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %74, align 8
  %76 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %77 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.vlc_player_chapter, %struct.vlc_player_chapter* %75, i64 %79
  store %struct.vlc_player_chapter* %80, %struct.vlc_player_chapter** %7, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @on_chapter_selection_changed, align 4
  %83 = load %struct.vlc_player_title*, %struct.vlc_player_title** %6, align 8
  %84 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %85 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.vlc_player_chapter*, %struct.vlc_player_chapter** %7, align 8
  %88 = load %struct.vlc_input_event_chapter*, %struct.vlc_input_event_chapter** %4, align 8
  %89 = getelementptr inbounds %struct.vlc_input_event_chapter, %struct.vlc_input_event_chapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = call i32 @vlc_player_SendEvent(i32* %81, i32 %82, %struct.vlc_player_title* %83, i64 %86, %struct.vlc_player_chapter* %87, i64 %91)
  br label %93

93:                                               ; preds = %52, %51, %25
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, %struct.vlc_player_title*, i64, %struct.vlc_player_chapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
