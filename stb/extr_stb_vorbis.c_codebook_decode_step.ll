; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_codebook_decode_step.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_codebook_decode_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, float*, i32, i32)* @codebook_decode_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codebook_decode_step(i32* %0, %struct.TYPE_6__* %1, float* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = call i32 @codebook_decode_start(i32* %16, %struct.TYPE_6__* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = call float @CODEBOOK_ELEMENT_BASE(%struct.TYPE_6__* %19)
  store float %20, float* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %6, align 4
  br label %74

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = mul nsw i32 %39, %38
  store i32 %40, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %69, %35
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %47, %48
  %50 = call float @CODEBOOK_ELEMENT_FAST(%struct.TYPE_6__* %46, i32 %49)
  %51 = load float, float* %14, align 4
  %52 = fadd float %50, %51
  store float %52, float* %15, align 4
  %53 = load float, float* %15, align 4
  %54 = load float*, float** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %54, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fadd float %60, %53
  store float %61, float* %59, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %45
  %67 = load float, float* %15, align 4
  store float %67, float* %14, align 4
  br label %68

68:                                               ; preds = %66, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %41

72:                                               ; preds = %41
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %23
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @codebook_decode_start(i32*, %struct.TYPE_6__*) #1

declare dso_local float @CODEBOOK_ELEMENT_BASE(%struct.TYPE_6__*) #1

declare dso_local float @CODEBOOK_ELEMENT_FAST(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
