; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_parse_percent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_parse_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, float*)* @parse_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_percent(i8* %0, float* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store float* %1, float** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call float @us_strtof(i8* %7, i8** %5)
  store float %8, float* %6, align 4
  %9 = load float, float* %6, align 4
  %10 = fpext float %9 to double
  %11 = fcmp oge double %10, 0.000000e+00
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load float, float* %6, align 4
  %14 = fpext float %13 to double
  %15 = fcmp ole double %14, 1.000000e+02
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load float, float* %6, align 4
  %23 = fpext float %22 to double
  %24 = fdiv double %23, 1.000000e+02
  %25 = fptrunc double %24 to float
  %26 = load float*, float** %4, align 8
  store float %25, float* %26, align 4
  br label %27

27:                                               ; preds = %21, %16, %12, %2
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %28, %29
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local float @us_strtof(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
