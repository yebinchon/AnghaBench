; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceGetTimePosition.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceGetTimePosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*, double*)* @vlm_ControlMediaInstanceGetTimePosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaInstanceGetTimePosition(i32* %0, i32 %1, i8* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store double* %4, double** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32* @vlm_ControlMediaGetById(i32* %14, i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %6, align 4
  br label %58

21:                                               ; preds = %5
  %22 = load i32*, i32** %12, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call %struct.TYPE_3__* @vlm_ControlMediaInstanceGetByName(i32* %22, i8* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %13, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %6, align 4
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vlc_player_Lock(i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vlc_player_GetTime(i32 %39)
  %41 = call i32 @US_FROM_VLC_TICK(i32 %40)
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load double*, double** %11, align 8
  %45 = icmp ne double* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call double @vlc_player_GetPosition(i32 %49)
  %51 = load double*, double** %11, align 8
  store double %50, double* %51, align 8
  br label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vlc_player_Unlock(i32 %55)
  %57 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %27, %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32* @vlm_ControlMediaGetById(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @vlm_ControlMediaInstanceGetByName(i32*, i8*) #1

declare dso_local i32 @vlc_player_Lock(i32) #1

declare dso_local i32 @US_FROM_VLC_TICK(i32) #1

declare dso_local i32 @vlc_player_GetTime(i32) #1

declare dso_local double @vlc_player_GetPosition(i32) #1

declare dso_local i32 @vlc_player_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
