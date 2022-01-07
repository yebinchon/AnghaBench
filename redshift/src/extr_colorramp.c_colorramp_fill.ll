; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_colorramp.c_colorramp_fill.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_colorramp.c_colorramp_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@blackbody_color = common dso_local global i32* null, align 8
@UINT16_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @colorramp_fill(i32* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 100
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+02
  %21 = fptrunc double %20 to float
  store float %21, float* %12, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1000
  %26 = sdiv i32 %25, 100
  %27 = mul nsw i32 %26, 3
  store i32 %27, i32* %13, align 4
  %28 = load float, float* %12, align 4
  %29 = load i32*, i32** @blackbody_color, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32*, i32** @blackbody_color, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %39 = call i32 @interpolate_color(float %28, i32* %32, i32* %37, float* %38)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %99, %5
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sitofp i32 %49 to double
  %51 = load i32, i32* @UINT16_MAX, align 4
  %52 = add nsw i32 %51, 1
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %50, %53
  %55 = call i32 @F(double %54, i32 0)
  %56 = load i32, i32* @UINT16_MAX, align 4
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %55, %57
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to double
  %69 = load i32, i32* @UINT16_MAX, align 4
  %70 = add nsw i32 %69, 1
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %68, %71
  %73 = call i32 @F(double %72, i32 1)
  %74 = load i32, i32* @UINT16_MAX, align 4
  %75 = add nsw i32 %74, 1
  %76 = mul nsw i32 %73, %75
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sitofp i32 %85 to double
  %87 = load i32, i32* @UINT16_MAX, align 4
  %88 = add nsw i32 %87, 1
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %86, %89
  %91 = call i32 @F(double %90, i32 2)
  %92 = load i32, i32* @UINT16_MAX, align 4
  %93 = add nsw i32 %92, 1
  %94 = mul nsw i32 %91, %93
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %44
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %40

102:                                              ; preds = %40
  ret void
}

declare dso_local i32 @interpolate_color(float, i32*, i32*, float*) #1

declare dso_local i32 @F(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
