; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_acrobat_compatible_atof.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_acrobat_compatible_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i8*)* @acrobat_compatible_atof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @acrobat_compatible_atof(i8* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  br label %9

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %18

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 48
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 57
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %49

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 10
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = sub nsw i32 %44, 48
  %46 = add nsw i32 %41, %45
  store i32 %46, i32* %5, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  br label %27

49:                                               ; preds = %37
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %99

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = sitofp i32 %55 to float
  store float %56, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store float 1.000000e+00, float* %8, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %71, %54
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sge i32 %62, 48
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sle i32 %67, 57
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i1 [ false, %59 ], [ %68, %64 ]
  br i1 %70, label %71, label %84

71:                                               ; preds = %69
  %72 = load float, float* %7, align 4
  %73 = fmul float 1.000000e+01, %72
  %74 = load i8*, i8** %3, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 48
  %78 = sitofp i32 %77 to float
  %79 = fadd float %73, %78
  store float %79, float* %7, align 4
  %80 = load float, float* %8, align 4
  %81 = fmul float 1.000000e+01, %80
  store float %81, float* %8, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  br label %59

84:                                               ; preds = %69
  %85 = load float, float* %7, align 4
  %86 = load float, float* %8, align 4
  %87 = fdiv float %85, %86
  %88 = load float, float* %6, align 4
  %89 = fadd float %88, %87
  store float %89, float* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load float, float* %6, align 4
  %94 = fneg float %93
  br label %97

95:                                               ; preds = %84
  %96 = load float, float* %6, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi float [ %94, %92 ], [ %96, %95 ]
  store float %98, float* %2, align 4
  br label %110

99:                                               ; preds = %49
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 0, %103
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %104, %102 ], [ %106, %105 ]
  %109 = sitofp i32 %108 to float
  store float %109, float* %2, align 4
  br label %110

110:                                              ; preds = %107, %97
  %111 = load float, float* %2, align 4
  ret float %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
