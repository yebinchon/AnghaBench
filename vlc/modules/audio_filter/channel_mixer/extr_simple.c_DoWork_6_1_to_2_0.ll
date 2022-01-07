; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_6_1_to_2_0.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_DoWork_6_1_to_2_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @DoWork_6_1_to_2_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoWork_6_1_to_2_0(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @VLC_UNUSED(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to float*
  store float* %16, float** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to float*
  store float* %20, float** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %28, %3
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load float*, float** %8, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %8, align 8
  %33 = getelementptr inbounds float, float* %32, i64 5
  %34 = load float, float* %33, align 4
  %35 = fadd float %31, %34
  %36 = fmul float %35, 0x3FE6A09020000000
  store float %36, float* %10, align 4
  %37 = load float*, float** %8, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %8, align 8
  %41 = getelementptr inbounds float, float* %40, i64 3
  %42 = load float, float* %41, align 4
  %43 = fadd float %39, %42
  %44 = load float, float* %10, align 4
  %45 = fadd float %43, %44
  %46 = load float*, float** %7, align 8
  %47 = getelementptr inbounds float, float* %46, i32 1
  store float* %47, float** %7, align 8
  store float %45, float* %46, align 4
  %48 = load float*, float** %8, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %8, align 8
  %52 = getelementptr inbounds float, float* %51, i64 4
  %53 = load float, float* %52, align 4
  %54 = fadd float %50, %53
  %55 = load float, float* %10, align 4
  %56 = fadd float %54, %55
  %57 = load float*, float** %7, align 8
  %58 = getelementptr inbounds float, float* %57, i32 1
  store float* %58, float** %7, align 8
  store float %56, float* %57, align 4
  %59 = load float*, float** %8, align 8
  %60 = getelementptr inbounds float, float* %59, i64 6
  store float* %60, float** %8, align 8
  %61 = load float*, float** %8, align 8
  %62 = getelementptr inbounds float, float* %61, i32 1
  store float* %62, float** %8, align 8
  br label %24

63:                                               ; preds = %24
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
