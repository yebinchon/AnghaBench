; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceSetTimePosition.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceSetTimePosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*, i64, double)* @vlm_ControlMediaInstanceSetTimePosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaInstanceSetTimePosition(i32* %0, i64 %1, i8* %2, i64 %3, double %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store double %4, double* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32* @vlm_ControlMediaGetById(i32* %14, i64 %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %6, align 4
  br label %62

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
  br label %62

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vlc_player_Lock(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @VLC_TICK_FROM_US(i64 %40)
  %42 = call i32 @vlc_player_SetTime(i32 %39, i32 %41)
  br label %56

43:                                               ; preds = %29
  %44 = load double, double* %11, align 8
  %45 = fcmp oge double %44, 0.000000e+00
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load double, double* %11, align 8
  %48 = fcmp ole double %47, 1.000000e+02
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load double, double* %11, align 8
  %54 = call i32 @vlc_player_SetPosition(i32 %52, double %53)
  br label %55

55:                                               ; preds = %49, %46, %43
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @vlc_player_Unlock(i32 %59)
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %56, %27, %19
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32* @vlm_ControlMediaGetById(i32*, i64) #1

declare dso_local %struct.TYPE_3__* @vlm_ControlMediaInstanceGetByName(i32*, i8*) #1

declare dso_local i32 @vlc_player_Lock(i32) #1

declare dso_local i32 @vlc_player_SetTime(i32, i32) #1

declare dso_local i32 @VLC_TICK_FROM_US(i64) #1

declare dso_local i32 @vlc_player_SetPosition(i32, double) #1

declare dso_local i32 @vlc_player_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
