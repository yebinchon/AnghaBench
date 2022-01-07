; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_ConvertDelDrInnerFec.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_ConvertDelDrInnerFec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCAN_CODERATE_AUTO = common dso_local global i32 0, align 4
@SCAN_CODERATE_1_2 = common dso_local global i32 0, align 4
@SCAN_CODERATE_2_3 = common dso_local global i32 0, align 4
@SCAN_CODERATE_3_4 = common dso_local global i32 0, align 4
@SCAN_CODERATE_5_6 = common dso_local global i32 0, align 4
@SCAN_CODERATE_7_8 = common dso_local global i32 0, align 4
@SCAN_CODERATE_8_9 = common dso_local global i32 0, align 4
@SCAN_CODERATE_3_5 = common dso_local global i32 0, align 4
@SCAN_CODERATE_4_5 = common dso_local global i32 0, align 4
@SCAN_CODERATE_9_10 = common dso_local global i32 0, align 4
@SCAN_CODERATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ConvertDelDrInnerFec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertDelDrInnerFec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 3, label %12
    i32 4, label %14
    i32 5, label %16
    i32 6, label %18
    i32 7, label %20
    i32 8, label %22
    i32 9, label %24
    i32 15, label %26
  ]

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, i32* @SCAN_CODERATE_AUTO, align 4
  store i32 %7, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load i32, i32* @SCAN_CODERATE_1_2, align 4
  store i32 %9, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @SCAN_CODERATE_2_3, align 4
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load i32, i32* @SCAN_CODERATE_3_4, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @SCAN_CODERATE_5_6, align 4
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @SCAN_CODERATE_7_8, align 4
  store i32 %17, i32* %2, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @SCAN_CODERATE_8_9, align 4
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @SCAN_CODERATE_3_5, align 4
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @SCAN_CODERATE_4_5, align 4
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @SCAN_CODERATE_9_10, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @SCAN_CODERATE_NONE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
