; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetTitleIdx.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetTitleIdx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_title = type { i32 }
%struct.vlc_player_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.vlc_player_title* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.vlc_player_title*)* @vlc_player_GetTitleIdx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlc_player_GetTitleIdx(i32* %0, %struct.vlc_player_title* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vlc_player_title*, align 8
  %6 = alloca %struct.vlc_player_input*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.vlc_player_title* %1, %struct.vlc_player_title** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %8)
  store %struct.vlc_player_input* %9, %struct.vlc_player_input** %6, align 8
  %10 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %11 = icmp ne %struct.vlc_player_input* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %14 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %21 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %19, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %28 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.vlc_player_title*, %struct.vlc_player_title** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %31, i64 %32
  %34 = load %struct.vlc_player_title*, %struct.vlc_player_title** %5, align 8
  %35 = icmp eq %struct.vlc_player_title* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %44

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %18

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42, %12, %2
  store i64 -1, i64* %3, align 8
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
