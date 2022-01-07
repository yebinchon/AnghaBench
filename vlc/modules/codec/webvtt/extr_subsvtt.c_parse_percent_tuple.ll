; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_parse_percent_tuple.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_parse_percent_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, float*, float*)* @parse_percent_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_percent_tuple(i8* %0, float* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i8* %0, i8** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call float @us_strtof(i8* %11, i8** %8)
  store float %12, float* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %3
  %17 = load float, float* %9, align 4
  %18 = fpext float %17 to double
  %19 = fcmp oge double %18, 0.000000e+00
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load float, float* %9, align 4
  %22 = fpext float %21 to double
  %23 = fcmp ole double %22, 1.000000e+02
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %73

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 44)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = call float @us_strtof(i8* %39, i8** %8)
  store float %40, float* %10, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %37
  %45 = load float, float* %10, align 4
  %46 = fpext float %45 to double
  %47 = fcmp oge double %46, 0.000000e+00
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load float, float* %10, align 4
  %50 = fpext float %49 to double
  %51 = fcmp ole double %50, 1.000000e+02
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load float, float* %9, align 4
  %62 = fpext float %61 to double
  %63 = fdiv double %62, 1.000000e+02
  %64 = fptrunc double %63 to float
  %65 = load float*, float** %6, align 8
  store float %64, float* %65, align 4
  %66 = load float, float* %10, align 4
  %67 = fpext float %66 to double
  %68 = fdiv double %67, 1.000000e+02
  %69 = fptrunc double %68 to float
  %70 = load float*, float** %7, align 8
  store float %69, float* %70, align 4
  store i32 1, i32* %4, align 4
  br label %74

71:                                               ; preds = %55, %52, %48, %44, %37
  br label %72

72:                                               ; preds = %71, %32
  br label %73

73:                                               ; preds = %72, %27, %24, %20, %16, %3
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local float @us_strtof(i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
