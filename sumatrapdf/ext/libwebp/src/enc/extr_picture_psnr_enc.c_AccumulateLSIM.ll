; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_AccumulateLSIM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_AccumulateLSIM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADIUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double*, i32, double*, i32, i32, i32)* @AccumulateLSIM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @AccumulateLSIM(double* %0, i32 %1, double* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double*, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double* %0, double** %7, align 8
  store i32 %1, i32* %8, align 4
  store double* %2, double** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %147, %6
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %150

31:                                               ; preds = %27
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @RADIUS, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @RADIUS, align 4
  %40 = sub nsw i32 %38, %39
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ 0, %36 ], [ %40, %37 ]
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @RADIUS, align 4
  %45 = add nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %12, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %12, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @RADIUS, align 4
  %54 = add nsw i32 %52, %53
  %55 = add nsw i32 %54, 1
  br label %56

56:                                               ; preds = %51, %49
  %57 = phi i32 [ %50, %49 ], [ %55, %51 ]
  store i32 %57, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %143, %56
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %146

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @RADIUS, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %72

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @RADIUS, align 4
  %71 = sub nsw i32 %69, %70
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i32 [ 0, %67 ], [ %71, %68 ]
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @RADIUS, align 4
  %76 = add nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %11, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  br label %87

82:                                               ; preds = %72
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @RADIUS, align 4
  %85 = add nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i32 [ %81, %80 ], [ %86, %82 ]
  store i32 %88, i32* %19, align 4
  store double 6.502500e+04, double* %20, align 8
  %89 = load double*, double** %9, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %89, i64 %95
  %97 = load double, double* %96, align 8
  store double %97, double* %21, align 8
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %23, align 4
  br label %99

99:                                               ; preds = %136, %87
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %99
  %104 = load double*, double** %7, align 8
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %104, i64 %108
  store double* %109, double** %24, align 8
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %22, align 4
  br label %111

111:                                              ; preds = %132, %103
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %111
  %116 = load double*, double** %24, align 8
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load double, double* %21, align 8
  %122 = fsub double %120, %121
  store double %122, double* %25, align 8
  %123 = load double, double* %25, align 8
  %124 = load double, double* %25, align 8
  %125 = fmul double %123, %124
  store double %125, double* %26, align 8
  %126 = load double, double* %26, align 8
  %127 = load double, double* %20, align 8
  %128 = fcmp olt double %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %115
  %130 = load double, double* %26, align 8
  store double %130, double* %20, align 8
  br label %131

131:                                              ; preds = %129, %115
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %22, align 4
  br label %111

135:                                              ; preds = %111
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %23, align 4
  br label %99

139:                                              ; preds = %99
  %140 = load double, double* %20, align 8
  %141 = load double, double* %15, align 8
  %142 = fadd double %141, %140
  store double %142, double* %15, align 8
  br label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %58

146:                                              ; preds = %58
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %27

150:                                              ; preds = %27
  %151 = load double, double* %15, align 8
  ret double %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
