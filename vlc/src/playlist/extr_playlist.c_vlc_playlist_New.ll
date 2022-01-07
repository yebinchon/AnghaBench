; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_playlist.c_vlc_playlist_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_playlist.c_vlc_playlist_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32 }

@VLC_PLAYLIST_PLAYBACK_REPEAT_NONE = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"auto-preparse\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @vlc_playlist_New(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call %struct.TYPE_6__* @malloc(i32 56)
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @vlc_playlist_PlayerInit(%struct.TYPE_6__* %15, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32 @free(%struct.TYPE_6__* %25)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %62

27:                                               ; preds = %14
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 10
  %30 = call i32 @vlc_vector_init(i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 9
  %33 = call i32 @randomizer_Init(i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 8
  %42 = call i32 @vlc_list_init(i32* %41)
  %43 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_NONE, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @assert(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32* @vlc_object_instance(i32* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  store i32* %54, i32** %56, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @var_InheritBool(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %2, align 8
  br label %62

62:                                               ; preds = %27, %24, %13
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %63
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_playlist_PlayerInit(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @vlc_vector_init(i32*) #1

declare dso_local i32 @randomizer_Init(i32*) #1

declare dso_local i32 @vlc_list_init(i32*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @vlc_object_instance(i32*) #1

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
