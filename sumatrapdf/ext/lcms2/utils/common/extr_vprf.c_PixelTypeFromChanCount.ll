; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_vprf.c_PixelTypeFromChanCount.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_vprf.c_PixelTypeFromChanCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PT_GRAY = common dso_local global i32 0, align 4
@PT_MCH2 = common dso_local global i32 0, align 4
@PT_MCH3 = common dso_local global i32 0, align 4
@PT_CMYK = common dso_local global i32 0, align 4
@PT_MCH5 = common dso_local global i32 0, align 4
@PT_MCH6 = common dso_local global i32 0, align 4
@PT_MCH7 = common dso_local global i32 0, align 4
@PT_MCH8 = common dso_local global i32 0, align 4
@PT_MCH9 = common dso_local global i32 0, align 4
@PT_MCH10 = common dso_local global i32 0, align 4
@PT_MCH11 = common dso_local global i32 0, align 4
@PT_MCH12 = common dso_local global i32 0, align 4
@PT_MCH13 = common dso_local global i32 0, align 4
@PT_MCH14 = common dso_local global i32 0, align 4
@PT_MCH15 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"What a weird separation of %d channels?!?!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PixelTypeFromChanCount(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %35 [
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
    i32 4, label %11
    i32 5, label %13
    i32 6, label %15
    i32 7, label %17
    i32 8, label %19
    i32 9, label %21
    i32 10, label %23
    i32 11, label %25
    i32 12, label %27
    i32 13, label %29
    i32 14, label %31
    i32 15, label %33
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @PT_GRAY, align 4
  store i32 %6, i32* %2, align 4
  br label %38

7:                                                ; preds = %1
  %8 = load i32, i32* @PT_MCH2, align 4
  store i32 %8, i32* %2, align 4
  br label %38

9:                                                ; preds = %1
  %10 = load i32, i32* @PT_MCH3, align 4
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @PT_CMYK, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @PT_MCH5, align 4
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @PT_MCH6, align 4
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %1
  %18 = load i32, i32* @PT_MCH7, align 4
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  %20 = load i32, i32* @PT_MCH8, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load i32, i32* @PT_MCH9, align 4
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %1
  %24 = load i32, i32* @PT_MCH10, align 4
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %1
  %26 = load i32, i32* @PT_MCH11, align 4
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* @PT_MCH12, align 4
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @PT_MCH13, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load i32, i32* @PT_MCH14, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load i32, i32* @PT_MCH15, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @FatalError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @FatalError(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
