; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_insertOrDeleteCost.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_insertOrDeleteCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCLASS_SILENT = common dso_local global i8 0, align 1
@CCLASS_VOWEL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8, i8)* @insertOrDeleteCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insertOrDeleteCost(i8 signext %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load i8, i8* %5, align 1
  %11 = load i8, i8* %6, align 1
  %12 = call signext i8 @characterClass(i8 signext %10, i8 signext %11)
  store i8 %12, i8* %8, align 1
  %13 = load i8, i8* %8, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @CCLASS_SILENT, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 10, i32* %4, align 4
  br label %59

26:                                               ; preds = %19
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @CCLASS_VOWEL, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i8, i8* %5, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 114
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 114
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  store i32 20, i32* %4, align 4
  br label %59

41:                                               ; preds = %36, %26
  %42 = load i8, i8* %5, align 1
  %43 = load i8, i8* %5, align 1
  %44 = call signext i8 @characterClass(i8 signext %42, i8 signext %43)
  store i8 %44, i8* %9, align 1
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @CCLASS_VOWEL, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 15, i32* %4, align 4
  br label %59

57:                                               ; preds = %50
  store i32 50, i32* %4, align 4
  br label %59

58:                                               ; preds = %41
  store i32 100, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57, %56, %40, %25, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local signext i8 @characterClass(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
