; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/mkhive/extr_reginf.c_get_root_key.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/mkhive/extr_reginf.c_get_root_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKCR = common dso_local global i32 0, align 4
@HKCRPath = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HKCU = common dso_local global i32 0, align 4
@HKCUPath = common dso_local global i32 0, align 4
@HKLM = common dso_local global i32 0, align 4
@HKLMPath = common dso_local global i32 0, align 4
@HKU = common dso_local global i32 0, align 4
@HKUPath = common dso_local global i32 0, align 4
@BCD = common dso_local global i32 0, align 4
@BCDPath = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HKR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_root_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_root_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @HKCR, align 4
  %6 = call i32 @strcmpiW(i32 %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @HKCRPath, align 4
  %11 = call i32 @strcpyW(i32 %9, i32 %10)
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @HKCU, align 4
  %16 = call i32 @strcmpiW(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @HKCUPath, align 4
  %21 = call i32 @strcpyW(i32 %19, i32 %20)
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @HKLM, align 4
  %26 = call i32 @strcmpiW(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @HKLMPath, align 4
  %31 = call i32 @strcpyW(i32 %29, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @HKU, align 4
  %36 = call i32 @strcmpiW(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @HKUPath, align 4
  %41 = call i32 @strcpyW(i32 %39, i32 %40)
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @BCD, align 4
  %46 = call i32 @strcmpiW(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @BCDPath, align 4
  %51 = call i32 @strcpyW(i32 %49, i32 %50)
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %48, %38, %28, %18, %8
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @strcmpiW(i32, i32) #1

declare dso_local i32 @strcpyW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
