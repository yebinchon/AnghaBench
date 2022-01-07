; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_7_x_to_5_x.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_7_x_to_5_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }

@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__*)* @DoWork_7_x_to_5_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoWork_7_x_to_5_x(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to float*
  store float* %13, float** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to float*
  store float* %17, float** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %99, %3
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %100

25:                                               ; preds = %21
  %26 = load float*, float** %8, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %7, align 8
  %30 = getelementptr inbounds float, float* %29, i32 1
  store float* %30, float** %7, align 8
  store float %28, float* %29, align 4
  %31 = load float*, float** %8, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %7, align 8
  %35 = getelementptr inbounds float, float* %34, i32 1
  store float* %35, float** %7, align 8
  store float %33, float* %34, align 4
  %36 = load float*, float** %8, align 8
  %37 = getelementptr inbounds float, float* %36, i64 2
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %8, align 8
  %40 = getelementptr inbounds float, float* %39, i64 4
  %41 = load float, float* %40, align 4
  %42 = fadd float %38, %41
  %43 = fmul float %42, 5.000000e-01
  %44 = load float*, float** %7, align 8
  %45 = getelementptr inbounds float, float* %44, i32 1
  store float* %45, float** %7, align 8
  store float %43, float* %44, align 4
  %46 = load float*, float** %8, align 8
  %47 = getelementptr inbounds float, float* %46, i64 3
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %8, align 8
  %50 = getelementptr inbounds float, float* %49, i64 5
  %51 = load float, float* %50, align 4
  %52 = fadd float %48, %51
  %53 = fmul float %52, 5.000000e-01
  %54 = load float*, float** %7, align 8
  %55 = getelementptr inbounds float, float* %54, i32 1
  store float* %55, float** %7, align 8
  store float %53, float* %54, align 4
  %56 = load float*, float** %8, align 8
  %57 = getelementptr inbounds float, float* %56, i64 6
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %7, align 8
  %60 = getelementptr inbounds float, float* %59, i32 1
  store float* %60, float** %7, align 8
  store float %58, float* %59, align 4
  %61 = load float*, float** %8, align 8
  %62 = getelementptr inbounds float, float* %61, i64 7
  store float* %62, float** %8, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %25
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load float*, float** %8, align 8
  %82 = getelementptr inbounds float, float* %81, i32 1
  store float* %82, float** %8, align 8
  %83 = load float, float* %81, align 4
  %84 = load float*, float** %7, align 8
  %85 = getelementptr inbounds float, float* %84, i32 1
  store float* %85, float** %7, align 8
  store float %83, float* %84, align 4
  br label %99

86:                                               ; preds = %71, %25
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load float*, float** %8, align 8
  %97 = getelementptr inbounds float, float* %96, i32 1
  store float* %97, float** %8, align 8
  br label %98

98:                                               ; preds = %95, %86
  br label %99

99:                                               ; preds = %98, %80
  br label %21

100:                                              ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
