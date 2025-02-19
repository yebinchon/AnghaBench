; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_GetFormatLuminance.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_GetFormatLuminance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_PQ_BRIGHTNESS = common dso_local global float 0.000000e+00, align 4
@MAX_HLG_BRIGHTNESS = common dso_local global float 0.000000e+00, align 4
@DEFAULT_BRIGHTNESS = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [29 x i8] c"unhandled source transfer %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @GetFormatLuminance(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 130, label %11
    i32 133, label %13
    i32 132, label %13
    i32 131, label %13
    i32 128, label %13
  ]

9:                                                ; preds = %2
  %10 = load float, float* @MAX_PQ_BRIGHTNESS, align 4
  store float %10, float* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load float, float* @MAX_HLG_BRIGHTNESS, align 4
  store float %12, float* %3, align 4
  br label %22

13:                                               ; preds = %2, %2, %2, %2
  %14 = load float, float* @DEFAULT_BRIGHTNESS, align 4
  store float %14, float* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @msg_Dbg(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load float, float* @DEFAULT_BRIGHTNESS, align 4
  store float %21, float* %3, align 4
  br label %22

22:                                               ; preds = %15, %13, %11, %9
  %23 = load float, float* %3, align 4
  ret float %23
}

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
