; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_shuffle.c_vlc_playlist_Shuffle.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_shuffle.c_vlc_playlist_Shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32** }
%struct.vlc_playlist_state = type { i32 }

@on_items_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_playlist_Shuffle(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [3 x i16], align 2
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vlc_playlist_state, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = call i32 @vlc_playlist_AssertLocked(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %120

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %26, i64 %30
  %32 = load i32*, i32** %31, align 8
  br label %34

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %22
  %35 = phi i32* [ %32, %22 ], [ null, %33 ]
  store i32* %35, i32** %3, align 8
  %36 = getelementptr inbounds [3 x i16], [3 x i16]* %4, i64 0, i64 0
  %37 = call i32 @vlc_rand_bytes(i16* %36, i32 6)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %80, %34
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %44
  %48 = getelementptr inbounds [3 x i16], [3 x i16]* %4, i64 0, i64 0
  %49 = call i64 @nrand48(i16* %48)
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  %52 = urem i64 %49, %51
  store i64 %52, i64* %6, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %7, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  store i32* %66, i32** %72, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* %73, i32** %79, align 8
  br label %80

80:                                               ; preds = %47
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %5, align 8
  br label %44

83:                                               ; preds = %44
  %84 = load i32*, i32** %3, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = call i32 @vlc_playlist_state_Save(%struct.TYPE_12__* %87, %struct.vlc_playlist_state* %8)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @vlc_playlist_IndexOf(%struct.TYPE_12__* %89, i32* %90)
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_12__* %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_12__* %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %86, %83
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = load i32, i32* @on_items_reset, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @vlc_playlist_Notify(%struct.TYPE_12__* %104, i32 %105, i32** %109, i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %119 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_12__* %118, %struct.vlc_playlist_state* %8)
  br label %120

120:                                              ; preds = %16, %117, %103
  ret void
}

declare dso_local i32 @vlc_playlist_AssertLocked(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_rand_bytes(i16*, i32) #1

declare dso_local i64 @nrand48(i16*) #1

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_12__*, %struct.vlc_playlist_state*) #1

declare dso_local i64 @vlc_playlist_IndexOf(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_12__*, i32, i32**, i32) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_12__*, %struct.vlc_playlist_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
