; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_GetTextureCropParamsForStereo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_GetTextureCropParamsForStereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, float*, float*, float*, float*, float*)* @GetTextureCropParamsForStereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetTextureCropParamsForStereo(i32 %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32 %0, i32* %8, align 4
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %105, %7
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %108

22:                                               ; preds = %18
  %23 = load float*, float** %13, align 8
  %24 = load i32, i32* %15, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %11, align 8
  %29 = load i32, i32* %15, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fsub float %27, %32
  store float %33, float* %16, align 4
  %34 = load float*, float** %11, align 8
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load float, float* %16, align 4
  %40 = load float*, float** %10, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  %42 = load float, float* %41, align 4
  %43 = fmul float %39, %42
  %44 = fadd float %38, %43
  %45 = load float*, float** %11, align 8
  %46 = load i32, i32* %15, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float %44, float* %48, align 4
  %49 = load float*, float** %11, align 8
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float, float* %16, align 4
  %55 = load float*, float** %9, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %54, %57
  %59 = fadd float %53, %58
  %60 = load float*, float** %13, align 8
  %61 = load i32, i32* %15, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  store float %59, float* %63, align 4
  %64 = load float*, float** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %12, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fsub float %68, %73
  store float %74, float* %17, align 4
  %75 = load float*, float** %12, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = load float, float* %17, align 4
  %81 = load float*, float** %10, align 8
  %82 = getelementptr inbounds float, float* %81, i64 1
  %83 = load float, float* %82, align 4
  %84 = fmul float %80, %83
  %85 = fadd float %79, %84
  %86 = load float*, float** %12, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  store float %85, float* %89, align 4
  %90 = load float*, float** %12, align 8
  %91 = load i32, i32* %15, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load float, float* %17, align 4
  %96 = load float*, float** %9, align 8
  %97 = getelementptr inbounds float, float* %96, i64 1
  %98 = load float, float* %97, align 4
  %99 = fmul float %95, %98
  %100 = fadd float %94, %99
  %101 = load float*, float** %14, align 8
  %102 = load i32, i32* %15, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  store float %100, float* %104, align 4
  br label %105

105:                                              ; preds = %22
  %106 = load i32, i32* %15, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %18

108:                                              ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
