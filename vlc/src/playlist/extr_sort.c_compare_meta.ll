; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_compare_meta.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_compare_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_request = type { i64, %struct.vlc_playlist_sort_criterion* }
%struct.vlc_playlist_sort_criterion = type { i64, i32 }
%struct.vlc_playlist_item_meta = type { i32 }

@VLC_PLAYLIST_SORT_ORDER_DESCENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @compare_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_meta(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sort_request*, align 8
  %9 = alloca %struct.vlc_playlist_item_meta*, align 8
  %10 = alloca %struct.vlc_playlist_item_meta*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vlc_playlist_sort_criterion*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.sort_request*
  store %struct.sort_request* %15, %struct.sort_request** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.vlc_playlist_item_meta**
  %18 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %17, align 8
  store %struct.vlc_playlist_item_meta* %18, %struct.vlc_playlist_item_meta** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.vlc_playlist_item_meta**
  %21 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %20, align 8
  store %struct.vlc_playlist_item_meta* %21, %struct.vlc_playlist_item_meta** %10, align 8
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %56, %3
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.sort_request*, %struct.sort_request** %8, align 8
  %25 = getelementptr inbounds %struct.sort_request, %struct.sort_request* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = load %struct.sort_request*, %struct.sort_request** %8, align 8
  %30 = getelementptr inbounds %struct.sort_request, %struct.sort_request* %29, i32 0, i32 1
  %31 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %31, i64 %32
  store %struct.vlc_playlist_sort_criterion* %33, %struct.vlc_playlist_sort_criterion** %12, align 8
  %34 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %9, align 8
  %35 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %10, align 8
  %36 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %12, align 8
  %37 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @CompareMetaByKey(%struct.vlc_playlist_item_meta* %34, %struct.vlc_playlist_item_meta* %35, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %28
  %43 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %12, align 8
  %44 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VLC_PLAYLIST_SORT_ORDER_DESCENDING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 -1, i32 1
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %28
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %22

59:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %53, %48
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @CompareMetaByKey(%struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
