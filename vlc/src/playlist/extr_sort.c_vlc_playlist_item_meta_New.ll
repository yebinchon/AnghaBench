; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_item_meta = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vlc_playlist_sort_criterion = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_playlist_item_meta* (%struct.TYPE_5__*, %struct.vlc_playlist_sort_criterion*, i64)* @vlc_playlist_item_meta_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_playlist_item_meta* @vlc_playlist_item_meta_New(%struct.TYPE_5__* %0, %struct.vlc_playlist_sort_criterion* %1, i64 %2) #0 {
  %4 = alloca %struct.vlc_playlist_item_meta*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.vlc_playlist_sort_criterion*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vlc_playlist_item_meta*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.vlc_playlist_sort_criterion* %1, %struct.vlc_playlist_sort_criterion** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call %struct.vlc_playlist_item_meta* @calloc(i32 1, i32 8)
  store %struct.vlc_playlist_item_meta* %10, %struct.vlc_playlist_item_meta** %8, align 8
  %11 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %8, align 8
  %12 = icmp ne %struct.vlc_playlist_item_meta* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.vlc_playlist_item_meta* null, %struct.vlc_playlist_item_meta** %4, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %8, align 8
  %21 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %20, i32 0, i32 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @vlc_mutex_lock(i32* %25)
  %27 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %8, align 8
  %28 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @vlc_playlist_item_meta_InitFields(%struct.vlc_playlist_item_meta* %27, %struct.vlc_playlist_sort_criterion* %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @vlc_mutex_unlock(i32* %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VLC_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %8, align 8
  %44 = call i32 @free(%struct.vlc_playlist_item_meta* %43)
  store %struct.vlc_playlist_item_meta* null, %struct.vlc_playlist_item_meta** %4, align 8
  br label %47

45:                                               ; preds = %18
  %46 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %8, align 8
  store %struct.vlc_playlist_item_meta* %46, %struct.vlc_playlist_item_meta** %4, align 8
  br label %47

47:                                               ; preds = %45, %42, %17
  %48 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %4, align 8
  ret %struct.vlc_playlist_item_meta* %48
}

declare dso_local %struct.vlc_playlist_item_meta* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_playlist_item_meta_InitFields(%struct.vlc_playlist_item_meta*, %struct.vlc_playlist_sort_criterion*, i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.vlc_playlist_item_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
