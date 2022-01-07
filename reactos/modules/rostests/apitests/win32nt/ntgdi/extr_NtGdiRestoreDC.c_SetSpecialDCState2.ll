; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_SetSpecialDCState2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_SetSpecialDCState2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DC_BRUSH = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@DEFAULT_BITMAP = common dso_local global i32 0, align 4
@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@hrgn2 = common dso_local global i32 0, align 4
@MM_ISOTROPIC = common dso_local global i32 0, align 4
@GM_COMPATIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SetSpecialDCState2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetSpecialDCState2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @DC_BRUSH, align 4
  %5 = call i32 @GetStockObject(i32 %4)
  %6 = call i32 @SelectObject(i32 %3, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @DC_PEN, align 4
  %9 = call i32 @GetStockObject(i32 %8)
  %10 = call i32 @SelectObject(i32 %7, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @DEFAULT_BITMAP, align 4
  %13 = call i32 @GetStockObject(i32 %12)
  %14 = call i32 @SelectObject(i32 %11, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %17 = call i32 @GetStockObject(i32 %16)
  %18 = call i32 @SelectObject(i32 %15, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @hrgn2, align 4
  %21 = call i32 @SelectObject(i32 %19, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @RGB(i32 65, i32 43, i32 21)
  %24 = call i32 @SetDCBrushColor(i32 %22, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @RGB(i32 54, i32 43, i32 32)
  %27 = call i32 @SetDCPenColor(i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @MM_ISOTROPIC, align 4
  %30 = call i32 @SetMapMode(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @GM_COMPATIBLE, align 4
  %33 = call i32 @SetGraphicsMode(i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @SetWindowOrgEx(i32 %34, i32 43, i32 21, i32* null)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @SetViewportOrgEx(i32 %36, i32 87, i32 65, i32* null)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @SetWindowExtEx(i32 %38, i32 654, i32 321, i32* null)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @SetViewportExtEx(i32 %40, i32 765, i32 432, i32* null)
  ret void
}

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @SetDCBrushColor(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32 @SetMapMode(i32, i32) #1

declare dso_local i32 @SetGraphicsMode(i32, i32) #1

declare dso_local i32 @SetWindowOrgEx(i32, i32, i32, i32*) #1

declare dso_local i32 @SetViewportOrgEx(i32, i32, i32, i32*) #1

declare dso_local i32 @SetWindowExtEx(i32, i32, i32, i32*) #1

declare dso_local i32 @SetViewportExtEx(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
