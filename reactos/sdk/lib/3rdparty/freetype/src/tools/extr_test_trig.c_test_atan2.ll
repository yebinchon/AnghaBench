; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_trig.c_test_atan2.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_trig.c_test_atan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT_ANGLE_2PI = common dso_local global i32 0, align 4
@SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"FT_Atan2( %.7f, %.7f ) = %.5f, atan = %.5f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_atan2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_atan2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %60, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @FT_ANGLE_2PI, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  store double 5.000000e+00, double* %4, align 8
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @SPI, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sitofp i32 %16 to double
  store double %17, double* %5, align 8
  %18 = load double, double* %4, align 8
  %19 = load double, double* %5, align 8
  %20 = call double @cos(double %19) #4
  %21 = fmul double %18, %20
  store double %21, double* %6, align 8
  %22 = load double, double* %4, align 8
  %23 = load double, double* %5, align 8
  %24 = call double @sin(double %23) #4
  %25 = fmul double %22, %24
  store double %25, double* %7, align 8
  %26 = load double, double* %6, align 8
  %27 = fmul double %26, 6.553600e+04
  store double %27, double* %2, align 8
  %28 = load double, double* %7, align 8
  %29 = fmul double %28, 6.553600e+04
  store double %29, double* %3, align 8
  %30 = load double, double* %2, align 8
  %31 = load double, double* %3, align 8
  %32 = call i32 @FT_Atan2(double %30, double %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %13
  %36 = load i32, i32* @FT_ANGLE_2PI, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %13
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @abs(i32 %42) #5
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load double, double* %2, align 8
  %47 = fdiv double %46, 6.553600e+04
  %48 = load double, double* %3, align 8
  %49 = fdiv double %48, 6.553600e+04
  %50 = load i32, i32* %8, align 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 6.553600e+04
  %53 = fptosi double %52 to i32
  %54 = load i32, i32* %1, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 6.553600e+04
  %57 = fptosi double %56 to i32
  %58 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), double %47, double %49, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %45, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, 65536
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %1, align 4
  br label %9

65:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

declare dso_local i32 @FT_Atan2(double, double) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @printf(i8*, double, double, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
