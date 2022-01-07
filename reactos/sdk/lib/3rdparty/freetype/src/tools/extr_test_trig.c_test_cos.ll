; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_trig.c_test_cos.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_trig.c_test_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT_ANGLE_2PI = common dso_local global i32 0, align 4
@SPI = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FT_Cos[%3d] = %.7f  cos[%3d] = %.7f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cos() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %34, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @FT_ANGLE_2PI, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = call double @FT_Cos(i32 %10)
  store double %11, double* %2, align 8
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @SPI, align 4
  %14 = mul nsw i32 %12, %13
  %15 = call double @cos(i32 %14)
  store double %15, double* %4, align 8
  %16 = load double, double* %4, align 8
  %17 = fmul double %16, 6.553600e+04
  store double %17, double* %3, align 8
  %18 = load double, double* %3, align 8
  %19 = load double, double* %2, align 8
  %20 = fsub double %18, %19
  %21 = call i64 @abs(double %20)
  %22 = load i64, i64* @THRESHOLD, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %9
  store i32 1, i32* @error, align 4
  %25 = load i32, i32* %1, align 4
  %26 = ashr i32 %25, 16
  %27 = load double, double* %2, align 8
  %28 = fdiv double %27, 6.553600e+04
  %29 = load i32, i32* %1, align 4
  %30 = ashr i32 %29, 16
  %31 = load double, double* %4, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26, double %28, i32 %30, double %31)
  br label %33

33:                                               ; preds = %24, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, 65536
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local double @FT_Cos(i32) #1

declare dso_local double @cos(i32) #1

declare dso_local i64 @abs(double) #1

declare dso_local i32 @printf(i8*, i32, double, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
