; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_5_x_to_1_0.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_5_x_to_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @DoWork_5_x_to_1_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoWork_5_x_to_1_0(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to float*
  store float* %13, float** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to float*
  store float* %17, float** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %62, %3
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = load float*, float** %8, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %8, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  %31 = load float, float* %30, align 4
  %32 = fadd float %28, %31
  %33 = fmul float 0x3FE6A09020000000, %32
  %34 = load float*, float** %8, align 8
  %35 = getelementptr inbounds float, float* %34, i64 4
  %36 = load float, float* %35, align 4
  %37 = fadd float %33, %36
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %8, align 8
  %42 = getelementptr inbounds float, float* %41, i64 3
  %43 = load float, float* %42, align 4
  %44 = fadd float %40, %43
  %45 = fmul float 5.000000e-01, %44
  %46 = fadd float %37, %45
  %47 = load float*, float** %7, align 8
  %48 = getelementptr inbounds float, float* %47, i32 1
  store float* %48, float** %7, align 8
  store float %46, float* %47, align 4
  %49 = load float*, float** %8, align 8
  %50 = getelementptr inbounds float, float* %49, i64 5
  store float* %50, float** %8, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %25
  %60 = load float*, float** %8, align 8
  %61 = getelementptr inbounds float, float* %60, i32 1
  store float* %61, float** %8, align 8
  br label %62

62:                                               ; preds = %59, %25
  br label %21

63:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
