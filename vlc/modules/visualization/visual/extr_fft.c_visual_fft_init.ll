; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_visual_fft_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_visual_fft_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@FFT_BUFFER_SIZE = common dso_local global i32 0, align 4
@PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @visual_fft_init() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = call %struct.TYPE_4__* @malloc(i32 24)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %61

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %23, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @FFT_BUFFER_SIZE, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @reverseBits(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %10

26:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %56, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FFT_BUFFER_SIZE, align 4
  %30 = udiv i32 %29, 2
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load i32, i32* @PI, align 4
  %34 = mul nsw i32 2, %33
  %35 = load i32, i32* %3, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* @FFT_BUFFER_SIZE, align 4
  %38 = udiv i32 %36, %37
  %39 = uitofp i32 %38 to float
  store float %39, float* %4, align 4
  %40 = load float, float* %4, align 4
  %41 = call i32 @cos(float %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load float, float* %4, align 4
  %49 = call i32 @sin(float %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %32
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %1, align 8
  br label %61

61:                                               ; preds = %59, %8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %62
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @reverseBits(i32) #1

declare dso_local i32 @cos(float) #1

declare dso_local i32 @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
