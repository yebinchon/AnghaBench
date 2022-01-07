; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_rectangle.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { <2 x float>, <2 x float> } @xps_parse_rectangle(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %9, align 8
  %12 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  store float 0.000000e+00, float* %12, align 16
  %13 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  store float 0.000000e+00, float* %13, align 4
  %14 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  store float 1.000000e+00, float* %14, align 8
  %15 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  store float 1.000000e+00, float* %15, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %56, %3
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %59

26:                                               ; preds = %24
  %27 = load i8*, i8** %9, align 8
  %28 = call float @fz_atof(i8* %27)
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 %30
  store float %28, float* %31, align 4
  br label %32

32:                                               ; preds = %44, %26
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 44
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 44
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %16

59:                                               ; preds = %24
  %60 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %61 = load float, float* %60, align 16
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store float %61, float* %62, align 4
  %63 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  %64 = load float, float* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store float %64, float* %65, align 4
  %66 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %67 = load float, float* %66, align 16
  %68 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  %69 = load float, float* %68, align 8
  %70 = fadd float %67, %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store float %70, float* %71, align 4
  %72 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  %73 = load float, float* %72, align 4
  %74 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  %75 = load float, float* %74, align 4
  %76 = fadd float %73, %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store float %76, float* %77, align 4
  %78 = bitcast %struct.TYPE_3__* %4 to { <2 x float>, <2 x float> }*
  %79 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %78, align 4
  ret { <2 x float>, <2 x float> } %79
}

declare dso_local float @fz_atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
