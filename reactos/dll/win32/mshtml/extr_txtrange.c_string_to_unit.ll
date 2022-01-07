; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_string_to_unit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_string_to_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@string_to_unit.characterW = internal constant [10 x i8] c"character\00", align 1
@string_to_unit.wordW = internal constant [5 x i8] c"word\00", align 1
@string_to_unit.sentenceW = internal constant [9 x i8] c"sentence\00", align 1
@string_to_unit.texteditW = internal constant [9 x i8] c"textedit\00", align 1
@RU_CHAR = common dso_local global i32 0, align 4
@RU_WORD = common dso_local global i32 0, align 4
@RU_SENTENCE = common dso_local global i32 0, align 4
@RU_TEXTEDIT = common dso_local global i32 0, align 4
@RU_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @string_to_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_to_unit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @strcmpiW(i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @string_to_unit.characterW, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @RU_CHAR, align 4
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @strcmpiW(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @string_to_unit.wordW, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @RU_WORD, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @strcmpiW(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @string_to_unit.sentenceW, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @RU_SENTENCE, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @strcmpiW(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @string_to_unit.texteditW, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @RU_TEXTEDIT, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @RU_UNKNOWN, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %19, %13, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @strcmpiW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
