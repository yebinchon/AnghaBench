; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_param_eq.c_ProcessEQ.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_param_eq.c_ProcessEQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessEQ(float* %0, float* %1, float* %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  store float 0.000000e+00, float* %24, align 4
  %29 = load float*, float** %8, align 8
  store float* %29, float** %25, align 8
  %30 = load float*, float** %9, align 8
  store float* %30, float** %26, align 8
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %125, %7
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %128

35:                                               ; preds = %31
  %36 = load float*, float** %10, align 8
  store float* %36, float** %27, align 8
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %121, %35
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %124

41:                                               ; preds = %37
  %42 = load float*, float** %13, align 8
  store float* %42, float** %28, align 8
  %43 = load float*, float** %25, align 8
  %44 = getelementptr inbounds float, float* %43, i32 1
  store float* %44, float** %25, align 8
  %45 = load float, float* %43, align 4
  store float %45, float* %23, align 4
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %114, %41
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %117

50:                                               ; preds = %46
  %51 = load float*, float** %28, align 8
  %52 = getelementptr inbounds float, float* %51, i64 0
  %53 = load float, float* %52, align 4
  store float %53, float* %18, align 4
  %54 = load float*, float** %28, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  store float %56, float* %19, align 4
  %57 = load float*, float** %28, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  store float %59, float* %20, align 4
  %60 = load float*, float** %28, align 8
  %61 = getelementptr inbounds float, float* %60, i64 3
  %62 = load float, float* %61, align 4
  store float %62, float* %21, align 4
  %63 = load float*, float** %28, align 8
  %64 = getelementptr inbounds float, float* %63, i64 4
  %65 = load float, float* %64, align 4
  store float %65, float* %22, align 4
  %66 = load float*, float** %28, align 8
  %67 = getelementptr inbounds float, float* %66, i64 5
  store float* %67, float** %28, align 8
  %68 = load float, float* %23, align 4
  %69 = load float, float* %18, align 4
  %70 = fmul float %68, %69
  %71 = load float*, float** %27, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  %73 = load float, float* %72, align 4
  %74 = load float, float* %19, align 4
  %75 = fmul float %73, %74
  %76 = fadd float %70, %75
  %77 = load float*, float** %27, align 8
  %78 = getelementptr inbounds float, float* %77, i64 1
  %79 = load float, float* %78, align 4
  %80 = load float, float* %20, align 4
  %81 = fmul float %79, %80
  %82 = fadd float %76, %81
  %83 = load float*, float** %27, align 8
  %84 = getelementptr inbounds float, float* %83, i64 2
  %85 = load float, float* %84, align 4
  %86 = load float, float* %21, align 4
  %87 = fmul float %85, %86
  %88 = fsub float %82, %87
  %89 = load float*, float** %27, align 8
  %90 = getelementptr inbounds float, float* %89, i64 3
  %91 = load float, float* %90, align 4
  %92 = load float, float* %22, align 4
  %93 = fmul float %91, %92
  %94 = fsub float %88, %93
  store float %94, float* %24, align 4
  %95 = load float*, float** %27, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %27, align 8
  %99 = getelementptr inbounds float, float* %98, i64 1
  store float %97, float* %99, align 4
  %100 = load float, float* %23, align 4
  %101 = load float*, float** %27, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  store float %100, float* %102, align 4
  %103 = load float*, float** %27, align 8
  %104 = getelementptr inbounds float, float* %103, i64 2
  %105 = load float, float* %104, align 4
  %106 = load float*, float** %27, align 8
  %107 = getelementptr inbounds float, float* %106, i64 3
  store float %105, float* %107, align 4
  %108 = load float, float* %24, align 4
  %109 = load float*, float** %27, align 8
  %110 = getelementptr inbounds float, float* %109, i64 2
  store float %108, float* %110, align 4
  %111 = load float, float* %24, align 4
  store float %111, float* %23, align 4
  %112 = load float*, float** %27, align 8
  %113 = getelementptr inbounds float, float* %112, i64 4
  store float* %113, float** %27, align 8
  br label %114

114:                                              ; preds = %50
  %115 = load i32, i32* %17, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %46

117:                                              ; preds = %46
  %118 = load float, float* %24, align 4
  %119 = load float*, float** %26, align 8
  %120 = getelementptr inbounds float, float* %119, i32 1
  store float* %120, float** %26, align 8
  store float %118, float* %119, align 4
  br label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %16, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %37

124:                                              ; preds = %37
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %31

128:                                              ; preds = %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
