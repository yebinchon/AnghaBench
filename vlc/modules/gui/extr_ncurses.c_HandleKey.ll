; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandleKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@BOX_SEARCH = common dso_local global i32 0, align 4
@BOX_OPEN = common dso_local global i32 0, align 4
@BOX_NONE = common dso_local global i32 0, align 4
@BOX_BROWSE = common dso_local global i32 0, align 4
@BOX_PLAYLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleKey(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = call i32 (...) @getch()
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @vlc_playlist_GetPlayer(i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %90

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BOX_SEARCH, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BOX_OPEN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @HandleEditBoxKey(%struct.TYPE_9__* %30, i32 %31, i32 %34)
  br label %90

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BOX_NONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %54 [
    i32 131, label %42
    i32 130, label %45
    i32 128, label %48
    i32 132, label %51
  ]

42:                                               ; preds = %40
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ChangePosition(i32* %43, double 0x3FEFAE147AE147AE)
  br label %90

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ChangePosition(i32* %46, double -1.000000e+00)
  br label %90

48:                                               ; preds = %40
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ChangePosition(i32* %49, double 5.000000e-02)
  br label %90

51:                                               ; preds = %40
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @ChangePosition(i32* %52, double -5.000000e-02)
  br label %90

54:                                               ; preds = %40
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @HandleCommonKey(%struct.TYPE_9__* %55, i32* %56, i32 %57)
  br label %90

59:                                               ; preds = %36
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BOX_BROWSE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @HandleBrowseKey(%struct.TYPE_9__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %90

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @BOX_PLAYLIST, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @HandlePlaylistKey(%struct.TYPE_9__* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %90

79:                                               ; preds = %73, %69
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i64 @HandleListKey(%struct.TYPE_9__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %90

85:                                               ; preds = %79
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @HandleCommonKey(%struct.TYPE_9__* %86, i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %84, %78, %68, %54, %51, %48, %45, %42, %29, %20
  ret void
}

declare dso_local i32 @getch(...) #1

declare dso_local i32* @vlc_playlist_GetPlayer(i32) #1

declare dso_local i32 @HandleEditBoxKey(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ChangePosition(i32*, double) #1

declare dso_local i32 @HandleCommonKey(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @HandleBrowseKey(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @HandlePlaylistKey(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @HandleListKey(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
