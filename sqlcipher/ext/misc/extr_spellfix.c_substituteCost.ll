; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_substituteCost.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_substituteCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCLASS_B = common dso_local global i8 0, align 1
@CCLASS_Y = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8, i8)* @substituteCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @substituteCost(i8 signext %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load i8, i8* %6, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

16:                                               ; preds = %3
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  %21 = xor i32 %20, 32
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load i8, i8* %7, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 65
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 90
  br i1 %30, label %39, label %31

31:                                               ; preds = %27, %23
  %32 = load i8, i8* %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 97
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 122
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %27
  store i32 0, i32* %4, align 4
  br label %79

40:                                               ; preds = %35, %31, %16
  %41 = load i8, i8* %5, align 1
  %42 = load i8, i8* %6, align 1
  %43 = call signext i8 @characterClass(i8 signext %41, i8 signext %42)
  store i8 %43, i8* %8, align 1
  %44 = load i8, i8* %5, align 1
  %45 = load i8, i8* %7, align 1
  %46 = call signext i8 @characterClass(i8 signext %44, i8 signext %45)
  store i8 %46, i8* %9, align 1
  %47 = load i8, i8* %8, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 40, i32* %4, align 4
  br label %79

53:                                               ; preds = %40
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @CCLASS_B, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i8, i8* %8, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @CCLASS_Y, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i8, i8* %9, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @CCLASS_B, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i8, i8* %9, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* @CCLASS_Y, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 75, i32* %4, align 4
  br label %79

78:                                               ; preds = %71, %65, %59, %53
  store i32 100, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %77, %52, %39, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local signext i8 @characterClass(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
