; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_Expand.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_Expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_playlist_Expand(%struct.TYPE_11__* %0, i64 %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = call i32 @vlc_playlist_AssertLocked(%struct.TYPE_11__* %11)
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @vlc_playlist_RemoveOne(%struct.TYPE_11__* %24, i64 %25)
  br label %104

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32**, i32*** %8, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @vlc_playlist_Replace(%struct.TYPE_11__* %28, i64 %29, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @VLC_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %106

39:                                               ; preds = %27
  %40 = load i64, i64* %9, align 8
  %41 = icmp ugt i64 %40, 1
  br i1 %41, label %42, label %86

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %47, 1
  %49 = call i32 @vlc_vector_insert_hole(%struct.TYPE_12__* %44, i64 %46, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %52, i32* %5, align 4
  br label %106

53:                                               ; preds = %42
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = load i32**, i32*** %8, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @vlc_playlist_MediaToItems(%struct.TYPE_11__* %54, i32** %56, i64 %58, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %53
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, 1
  %77 = call i32 @vlc_vector_remove_slice(%struct.TYPE_12__* %72, i64 %74, i64 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %106

79:                                               ; preds = %53
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, 1
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %83, 1
  %85 = call i32 @vlc_playlist_ItemsInserted(%struct.TYPE_11__* %80, i64 %82, i64 %84)
  br label %86

86:                                               ; preds = %79, %39
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @vlc_playlist_SetCurrentMedia(%struct.TYPE_11__* %93, i64 %96)
  br label %103

98:                                               ; preds = %86
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @vlc_player_InvalidateNextMedia(i32 %101)
  br label %103

103:                                              ; preds = %98, %92
  br label %104

104:                                              ; preds = %103, %23
  %105 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %70, %51, %37
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @vlc_playlist_AssertLocked(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_playlist_RemoveOne(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @vlc_playlist_Replace(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @vlc_vector_insert_hole(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_MediaToItems(%struct.TYPE_11__*, i32**, i64, i32*) #1

declare dso_local i32 @vlc_vector_remove_slice(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_ItemsInserted(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @vlc_playlist_SetCurrentMedia(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @vlc_player_InvalidateNextMedia(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
