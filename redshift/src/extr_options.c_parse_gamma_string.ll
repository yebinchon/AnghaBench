; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_options.c_parse_gamma_string.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_options.c_parse_gamma_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, float*)* @parse_gamma_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_gamma_string(i8* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store float* %1, float** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call float @atof(i8* %14)
  store float %15, float* %7, align 4
  %16 = load float, float* %7, align 4
  %17 = load float*, float** %5, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  store float %16, float* %18, align 4
  %19 = load float*, float** %5, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  store float %16, float* %20, align 4
  %21 = load float*, float** %5, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  store float %16, float* %22, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  store i8 0, i8* %24, align 1
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %48

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 0, i8* %33, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = call float @atof(i8* %35)
  %37 = load float*, float** %5, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  store float %36, float* %38, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call float @atof(i8* %39)
  %41 = load float*, float** %5, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  store float %40, float* %42, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call float @atof(i8* %43)
  %45 = load float*, float** %5, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  store float %44, float* %46, align 4
  br label %47

47:                                               ; preds = %32, %13
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local float @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
