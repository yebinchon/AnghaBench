; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_uv_decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_uv_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@UV_NDIVS = common dso_local global i32 0, align 4
@UV_NVS = common dso_local global i32 0, align 4
@uv_row = common dso_local global %struct.TYPE_2__* null, align 8
@UV_SQSIZ = common dso_local global i32 0, align 4
@UV_VSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, float*, i32)* @uv_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_decode(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @UV_NDIVS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %87

19:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @UV_NVS, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %51, %19
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uv_row, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %31, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %9, align 4
  br label %51

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %8, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %9, align 4
  br label %52

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %41
  br label %21

52:                                               ; preds = %48, %21
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uv_row, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %54, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uv_row, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to float
  %69 = load i32, i32* %10, align 4
  %70 = sitofp i32 %69 to float
  %71 = fadd float %70, 5.000000e-01
  %72 = load i32, i32* @UV_SQSIZ, align 4
  %73 = sitofp i32 %72 to float
  %74 = fmul float %71, %73
  %75 = fadd float %68, %74
  %76 = load float*, float** %5, align 8
  store float %75, float* %76, align 4
  %77 = load i32, i32* @UV_VSTART, align 4
  %78 = sitofp i32 %77 to float
  %79 = load i32, i32* %11, align 4
  %80 = sitofp i32 %79 to float
  %81 = fadd float %80, 5.000000e-01
  %82 = load i32, i32* @UV_SQSIZ, align 4
  %83 = sitofp i32 %82 to float
  %84 = fmul float %81, %83
  %85 = fadd float %78, %84
  %86 = load float*, float** %6, align 8
  store float %85, float* %86, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %52, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
