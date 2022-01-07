; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_best_overlap_offset_float.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_best_overlap_offset_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float*, float*, i32, float*, i32, i32, i32, i64 }

@INT_MIN = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @best_overlap_offset_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @best_overlap_offset_float(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %3, align 8
  %17 = load float, float* @INT_MIN, align 4
  store float %17, float* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  store float* %20, float** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load float*, float** %22, align 8
  store float* %23, float** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load float*, float** %5, align 8
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds float, float* %27, i64 %28
  store float* %29, float** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load float*, float** %31, align 8
  store float* %32, float** %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %52, %1
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load float*, float** %4, align 8
  %44 = getelementptr inbounds float, float* %43, i32 1
  store float* %44, float** %4, align 8
  %45 = load float, float* %43, align 4
  %46 = load float*, float** %5, align 8
  %47 = getelementptr inbounds float, float* %46, i32 1
  store float* %47, float** %5, align 8
  %48 = load float, float* %46, align 4
  %49 = fmul float %45, %48
  %50 = load float*, float** %6, align 8
  %51 = getelementptr inbounds float, float* %50, i32 1
  store float* %51, float** %6, align 8
  store float %49, float* %50, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to float*
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %59, i64 %63
  store float* %64, float** %7, align 8
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %112, %55
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %115

71:                                               ; preds = %65
  store float 0.000000e+00, float* %12, align 4
  %72 = load float*, float** %7, align 8
  store float* %72, float** %13, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load float*, float** %74, align 8
  store float* %75, float** %6, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %95, %71
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load float*, float** %6, align 8
  %87 = getelementptr inbounds float, float* %86, i32 1
  store float* %87, float** %6, align 8
  %88 = load float, float* %86, align 4
  %89 = load float*, float** %13, align 8
  %90 = getelementptr inbounds float, float* %89, i32 1
  store float* %90, float** %13, align 8
  %91 = load float, float* %89, align 4
  %92 = fmul float %88, %91
  %93 = load float, float* %12, align 4
  %94 = fadd float %93, %92
  store float %94, float* %12, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %79

98:                                               ; preds = %79
  %99 = load float, float* %12, align 4
  %100 = load float, float* %8, align 4
  %101 = fcmp ogt float %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load float, float* %12, align 4
  store float %103, float* %8, align 4
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %98
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load float*, float** %7, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds float, float* %109, i64 %110
  store float* %111, float** %7, align 8
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %65

115:                                              ; preds = %65
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = mul i32 %116, %119
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
