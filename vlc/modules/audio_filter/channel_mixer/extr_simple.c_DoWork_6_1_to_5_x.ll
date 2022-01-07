; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_6_1_to_5_x.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_6_1_to_5_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @DoWork_6_1_to_5_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoWork_6_1_to_5_x(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @VLC_UNUSED(i32* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to float*
  store float* %15, float** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to float*
  store float* %19, float** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %27, %3
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load float*, float** %8, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %7, align 8
  %32 = getelementptr inbounds float, float* %31, i32 1
  store float* %32, float** %7, align 8
  store float %30, float* %31, align 4
  %33 = load float*, float** %8, align 8
  %34 = getelementptr inbounds float, float* %33, i64 1
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %7, align 8
  %37 = getelementptr inbounds float, float* %36, i32 1
  store float* %37, float** %7, align 8
  store float %35, float* %36, align 4
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %8, align 8
  %42 = getelementptr inbounds float, float* %41, i64 4
  %43 = load float, float* %42, align 4
  %44 = fadd float %40, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = load float*, float** %7, align 8
  %47 = getelementptr inbounds float, float* %46, i32 1
  store float* %47, float** %7, align 8
  store float %45, float* %46, align 4
  %48 = load float*, float** %8, align 8
  %49 = getelementptr inbounds float, float* %48, i64 3
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %8, align 8
  %52 = getelementptr inbounds float, float* %51, i64 4
  %53 = load float, float* %52, align 4
  %54 = fadd float %50, %53
  %55 = fmul float %54, 5.000000e-01
  %56 = load float*, float** %7, align 8
  %57 = getelementptr inbounds float, float* %56, i32 1
  store float* %57, float** %7, align 8
  store float %55, float* %56, align 4
  %58 = load float*, float** %8, align 8
  %59 = getelementptr inbounds float, float* %58, i64 5
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %7, align 8
  %62 = getelementptr inbounds float, float* %61, i32 1
  store float* %62, float** %7, align 8
  store float %60, float* %61, align 4
  %63 = load float*, float** %8, align 8
  %64 = getelementptr inbounds float, float* %63, i64 6
  store float* %64, float** %8, align 8
  %65 = load float*, float** %8, align 8
  %66 = getelementptr inbounds float, float* %65, i32 1
  store float* %66, float** %8, align 8
  %67 = load float, float* %65, align 4
  %68 = load float*, float** %7, align 8
  %69 = getelementptr inbounds float, float* %68, i32 1
  store float* %69, float** %7, align 8
  store float %67, float* %68, align 4
  br label %23

70:                                               ; preds = %23
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
