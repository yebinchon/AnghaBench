; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_5_x_to_4_0.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_5_x_to_4_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @DoWork_5_x_to_4_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoWork_5_x_to_4_0(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to float*
  store float* %14, float** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to float*
  store float* %18, float** %8, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %68, %3
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = load float*, float** %8, align 8
  %28 = getelementptr inbounds float, float* %27, i64 4
  %29 = load float, float* %28, align 4
  %30 = fmul float %29, 0x3FE6A09020000000
  store float %30, float* %10, align 4
  %31 = load float*, float** %8, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load float, float* %32, align 4
  %34 = load float, float* %10, align 4
  %35 = fadd float %33, %34
  %36 = load float*, float** %7, align 8
  %37 = getelementptr inbounds float, float* %36, i32 1
  store float* %37, float** %7, align 8
  store float %35, float* %36, align 4
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = load float, float* %10, align 4
  %42 = fadd float %40, %41
  %43 = load float*, float** %7, align 8
  %44 = getelementptr inbounds float, float* %43, i32 1
  store float* %44, float** %7, align 8
  store float %42, float* %43, align 4
  %45 = load float*, float** %8, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %7, align 8
  %49 = getelementptr inbounds float, float* %48, i32 1
  store float* %49, float** %7, align 8
  store float %47, float* %48, align 4
  %50 = load float*, float** %8, align 8
  %51 = getelementptr inbounds float, float* %50, i64 3
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %7, align 8
  %54 = getelementptr inbounds float, float* %53, i32 1
  store float* %54, float** %7, align 8
  store float %52, float* %53, align 4
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 5
  store float* %56, float** %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %26
  %66 = load float*, float** %8, align 8
  %67 = getelementptr inbounds float, float* %66, i32 1
  store float* %67, float** %8, align 8
  br label %68

68:                                               ; preds = %65, %26
  br label %22

69:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
