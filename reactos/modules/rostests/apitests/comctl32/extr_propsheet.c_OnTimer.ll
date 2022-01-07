; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_propsheet.c_OnTimer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_propsheet.c_OnTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_bNotified = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_APPLY_BUTTON = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PSBTN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OnTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OnTimer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @KillTimer(i32 %7, i32 %8)
  %10 = load i32, i32* @s_bNotified, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @ok_int(i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GetParent(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IDC_APPLY_BUTTON, align 4
  %17 = call i32 @GetDlgItem(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @IsWindowEnabled(i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @ok_int(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @PropSheet_Changed(i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @IsWindowEnabled(i32 %25)
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @ok_int(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @PropSheet_UnChanged(i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @IsWindowEnabled(i32 %32)
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @ok_int(i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PSBTN_OK, align 4
  %38 = call i32 @PropSheet_PressButton(i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @KillTimer(i32, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @IsWindowEnabled(i32) #1

declare dso_local i32 @PropSheet_Changed(i32, i32) #1

declare dso_local i32 @PropSheet_UnChanged(i32, i32) #1

declare dso_local i32 @PropSheet_PressButton(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
