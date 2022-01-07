; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_Remove.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_Remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_playlist_Remove(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @vlc_playlist_AssertLocked(%struct.TYPE_8__* %9)
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @vlc_playlist_ItemsRemoving(%struct.TYPE_8__* %19, i64 %20, i64 %21)
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %38, %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vlc_playlist_item_Release(i32 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @vlc_vector_remove_slice(%struct.TYPE_9__* %43, i64 %44, i64 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @vlc_playlist_ItemsRemoved(%struct.TYPE_8__* %47, i64 %48, i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @vlc_playlist_SetCurrentMedia(%struct.TYPE_8__* %54, i32 %57)
  br label %64

59:                                               ; preds = %41
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vlc_player_InvalidateNextMedia(i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  ret void
}

declare dso_local i32 @vlc_playlist_AssertLocked(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_playlist_ItemsRemoving(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_item_Release(i32) #1

declare dso_local i32 @vlc_vector_remove_slice(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_ItemsRemoved(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_SetCurrentMedia(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vlc_player_InvalidateNextMedia(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
