; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_trig.c_test_length.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_trig.c_test_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@FT_ANGLE_2PI = common dso_local global i32 0, align 4
@SPI = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"FT_Length( %.7f, %.7f ) = %.5f, length = %.5f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_length() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %44, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @FT_ANGLE_2PI, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  store double 3.276800e+07, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @SPI, align 4
  %13 = mul nsw i32 %11, %12
  %14 = call double @cos(i32 %13)
  %15 = fmul double %10, %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store double %15, double* %16, align 8
  %17 = load double, double* %3, align 8
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @SPI, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call double @sin(i32 %20)
  %22 = fmul double %17, %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store double %22, double* %23, align 8
  %24 = call double @FT_Vector_Length(%struct.TYPE_3__* %2)
  store double %24, double* %4, align 8
  %25 = load double, double* %4, align 8
  %26 = load double, double* %3, align 8
  %27 = fsub double %25, %26
  %28 = call i64 @abs(double %27)
  %29 = load i64, i64* @THRESHOLD, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %9
  store i32 1, i32* @error, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fdiv double %33, 6.553600e+04
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fdiv double %36, 6.553600e+04
  %38 = load double, double* %4, align 8
  %39 = fdiv double %38, 6.553600e+04
  %40 = load double, double* %3, align 8
  %41 = fdiv double %40, 6.553600e+04
  %42 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), double %34, double %37, double %39, double %41)
  br label %43

43:                                               ; preds = %31, %9
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, 65536
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %1, align 4
  br label %5

49:                                               ; preds = %5
  ret void
}

declare dso_local double @cos(i32) #1

declare dso_local double @sin(i32) #1

declare dso_local double @FT_Vector_Length(%struct.TYPE_3__*) #1

declare dso_local i64 @abs(double) #1

declare dso_local i32 @printf(i8*, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
