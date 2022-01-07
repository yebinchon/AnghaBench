; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_transform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, double }

@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@transform_points = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Expected #%d to be (%.2f, %.2f) but got (%.2f, %.2f)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_transform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [10 x %struct.TYPE_4__], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sitofp i32 %10 to double
  %12 = fmul double %11, 5.000000e+00
  %13 = load i32, i32* %4, align 4
  %14 = srem i32 %13, 2
  %15 = sitofp i32 %14 to double
  %16 = fmul double %12, %15
  %17 = fptosi double %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 16
  %22 = load i32, i32* %4, align 4
  %23 = sitofp i32 %22 to double
  %24 = fmul double %23, 5.000000e+00
  %25 = fsub double 5.000000e+01, %24
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store double %25, double* %29, align 8
  br label %30

30:                                               ; preds = %9
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %6

33:                                               ; preds = %6
  %34 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double -2.000000e+00, double 3.000000e+01, double 4.000000e+01, double -5.000000e+02, double 6.000000e+02, i32** %2)
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %37 = call i32 @GdipTransformMatrixPoints(i32* %35, %struct.TYPE_4__* %36, i32 0)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @InvalidParameter, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %43 = call i32 @GdipTransformMatrixPoints(i32* %41, %struct.TYPE_4__* %42, i32 10)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %111, %33
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %50, label %114

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @transform_points, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 16
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %56, %62
  %64 = call double @fabs(i64 %63)
  %65 = fcmp olt double %64, 2.000000e+00
  br i1 %65, label %66, label %83

66:                                               ; preds = %50
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @transform_points, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to double
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = fsub double %73, %78
  %80 = fptosi double %79 to i64
  %81 = call double @fabs(i64 %80)
  %82 = fcmp olt double %81, 2.000000e+00
  br label %83

83:                                               ; preds = %66, %50
  %84 = phi i1 [ false, %50 ], [ %82, %66 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @transform_points, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @transform_points, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 16
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %93, i64 %99, i32 %104, double %109)
  br label %111

111:                                              ; preds = %83
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %47

114:                                              ; preds = %47
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @GdipDeleteMatrix(i32* %115)
  ret void
}

declare dso_local i32 @GdipCreateMatrix2(double, double, double, double, double, double, i32**) #1

declare dso_local i32 @GdipTransformMatrixPoints(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local double @fabs(i64) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, i64, i32, double) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
