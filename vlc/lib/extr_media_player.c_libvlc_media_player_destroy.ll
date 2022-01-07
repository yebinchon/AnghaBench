; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"snapshot-file\00", align 1
@snapshot_was_taken = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"http-cookies\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @libvlc_media_player_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libvlc_media_player_destroy(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = call i32 @vlc_object_instance(%struct.TYPE_9__* %7)
  %9 = load i32, i32* @snapshot_was_taken, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call i32 @var_DelCallback(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vlc_player_Lock(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vlc_player_aout_RemoveListener(i32 %18, i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vlc_player_RemoveListener(i32 %25, i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vlc_player_Unlock(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vlc_player_Delete(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @media_detach_preparsed_event(i64 %45)
  br label %47

47:                                               ; preds = %42, %1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = call i32 @libvlc_event_manager_destroy(i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @libvlc_media_release(i64 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = call i32* @var_GetAddress(%struct.TYPE_9__* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %56, i32** %3, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = call i32 @var_Destroy(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @vlc_http_cookies_destroy(i32* %62)
  br label %64

64:                                               ; preds = %59, %47
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %4, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = call i32 @vlc_object_delete(%struct.TYPE_9__* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @libvlc_release(i32* %70)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @var_DelCallback(i32, i8*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_player_Lock(i32) #1

declare dso_local i32 @vlc_player_aout_RemoveListener(i32, i32) #1

declare dso_local i32 @vlc_player_RemoveListener(i32, i32) #1

declare dso_local i32 @vlc_player_Unlock(i32) #1

declare dso_local i32 @vlc_player_Delete(i32) #1

declare dso_local i32 @media_detach_preparsed_event(i64) #1

declare dso_local i32 @libvlc_event_manager_destroy(i32*) #1

declare dso_local i32 @libvlc_media_release(i64) #1

declare dso_local i32* @var_GetAddress(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @var_Destroy(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vlc_http_cookies_destroy(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_9__*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
