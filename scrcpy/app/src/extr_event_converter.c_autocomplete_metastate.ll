; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_event_converter.c_autocomplete_metastate.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_event_converter.c_autocomplete_metastate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMETA_SHIFT_LEFT_ON = common dso_local global i32 0, align 4
@AMETA_SHIFT_RIGHT_ON = common dso_local global i32 0, align 4
@AMETA_SHIFT_ON = common dso_local global i32 0, align 4
@AMETA_CTRL_LEFT_ON = common dso_local global i32 0, align 4
@AMETA_CTRL_RIGHT_ON = common dso_local global i32 0, align 4
@AMETA_CTRL_ON = common dso_local global i32 0, align 4
@AMETA_ALT_LEFT_ON = common dso_local global i32 0, align 4
@AMETA_ALT_RIGHT_ON = common dso_local global i32 0, align 4
@AMETA_ALT_ON = common dso_local global i32 0, align 4
@AMETA_META_LEFT_ON = common dso_local global i32 0, align 4
@AMETA_META_RIGHT_ON = common dso_local global i32 0, align 4
@AMETA_META_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @autocomplete_metastate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autocomplete_metastate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @AMETA_SHIFT_LEFT_ON, align 4
  %5 = load i32, i32* @AMETA_SHIFT_RIGHT_ON, align 4
  %6 = or i32 %4, %5
  %7 = and i32 %3, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @AMETA_SHIFT_ON, align 4
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @AMETA_CTRL_LEFT_ON, align 4
  %16 = load i32, i32* @AMETA_CTRL_RIGHT_ON, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @AMETA_CTRL_ON, align 4
  %22 = load i32, i32* %2, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @AMETA_ALT_LEFT_ON, align 4
  %27 = load i32, i32* @AMETA_ALT_RIGHT_ON, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @AMETA_ALT_ON, align 4
  %33 = load i32, i32* %2, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @AMETA_META_LEFT_ON, align 4
  %38 = load i32, i32* @AMETA_META_RIGHT_ON, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @AMETA_META_ON, align 4
  %44 = load i32, i32* %2, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
