; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@VLC_META_TYPE_COUNT = common dso_local global i32 0, align 4
@C_CATEGORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"  [%s]\00", align 1
@C_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"      %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @DrawMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawMeta(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @vlc_playlist_GetPlayer(i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @vlc_player_Lock(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.TYPE_10__* @vlc_player_HoldCurrentMedia(i32* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @vlc_player_Unlock(i32* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @vlc_mutex_lock(i32* %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %75, %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @VLC_META_TYPE_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @vlc_meta_Get(i32 %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %34
  br label %75

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @C_CATEGORY, align 4
  %54 = call i32 @color_set(i32 %53, i32* null)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @vlc_meta_TypeToLocalizedString(i32 %59)
  %61 = call i32 @MainBoxWrite(%struct.TYPE_9__* %56, i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @C_DEFAULT, align 4
  %68 = call i32 @color_set(i32 %67, i32* null)
  br label %69

69:                                               ; preds = %66, %55
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @MainBoxWrite(%struct.TYPE_9__* %70, i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %69, %46
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %30

78:                                               ; preds = %30
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = call i32 @vlc_mutex_unlock(i32* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = call i32 @input_item_Release(%struct.TYPE_10__* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %25
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32* @vlc_playlist_GetPlayer(i32) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local %struct.TYPE_10__* @vlc_player_HoldCurrentMedia(i32*) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i8* @vlc_meta_Get(i32, i32) #1

declare dso_local i32 @color_set(i32, i32*) #1

declare dso_local i32 @MainBoxWrite(%struct.TYPE_9__*, i32, i8*, i8*) #1

declare dso_local i8* @vlc_meta_TypeToLocalizedString(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @input_item_Release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
