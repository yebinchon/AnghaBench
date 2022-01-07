; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_wine_compare_string.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_wine_compare_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NORM_IGNORENONSPACE = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wine_compare_string(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @compare_unicode_weights(i32 %12, i32* %13, i32 %14, i32* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NORM_IGNORENONSPACE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @compare_diacritic_weights(i32 %26, i32* %27, i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NORM_IGNORECASE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @compare_case_weights(i32 %41, i32* %42, i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %40, %35, %32
  br label %48

48:                                               ; preds = %47, %5
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @compare_unicode_weights(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @compare_diacritic_weights(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @compare_case_weights(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
