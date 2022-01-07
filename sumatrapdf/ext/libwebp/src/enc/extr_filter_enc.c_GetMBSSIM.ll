; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_filter_enc.c_GetMBSSIM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_filter_enc.c_GetMBSSIM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VP8_SSIM_KERNEL = common dso_local global i32 0, align 4
@Y_OFF_ENC = common dso_local global i32 0, align 4
@BPS = common dso_local global i32 0, align 4
@U_OFF_ENC = common dso_local global i32 0, align 4
@V_OFF_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32*)* @GetMBSSIM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @GetMBSSIM(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store double 0.000000e+00, double* %7, align 8
  %8 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %12 = sub nsw i32 16, %11
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %38, %14
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %19 = sub nsw i32 16, %18
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @Y_OFF_ENC, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* @BPS, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @Y_OFF_ENC, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* @BPS, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @VP8SSIMGetClipped(i32* %25, i32 %26, i32* %30, i32 %31, i32 %32, i32 %33, i32 16, i32 16)
  %35 = sitofp i64 %34 to double
  %36 = load double, double* %7, align 8
  %37 = fadd double %36, %35
  store double %37, double* %7, align 8
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %16

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %9

45:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %90, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 7
  br i1 %48, label %49, label %93

49:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %86, %49
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 7
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @U_OFF_ENC, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* @BPS, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @U_OFF_ENC, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @BPS, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @VP8SSIMGetClipped(i32* %57, i32 %58, i32* %62, i32 %63, i32 %64, i32 %65, i32 8, i32 8)
  %67 = sitofp i64 %66 to double
  %68 = load double, double* %7, align 8
  %69 = fadd double %68, %67
  store double %69, double* %7, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @V_OFF_ENC, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* @BPS, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @V_OFF_ENC, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* @BPS, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @VP8SSIMGetClipped(i32* %73, i32 %74, i32* %78, i32 %79, i32 %80, i32 %81, i32 8, i32 8)
  %83 = sitofp i64 %82 to double
  %84 = load double, double* %7, align 8
  %85 = fadd double %84, %83
  store double %85, double* %7, align 8
  br label %86

86:                                               ; preds = %53
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %50

89:                                               ; preds = %50
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %46

93:                                               ; preds = %46
  %94 = load double, double* %7, align 8
  ret double %94
}

declare dso_local i64 @VP8SSIMGetClipped(i32*, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
