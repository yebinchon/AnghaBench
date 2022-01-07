; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_unicode_lex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_unicode_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lex_Generic = common dso_local global i32 0, align 4
@lex_ZWJ = common dso_local global i32 0, align 4
@lex_ZWNJ = common dso_local global i32 0, align 4
@lex_NBSP = common dso_local global i32 0, align 4
@indic_syllabic_table = common dso_local global i32 0, align 4
@lex_Modifier = common dso_local global i32 0, align 4
@lex_Consonant = common dso_local global i32 0, align 4
@lex_Nukta = common dso_local global i32 0, align 4
@lex_Halant = common dso_local global i32 0, align 4
@lex_Vowel = common dso_local global i32 0, align 4
@lex_Matra_post = common dso_local global i32 0, align 4
@lex_Matra_pre = common dso_local global i32 0, align 4
@lex_Composed_Vowel = common dso_local global i32 0, align 4
@lex_Matra_above = common dso_local global i32 0, align 4
@lex_Matra_below = common dso_local global i32 0, align 4
@lex_Ra = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @unicode_lex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_lex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @lex_Generic, align 4
  store i32 %8, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 8205
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @lex_ZWJ, align 4
  store i32 %13, i32* %2, align 4
  br label %61

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 8204
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @lex_ZWNJ, align 4
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 160
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @lex_NBSP, align 4
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %19
  %25 = load i32, i32* @indic_syllabic_table, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @get_table_entry(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 255
  %30 = icmp ne i32 %29, 7
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %37 [
    i32 3335, label %36
    i32 3591, label %36
    i32 1, label %39
    i32 2, label %39
    i32 17, label %39
    i32 18, label %39
    i32 19, label %39
    i32 20, label %39
    i32 3, label %41
    i32 9, label %41
    i32 10, label %41
    i32 11, label %41
    i32 13, label %41
    i32 14, label %41
    i32 15, label %41
    i32 16, label %41
    i32 4, label %43
    i32 5, label %45
    i32 6, label %47
    i32 8, label %47
    i32 7, label %49
    i32 263, label %49
    i32 519, label %51
    i32 775, label %51
    i32 2055, label %53
    i32 2311, label %53
    i32 2567, label %53
    i32 2823, label %53
    i32 3079, label %53
    i32 1031, label %53
    i32 1287, label %55
    i32 1543, label %57
    i32 12, label %59
    i32 21, label %59
  ]

36:                                               ; preds = %34, %34
  br label %37

37:                                               ; preds = %34, %36
  %38 = load i32, i32* @lex_Generic, align 4
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %34, %34, %34, %34, %34, %34
  %40 = load i32, i32* @lex_Modifier, align 4
  store i32 %40, i32* %2, align 4
  br label %61

41:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34
  %42 = load i32, i32* @lex_Consonant, align 4
  store i32 %42, i32* %2, align 4
  br label %61

43:                                               ; preds = %34
  %44 = load i32, i32* @lex_Nukta, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %34
  %46 = load i32, i32* @lex_Halant, align 4
  store i32 %46, i32* %2, align 4
  br label %61

47:                                               ; preds = %34, %34
  %48 = load i32, i32* @lex_Vowel, align 4
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %34, %34
  %50 = load i32, i32* @lex_Matra_post, align 4
  store i32 %50, i32* %2, align 4
  br label %61

51:                                               ; preds = %34, %34
  %52 = load i32, i32* @lex_Matra_pre, align 4
  store i32 %52, i32* %2, align 4
  br label %61

53:                                               ; preds = %34, %34, %34, %34, %34, %34
  %54 = load i32, i32* @lex_Composed_Vowel, align 4
  store i32 %54, i32* %2, align 4
  br label %61

55:                                               ; preds = %34
  %56 = load i32, i32* @lex_Matra_above, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %34
  %58 = load i32, i32* @lex_Matra_below, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %34, %34
  %60 = load i32, i32* @lex_Ra, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %22, %17, %12, %7
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @get_table_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
