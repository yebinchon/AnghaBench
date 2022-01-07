; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_render_transform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_render_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i8*)* @xps_parse_render_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_parse_render_transform(%struct.TYPE_3__* noalias sret %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [6 x float], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* %3, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %9, align 8
  %12 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  store float 1.000000e+00, float* %12, align 16
  %13 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 1
  store float 0.000000e+00, float* %13, align 4
  %14 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 2
  store float 0.000000e+00, float* %14, align 8
  %15 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 3
  store float 1.000000e+00, float* %15, align 4
  %16 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 4
  store float 0.000000e+00, float* %16, align 16
  %17 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 5
  store float 0.000000e+00, float* %17, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %58, %4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %61

28:                                               ; preds = %26
  %29 = load i8*, i8** %9, align 8
  %30 = call float @fz_atof(i8* %29)
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 %32
  store float %30, float* %33, align 4
  br label %34

34:                                               ; preds = %46, %28
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 44
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 44
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %18

61:                                               ; preds = %26
  %62 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %63 = load float, float* %62, align 16
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store float %63, float* %64, align 4
  %65 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 1
  %66 = load float, float* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 2
  %69 = load float, float* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store float %69, float* %70, align 4
  %71 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 3
  %72 = load float, float* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store float %72, float* %73, align 4
  %74 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 4
  %75 = load float, float* %74, align 16
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store float %75, float* %76, align 4
  %77 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 5
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store float %78, float* %79, align 4
  ret void
}

declare dso_local float @fz_atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
