; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pm.c_sci_update.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pm.c_sci_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pm1_enable = common dso_local global i32 0, align 4
@PM1_TMR_EN = common dso_local global i32 0, align 4
@pm1_status = common dso_local global i32 0, align 4
@PM1_TMR_STS = common dso_local global i32 0, align 4
@PM1_GBL_EN = common dso_local global i32 0, align 4
@PM1_GBL_STS = common dso_local global i32 0, align 4
@PM1_PWRBTN_EN = common dso_local global i32 0, align 4
@PM1_PWRBTN_STS = common dso_local global i32 0, align 4
@PM1_SLPBTN_EN = common dso_local global i32 0, align 4
@PM1_SLPBTN_STS = common dso_local global i32 0, align 4
@PM1_RTC_EN = common dso_local global i32 0, align 4
@PM1_RTC_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sci_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_update() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @pm1_enable, align 4
  %3 = load i32, i32* @PM1_TMR_EN, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @pm1_status, align 4
  %8 = load i32, i32* @PM1_TMR_STS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %6, %0
  %13 = load i32, i32* @pm1_enable, align 4
  %14 = load i32, i32* @PM1_GBL_EN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @pm1_status, align 4
  %19 = load i32, i32* @PM1_GBL_STS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %17, %12
  %24 = load i32, i32* @pm1_enable, align 4
  %25 = load i32, i32* @PM1_PWRBTN_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @pm1_status, align 4
  %30 = load i32, i32* @PM1_PWRBTN_STS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %28, %23
  %35 = load i32, i32* @pm1_enable, align 4
  %36 = load i32, i32* @PM1_SLPBTN_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @pm1_status, align 4
  %41 = load i32, i32* @PM1_SLPBTN_STS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %1, align 4
  br label %45

45:                                               ; preds = %44, %39, %34
  %46 = load i32, i32* @pm1_enable, align 4
  %47 = load i32, i32* @PM1_RTC_EN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @pm1_status, align 4
  %52 = load i32, i32* @PM1_RTC_STS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %1, align 4
  br label %56

56:                                               ; preds = %55, %50, %45
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @sci_assert()
  br label %63

61:                                               ; preds = %56
  %62 = call i32 (...) @sci_deassert()
  br label %63

63:                                               ; preds = %61, %59
  ret void
}

declare dso_local i32 @sci_assert(...) #1

declare dso_local i32 @sci_deassert(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
