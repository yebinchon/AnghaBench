; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_TextureCropForStereo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_TextureCropForStereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float*, float*, float*, float*)* @TextureCropForStereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TextureCropForStereo(%struct.TYPE_9__* %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %55 [
    i32 128, label %17
    i32 129, label %36
  ]

17:                                               ; preds = %5
  %18 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  store float 1.000000e+00, float* %18, align 4
  %19 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 1
  store float 5.000000e-01, float* %19, align 4
  %20 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float 0.000000e+00, float* %20, align 4
  %21 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float 0.000000e+00, float* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  %30 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %31 = load float*, float** %7, align 8
  %32 = load float*, float** %8, align 8
  %33 = load float*, float** %9, align 8
  %34 = load float*, float** %10, align 8
  %35 = call i32 @GetTextureCropParamsForStereo(i32 %28, float* %29, float* %30, float* %31, float* %32, float* %33, float* %34)
  br label %56

36:                                               ; preds = %5
  %37 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  store float 5.000000e-01, float* %37, align 4
  %38 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 1
  store float 1.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float 0.000000e+00, float* %39, align 4
  %40 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float 0.000000e+00, float* %40, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  %49 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %50 = load float*, float** %7, align 8
  %51 = load float*, float** %8, align 8
  %52 = load float*, float** %9, align 8
  %53 = load float*, float** %10, align 8
  %54 = call i32 @GetTextureCropParamsForStereo(i32 %47, float* %48, float* %49, float* %50, float* %51, float* %52, float* %53)
  br label %56

55:                                               ; preds = %5
  br label %56

56:                                               ; preds = %55, %36, %17
  ret void
}

declare dso_local i32 @GetTextureCropParamsForStereo(i32, float*, float*, float*, float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
