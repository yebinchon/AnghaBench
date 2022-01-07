; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_ChangeRateOffset.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_ChangeRateOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vlc_player_ChangeRateOffset.rates = internal constant [17 x float] [float 1.562500e-02, float 3.125000e-02, float 6.250000e-02, float 1.250000e-01, float 2.500000e-01, float 0x3FD5555560000000, float 5.000000e-01, float 0x3FE5555560000000, float 1.000000e+00, float 1.500000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01, float 3.200000e+01, float 6.400000e+01], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @vlc_player_ChangeRateOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_ChangeRateOffset(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call float @vlc_player_GetRate(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, float 0x3FF19999A0000000, float 0x3FECCCCCC0000000
  %13 = fmul float %8, %12
  store float %13, float* %5, align 4
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %54, %2
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @ARRAY_SIZE(float* getelementptr inbounds ([17 x float], [17 x float]* @vlc_player_ChangeRateOffset.rates, i64 0, i64 0))
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds [17 x float], [17 x float]* @vlc_player_ChangeRateOffset.rates, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float, float* %5, align 4
  %26 = fcmp ogt float %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds [17 x float], [17 x float]* @vlc_player_ChangeRateOffset.rates, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load float, float* %5, align 4
  %35 = fcmp oge float %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds [17 x float], [17 x float]* @vlc_player_ChangeRateOffset.rates, i64 0, i64 %43
  %45 = load float, float* %44, align 4
  br label %51

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds [17 x float], [17 x float]* @vlc_player_ChangeRateOffset.rates, i64 0, i64 %48
  %50 = load float, float* %49, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi float [ %45, %42 ], [ %50, %46 ]
  store float %52, float* %5, align 4
  br label %57

53:                                               ; preds = %36, %30, %27
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %14

57:                                               ; preds = %51, %14
  %58 = load i32*, i32** %3, align 8
  %59 = load float, float* %5, align 4
  %60 = call i32 @vlc_player_ChangeRate(i32* %58, float %59)
  ret void
}

declare dso_local float @vlc_player_GetRate(i32*) #1

declare dso_local i64 @ARRAY_SIZE(float*) #1

declare dso_local i32 @vlc_player_ChangeRate(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
