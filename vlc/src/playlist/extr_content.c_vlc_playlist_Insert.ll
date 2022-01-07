; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_Insert.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_Insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_playlist_Insert(%struct.TYPE_8__* %0, i64 %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = call i32 @vlc_playlist_AssertLocked(%struct.TYPE_8__* %11)
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ule i64 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @vlc_vector_insert_hole(%struct.TYPE_9__* %22, i64 %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %28, i32* %5, align 4
  br label %60

29:                                               ; preds = %4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = load i32**, i32*** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @vlc_playlist_MediaToItems(%struct.TYPE_8__* %30, i32** %31, i64 %32, i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @VLC_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @vlc_vector_remove_slice(%struct.TYPE_9__* %45, i64 %46, i64 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %60

50:                                               ; preds = %29
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @vlc_playlist_ItemsInserted(%struct.TYPE_8__* %51, i64 %52, i64 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vlc_player_InvalidateNextMedia(i32 %57)
  %59 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %50, %43, %27
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @vlc_playlist_AssertLocked(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_vector_insert_hole(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_MediaToItems(%struct.TYPE_8__*, i32**, i64, i32*) #1

declare dso_local i32 @vlc_vector_remove_slice(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_ItemsInserted(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @vlc_player_InvalidateNextMedia(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
