; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_new_weights.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_new_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, %struct.TYPE_7__*, i32, float, i32, i32, i32, i32)* @new_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @new_weights(i32* %0, %struct.TYPE_7__* %1, i32 %2, float %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %11, align 8
  store i32 %2, i32* %12, align 4
  store float %3, float* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %12, align 4
  %21 = sitofp i32 %20 to float
  %22 = load float, float* %13, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 2, %27
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sitofp i32 %30 to float
  %32 = load float, float* %13, align 4
  %33 = fdiv float %31, %32
  %34 = fptosi float %33 to i32
  %35 = call i64 @ceilf(i32 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %40, %24
  br label %48

43:                                               ; preds = %8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 2, %46
  store i32 %47, i32* %18, align 4
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %18, align 4
  %51 = add nsw i32 %50, 3
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = add i64 32, %56
  %58 = trunc i64 %57 to i32
  %59 = call %struct.TYPE_6__* @fz_malloc(i32* %49, i32 %58)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %19, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %48
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %84

63:                                               ; preds = %48
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %9, align 8
  br label %84

84:                                               ; preds = %63, %62
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %85
}

declare dso_local i64 @ceilf(i32) #1

declare dso_local %struct.TYPE_6__* @fz_malloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
