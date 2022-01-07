; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_VolumeUpdate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_VolumeUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"volume-step\00", align 1
@AOUT_VOLUME_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aout_VolumeUpdate(i32* %0, i32 %1, float* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store i32 -1, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call float @var_InheritFloat(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @AOUT_VOLUME_DEFAULT, align 8
  %14 = sitofp i64 %13 to float
  %15 = fdiv float %12, %14
  store float %15, float* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sitofp i32 %16 to float
  %18 = load float, float* %8, align 4
  %19 = fmul float %17, %18
  store float %19, float* %9, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call float @aout_VolumeGet(i32* %20)
  store float %21, float* %10, align 4
  %22 = load float, float* %10, align 4
  %23 = fcmp oge float %22, 0.000000e+00
  br i1 %23, label %24, label %51

24:                                               ; preds = %3
  %25 = load float, float* %9, align 4
  %26 = load float, float* %10, align 4
  %27 = fadd float %26, %25
  store float %27, float* %10, align 4
  %28 = load float, float* %10, align 4
  %29 = fcmp olt float %28, 0.000000e+00
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store float 0.000000e+00, float* %10, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load float, float* %10, align 4
  %33 = fcmp ogt float %32, 2.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store float 2.000000e+00, float* %10, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load float, float* %10, align 4
  %37 = load float, float* %8, align 4
  %38 = fdiv float %36, %37
  %39 = call float @llvm.round.f32(float %38)
  %40 = load float, float* %8, align 4
  %41 = fmul float %39, %40
  store float %41, float* %10, align 4
  %42 = load float*, float** %6, align 8
  %43 = icmp ne float* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load float, float* %10, align 4
  %46 = load float*, float** %6, align 8
  store float %45, float* %46, align 4
  br label %47

47:                                               ; preds = %44, %35
  %48 = load i32*, i32** %4, align 8
  %49 = load float, float* %10, align 4
  %50 = call i32 @aout_VolumeSet(i32* %48, float %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %3
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local float @var_InheritFloat(i32*, i8*) #1

declare dso_local float @aout_VolumeGet(i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.round.f32(float) #2

declare dso_local i32 @aout_VolumeSet(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
