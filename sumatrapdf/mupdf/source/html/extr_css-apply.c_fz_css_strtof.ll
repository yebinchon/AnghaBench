; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_css_strtof.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_css_strtof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i8*, i8**)* @fz_css_strtof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @fz_css_strtof(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store float 1.000000e+00, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store float 1.000000e+00, float* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  store float -1.000000e+00, float* %5, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %13, %2
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 48
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 57
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = load float, float* %6, align 4
  %31 = fmul float %30, 1.000000e+01
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 48
  %36 = sitofp i32 %35 to float
  %37 = fadd float %31, %36
  store float %37, float* %6, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  br label %17

40:                                               ; preds = %27
  %41 = load i8*, i8** %3, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  br label %48

48:                                               ; preds = %60, %45
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 48
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 57
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %73

60:                                               ; preds = %58
  %61 = load float, float* %7, align 4
  %62 = fmul float %61, 1.000000e+01
  %63 = load i8*, i8** %3, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 48
  %67 = sitofp i32 %66 to float
  %68 = fadd float %62, %67
  store float %68, float* %7, align 4
  %69 = load float, float* %8, align 4
  %70 = fmul float %69, 1.000000e+01
  store float %70, float* %8, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  br label %48

73:                                               ; preds = %58
  %74 = load float, float* %7, align 4
  %75 = load float, float* %8, align 4
  %76 = fdiv float %74, %75
  %77 = load float, float* %6, align 4
  %78 = fadd float %77, %76
  store float %78, float* %6, align 4
  br label %79

79:                                               ; preds = %73, %40
  %80 = load i8**, i8*** %4, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %3, align 8
  %84 = load i8**, i8*** %4, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load float, float* %5, align 4
  %87 = load float, float* %6, align 4
  %88 = fmul float %86, %87
  ret float %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
