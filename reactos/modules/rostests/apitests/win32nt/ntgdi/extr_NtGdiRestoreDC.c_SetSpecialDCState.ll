; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_SetSpecialDCState.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_SetSpecialDCState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hbrush = common dso_local global i32 0, align 4
@hpen = common dso_local global i32 0, align 4
@hbitmap = common dso_local global i32 0, align 4
@hfont = common dso_local global i32 0, align 4
@hrgn = common dso_local global i32 0, align 4
@MM_ANISOTROPIC = common dso_local global i32 0, align 4
@GM_ADVANCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SetSpecialDCState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetSpecialDCState(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @hbrush, align 4
  %5 = call i32 @SelectObject(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @hpen, align 4
  %8 = call i32 @SelectObject(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @hbitmap, align 4
  %11 = call i32 @SelectObject(i32 %9, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @hfont, align 4
  %14 = call i32 @SelectObject(i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @hrgn, align 4
  %17 = call i32 @SelectObject(i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @RGB(i32 12, i32 34, i32 56)
  %20 = call i32 @SetDCBrushColor(i32 %18, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @RGB(i32 23, i32 34, i32 45)
  %23 = call i32 @SetDCPenColor(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @MM_ANISOTROPIC, align 4
  %26 = call i32 @SetMapMode(i32 %24, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @GM_ADVANCED, align 4
  %29 = call i32 @SetGraphicsMode(i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @SetWindowOrgEx(i32 %30, i32 12, i32 34, i32* null)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @SetViewportOrgEx(i32 %32, i32 56, i32 78, i32* null)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @SetWindowExtEx(i32 %34, i32 123, i32 456, i32* null)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @SetViewportExtEx(i32 %36, i32 234, i32 567, i32* null)
  ret void
}

declare dso_local i32 @SelectObject(i32, i32) #1

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
