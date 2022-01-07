; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-input.c_find_string_location.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-input.c_find_string_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, float, float)* @find_string_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_string_location(i8* %0, i8* %1, float %2, float %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  br label %13

13:                                               ; preds = %30, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @fz_chartorune(i32* %10, i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call float @ui_measure_character(i32 %20)
  store float %21, float* %12, align 4
  %22 = load float, float* %8, align 4
  %23 = load float, float* %12, align 4
  %24 = fdiv float %23, 2.000000e+00
  %25 = fadd float %22, %24
  %26 = load float, float* %9, align 4
  %27 = fcmp oge float %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %5, align 8
  br label %40

30:                                               ; preds = %17
  %31 = load float, float* %12, align 4
  %32 = load float, float* %8, align 4
  %33 = fadd float %32, %31
  store float %33, float* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %6, align 8
  br label %13

38:                                               ; preds = %13
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %38, %28
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
}

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local float @ui_measure_character(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
