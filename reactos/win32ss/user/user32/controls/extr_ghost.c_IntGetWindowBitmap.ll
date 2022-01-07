; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_IntGetWindowBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_IntGetWindowBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRCCOPY = common dso_local global i32 0, align 4
@CAPTUREBLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @IntGetWindowBitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @IntGetWindowBitmap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GetWindowDC(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %52

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @CreateCompatibleDC(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %47

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32* @IntCreate32BppBitmap(i32 %24, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @SelectObject(i32 %30, i32* %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SRCCOPY, align 4
  %38 = load i32, i32* @CAPTUREBLT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @BitBlt(i32 %33, i32 0, i32 0, i32 %34, i32 %35, i32 %36, i32 0, i32 0, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32* @SelectObject(i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %29, %23
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @DeleteDC(i32 %45)
  br label %47

47:                                               ; preds = %44, %22
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ReleaseDC(i32 %48, i32 %49)
  %51 = load i32*, i32** %8, align 8
  store i32* %51, i32** %4, align 8
  br label %52

52:                                               ; preds = %47, %16
  %53 = load i32*, i32** %4, align 8
  ret i32* %53
}

declare dso_local i32 @GetWindowDC(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32* @IntCreate32BppBitmap(i32, i32) #1

declare dso_local i32* @SelectObject(i32, i32*) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
