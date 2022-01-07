; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemsRemoved.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemsRemoved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.vlc_playlist_state = type { i32 }

@on_items_removed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64)* @vlc_playlist_ItemsRemoved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_playlist_ItemsRemoved(%struct.TYPE_10__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vlc_playlist_state, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i32 @vlc_playlist_state_Save(%struct.TYPE_10__* %10, %struct.vlc_playlist_state* %7)
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %64

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %26, %27
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %47

44:                                               ; preds = %30
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  store i32 1, i32* %8, align 4
  br label %63

48:                                               ; preds = %24, %16
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %50, %51
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = sub i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  br label %62

62:                                               ; preds = %54, %48
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_10__* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = load i32, i32* @on_items_removed, align 4
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @vlc_playlist_Notify(%struct.TYPE_10__* %73, i32 %74, i64 %75, i64 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_10__* %78, %struct.vlc_playlist_state* %7)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_10__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_10__*, i32, i64, i64) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_10__*, %struct.vlc_playlist_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
