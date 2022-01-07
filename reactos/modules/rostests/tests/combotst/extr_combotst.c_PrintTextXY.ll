; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_PrintTextXY.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_PrintTextXY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_hwnd = common dso_local global i32 0, align 4
@SYSTEM_FIXED_FONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintTextXY(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @g_hwnd, align 4
  %13 = call i32 @GetDC(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @SYSTEM_FIXED_FONT, align 4
  %16 = call i32 @GetStockObject(i32 %15)
  %17 = call i32 @SelectObject(i32 %14, i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @TextOut(i32 %18, i32 %19, i32 %20, i8* %21, i32 %22)
  %24 = load i32, i32* @g_hwnd, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ReleaseDC(i32 %24, i32 %25)
  %27 = load i32, i32* @g_hwnd, align 4
  %28 = call i32 @ValidateRect(i32 %27, i32* %10)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @TextOut(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @ValidateRect(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
