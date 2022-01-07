; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-parse.c_svg_parse_number.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-parse.c_svg_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"inherit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @svg_parse_number(i8* %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load float, float* %9, align 4
  store float %15, float* %5, align 4
  br label %32

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call float @fz_atof(i8* %17)
  store float %18, float* %10, align 4
  %19 = load float, float* %10, align 4
  %20 = load float, float* %7, align 4
  %21 = fcmp olt float %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load float, float* %7, align 4
  store float %23, float* %5, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load float, float* %10, align 4
  %26 = load float, float* %8, align 4
  %27 = fcmp ogt float %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load float, float* %8, align 4
  store float %29, float* %5, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load float, float* %10, align 4
  store float %31, float* %5, align 4
  br label %32

32:                                               ; preds = %30, %28, %22, %14
  %33 = load float, float* %5, align 4
  ret float %33
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local float @fz_atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
