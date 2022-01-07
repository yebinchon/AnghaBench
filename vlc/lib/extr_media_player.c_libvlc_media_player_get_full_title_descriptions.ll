; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_get_full_title_descriptions.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_get_full_title_descriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32, i32 }
%struct.vlc_player_title = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_player_get_full_title_descriptions(%struct.TYPE_10__* %0, %struct.TYPE_9__*** %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vlc_player_title*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__*** %1, %struct.TYPE_9__**** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @assert(%struct.TYPE_10__* %13)
  store i32 -1, i32* %5, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @vlc_player_Lock(i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @vlc_player_GetTitleList(i32* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %90

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @vlc_player_title_list_GetCount(i32* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.TYPE_9__** @vlc_alloc(i64 %28, i32 8)
  store %struct.TYPE_9__** %29, %struct.TYPE_9__*** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %34 = icmp ne %struct.TYPE_9__** %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %90

36:                                               ; preds = %32, %25
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %82, %36
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call %struct.vlc_player_title* @vlc_player_title_list_GetAt(i32* %42, i64 %43)
  store %struct.vlc_player_title* %44, %struct.vlc_player_title** %11, align 8
  %45 = call %struct.TYPE_9__* @malloc(i32 16)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %12, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @libvlc_title_descriptions_release(%struct.TYPE_9__** %49, i64 %50)
  br label %90

52:                                               ; preds = %41
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %54, i64 %55
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %56, align 8
  %57 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %58 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MS_FROM_VLC_TICK(i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %64 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %69 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %52
  %73 = load %struct.vlc_player_title*, %struct.vlc_player_title** %11, align 8
  %74 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32* @strdup(i64 %75)
  br label %78

77:                                               ; preds = %52
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i32* [ %76, %72 ], [ null, %77 ]
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  br label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  br label %37

85:                                               ; preds = %37
  %86 = load i64, i64* %8, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %89 = load %struct.TYPE_9__***, %struct.TYPE_9__**** %4, align 8
  store %struct.TYPE_9__** %88, %struct.TYPE_9__*** %89, align 8
  br label %90

90:                                               ; preds = %85, %48, %35, %24
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @vlc_player_Unlock(i32* %91)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32* @vlc_player_GetTitleList(i32*) #1

declare dso_local i64 @vlc_player_title_list_GetCount(i32*) #1

declare dso_local %struct.TYPE_9__** @vlc_alloc(i64, i32) #1

declare dso_local %struct.vlc_player_title* @vlc_player_title_list_GetAt(i32*, i64) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @libvlc_title_descriptions_release(%struct.TYPE_9__**, i64) #1

declare dso_local i32 @MS_FROM_VLC_TICK(i32) #1

declare dso_local i32* @strdup(i64) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
