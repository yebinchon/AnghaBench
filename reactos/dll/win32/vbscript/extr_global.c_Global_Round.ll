; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Round.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_Round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_Round(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @debugstr_variant(i32* %12)
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @V_VT(i32* %20)
  switch i32 %21, label %30 [
    i32 130, label %22
    i32 129, label %22
    i32 131, label %22
    i32 128, label %27
  ]

22:                                               ; preds = %19, %19, %19
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @S_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %44

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = call double @V_R8(i32* %28)
  store double %29, double* %10, align 8
  br label %39

30:                                               ; preds = %19
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @to_double(i32* %31, double* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @FAILED(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32*, i32** %9, align 8
  %41 = load double, double* %10, align 8
  %42 = call i32 @round(double %41)
  %43 = call i32 @return_double(i32* %40, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %36, %22, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local double @V_R8(i32*) #1

declare dso_local i32 @to_double(i32*, double*) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @return_double(i32*, i32) #1

declare dso_local i32 @round(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
