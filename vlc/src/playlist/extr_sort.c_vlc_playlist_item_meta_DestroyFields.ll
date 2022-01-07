; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_DestroyFields.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_item_meta_DestroyFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_item_meta = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_playlist_item_meta*)* @vlc_playlist_item_meta_DestroyFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_item_meta_DestroyFields(%struct.vlc_playlist_item_meta* %0) #0 {
  %2 = alloca %struct.vlc_playlist_item_meta*, align 8
  store %struct.vlc_playlist_item_meta* %0, %struct.vlc_playlist_item_meta** %2, align 8
  %3 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %2, align 8
  %4 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = call i32 @free(i8* %6)
  %8 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %2, align 8
  %9 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @free(i8* %11)
  %13 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %2, align 8
  %14 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @free(i8* %16)
  %18 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %2, align 8
  %19 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @free(i8* %21)
  %23 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %2, align 8
  %24 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @free(i8* %26)
  %28 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %2, align 8
  %29 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @free(i8* %31)
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
