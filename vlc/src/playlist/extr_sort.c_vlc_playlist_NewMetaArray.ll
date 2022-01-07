; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_NewMetaArray.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_NewMetaArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_item_meta = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.vlc_playlist_sort_criterion = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_playlist_item_meta** (%struct.TYPE_5__*, %struct.vlc_playlist_sort_criterion*, i64)* @vlc_playlist_NewMetaArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_playlist_item_meta** @vlc_playlist_NewMetaArray(%struct.TYPE_5__* %0, %struct.vlc_playlist_sort_criterion* %1, i64 %2) #0 {
  %4 = alloca %struct.vlc_playlist_item_meta**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.vlc_playlist_sort_criterion*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vlc_playlist_item_meta**, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.vlc_playlist_sort_criterion* %1, %struct.vlc_playlist_sort_criterion** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.vlc_playlist_item_meta** @vlc_alloc(i64 %13, i32 8)
  store %struct.vlc_playlist_item_meta** %14, %struct.vlc_playlist_item_meta*** %8, align 8
  %15 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %8, align 8
  %16 = icmp ne %struct.vlc_playlist_item_meta** %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.vlc_playlist_item_meta** null, %struct.vlc_playlist_item_meta*** %4, align 8
  br label %71

22:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %55, %22
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call %struct.vlc_playlist_item_meta* @vlc_playlist_item_meta_New(i32 %37, %struct.vlc_playlist_sort_criterion* %38, i64 %39)
  %41 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %41, i64 %42
  store %struct.vlc_playlist_item_meta* %40, %struct.vlc_playlist_item_meta** %43, align 8
  %44 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %44, i64 %45
  %47 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %46, align 8
  %48 = icmp ne %struct.vlc_playlist_item_meta* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %30
  br label %58

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %23

58:                                               ; preds = %53, %23
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @vlc_playlist_DeleteMetaArray(%struct.vlc_playlist_item_meta** %66, i64 %67)
  store %struct.vlc_playlist_item_meta** null, %struct.vlc_playlist_item_meta*** %4, align 8
  br label %71

69:                                               ; preds = %58
  %70 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %8, align 8
  store %struct.vlc_playlist_item_meta** %70, %struct.vlc_playlist_item_meta*** %4, align 8
  br label %71

71:                                               ; preds = %69, %65, %21
  %72 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %4, align 8
  ret %struct.vlc_playlist_item_meta** %72
}

declare dso_local %struct.vlc_playlist_item_meta** @vlc_alloc(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vlc_playlist_item_meta* @vlc_playlist_item_meta_New(i32, %struct.vlc_playlist_sort_criterion*, i64) #1

declare dso_local i32 @vlc_playlist_DeleteMetaArray(%struct.vlc_playlist_item_meta**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
