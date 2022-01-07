; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetCurrentMedia.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetCurrentMedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32*, i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_SetCurrentMedia(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = call i32 @vlc_player_assert_locked(%struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @vlc_player_CancelWaitError(%struct.TYPE_9__* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call i32 @vlc_player_InvalidateNextMedia(%struct.TYPE_9__* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @input_item_Hold(i32* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %34, i32* %3, align 4
  br label %65

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @vlc_player_destructor_AddInput(%struct.TYPE_9__* %42, i32* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = call i32 @vlc_player_destructor_IsEmpty(%struct.TYPE_9__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %49
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = call i32 @vlc_player_OpenNextMedia(%struct.TYPE_9__* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %60, %33
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @vlc_player_assert_locked(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_player_CancelWaitError(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_player_InvalidateNextMedia(%struct.TYPE_9__*) #1

declare dso_local i32* @input_item_Hold(i32*) #1

declare dso_local i32 @vlc_player_destructor_AddInput(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_destructor_IsEmpty(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_player_OpenNextMedia(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
