; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_CreateMDIMenuBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_CreateMDIMenuBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBM_OLD_CLOSE = common dso_local global i32 0, align 4
@SM_CXSIZE = common dso_local global i32 0, align 4
@SM_CYSIZE = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@BLACK_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CreateMDIMenuBitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateMDIMenuBitmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @CreateCompatibleDC(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @OBM_OLD_CLOSE, align 4
  %11 = call i32 @MAKEINTRESOURCEW(i32 %10)
  %12 = call i32 @LoadBitmapW(i32 0, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SelectObject(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @SM_CXSIZE, align 4
  %18 = call i64 @GetSystemMetrics(i32 %17)
  %19 = load i32, i32* @SM_CYSIZE, align 4
  %20 = call i64 @GetSystemMetrics(i32 %19)
  %21 = call i32 @CreateCompatibleBitmap(i32 %16, i64 %18, i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @SelectObject(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SM_CXSIZE, align 4
  %27 = call i64 @GetSystemMetrics(i32 %26)
  %28 = load i32, i32* @SM_CYSIZE, align 4
  %29 = call i64 @GetSystemMetrics(i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @SM_CXSIZE, align 4
  %32 = call i64 @GetSystemMetrics(i32 %31)
  %33 = load i32, i32* @SRCCOPY, align 4
  %34 = call i32 @BitBlt(i32 %25, i32 0, i32 0, i64 %27, i64 %29, i32 %30, i64 %32, i32 0, i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @SelectObject(i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @DeleteObject(i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @DeleteDC(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @BLACK_PEN, align 4
  %44 = call i32 @GetStockObject(i32 %43)
  %45 = call i32 @SelectObject(i32 %42, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SM_CXSIZE, align 4
  %48 = call i64 @GetSystemMetrics(i32 %47)
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @MoveToEx(i32 %46, i64 %49, i32 0, i32* null)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @SM_CXSIZE, align 4
  %53 = call i64 @GetSystemMetrics(i32 %52)
  %54 = sub nsw i64 %53, 1
  %55 = load i32, i32* @SM_CYSIZE, align 4
  %56 = call i64 @GetSystemMetrics(i32 %55)
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @LineTo(i32 %51, i64 %54, i64 %57)
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @SelectObject(i32 %59, i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @SelectObject(i32 %62, i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @DeleteDC(i32 %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @LoadBitmapW(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i64, i64) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i64, i64, i32, i64, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @MoveToEx(i32, i64, i32, i32*) #1

declare dso_local i32 @LineTo(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
