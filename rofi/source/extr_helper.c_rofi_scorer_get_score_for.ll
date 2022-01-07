; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_scorer_get_score_for.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_scorer_get_score_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NON_WORD = common dso_local global i32 0, align 4
@WORD_START_SCORE = common dso_local global i32 0, align 4
@LOWER = common dso_local global i32 0, align 4
@UPPER = common dso_local global i32 0, align 4
@DIGIT = common dso_local global i32 0, align 4
@CAMEL_SCORE = common dso_local global i32 0, align 4
@NON_WORD_SCORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rofi_scorer_get_score_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rofi_scorer_get_score_for(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NON_WORD, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NON_WORD, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @WORD_START_SCORE, align 4
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LOWER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UPPER, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DIGIT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DIGIT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %19
  %32 = load i32, i32* @CAMEL_SCORE, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NON_WORD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @NON_WORD_SCORE, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %31, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
