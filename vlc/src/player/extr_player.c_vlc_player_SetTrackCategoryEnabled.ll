; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetTrackCategoryEnabled.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetTrackCategoryEnabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vlc_player_input = type { i32* }

@UNKNOWN_ES = common dso_local global i32 0, align 4
@DATA_ES = common dso_local global i32 0, align 4
@cat2vars = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_SetTrackCategoryEnabled(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_player_input*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @UNKNOWN_ES, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DATA_ES, align 4
  %14 = icmp ule i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %19)
  store %struct.vlc_player_input* %20, %struct.vlc_player_input** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cat2vars, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @var_SetBool(i32* %21, i32 %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cat2vars, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @var_SetBool(i32* %30, i32 %36, i32 %37)
  %39 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %40 = icmp ne %struct.vlc_player_input* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %15
  %42 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %43 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cat2vars, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @var_SetBool(i32* %44, i32 %50, i32 %51)
  %53 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %54 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cat2vars, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @var_SetBool(i32* %55, i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %41
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @vlc_player_UnselectTrackCategory(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %41
  br label %71

71:                                               ; preds = %70, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @var_SetBool(i32*, i32, i32) #1

declare dso_local i32 @vlc_player_UnselectTrackCategory(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
