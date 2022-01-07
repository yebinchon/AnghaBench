; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstancePause.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstancePause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @vlm_ControlMediaInstancePause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaInstancePause(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32* @vlm_ControlMediaGetById(i32* %10, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.TYPE_3__* @vlm_ControlMediaInstanceGetByName(i32* %18, i8* %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %9, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vlc_player_Lock(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vlc_player_TogglePause(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vlc_player_Unlock(i32 %36)
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %25, %23, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32* @vlm_ControlMediaGetById(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @vlm_ControlMediaInstanceGetByName(i32*, i8*) #1

declare dso_local i32 @vlc_player_Lock(i32) #1

declare dso_local i32 @vlc_player_TogglePause(i32) #1

declare dso_local i32 @vlc_player_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
