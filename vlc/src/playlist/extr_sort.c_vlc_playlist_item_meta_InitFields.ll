; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_InitFields.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_InitFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_item_meta = type { i32 }
%struct.vlc_playlist_sort_criterion = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_playlist_item_meta*, %struct.vlc_playlist_sort_criterion*, i64)* @vlc_playlist_item_meta_InitFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_playlist_item_meta_InitFields(%struct.vlc_playlist_item_meta* %0, %struct.vlc_playlist_sort_criterion* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_playlist_item_meta*, align 8
  %6 = alloca %struct.vlc_playlist_sort_criterion*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlc_playlist_sort_criterion*, align 8
  %10 = alloca i32, align 4
  store %struct.vlc_playlist_item_meta* %0, %struct.vlc_playlist_item_meta** %5, align 8
  store %struct.vlc_playlist_sort_criterion* %1, %struct.vlc_playlist_sort_criterion** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %35, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %16, i64 %17
  store %struct.vlc_playlist_sort_criterion* %18, %struct.vlc_playlist_sort_criterion** %9, align 8
  %19 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %20 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %9, align 8
  %21 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vlc_playlist_item_meta_InitField(%struct.vlc_playlist_item_meta* %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @VLC_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %32 = call i32 @vlc_playlist_item_meta_DestroyFields(%struct.vlc_playlist_item_meta* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @vlc_playlist_item_meta_InitField(%struct.vlc_playlist_item_meta*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_playlist_item_meta_DestroyFields(%struct.vlc_playlist_item_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
