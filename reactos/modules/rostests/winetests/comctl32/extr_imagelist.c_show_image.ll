; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_show_image.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_show_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@winetest_interactive = common dso_local global i32 0, align 4
@ILD_TRANSPARENT = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i32, i32, i64)* @show_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @show_image(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* @winetest_interactive, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %6
  store i32* null, i32** %7, align 8
  br label %52

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @SetWindowTextA(i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @GetDC(i32 %25)
  store i32* %26, i32** %14, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* @ILD_TRANSPARENT, align 4
  %31 = call i32 @pImageList_Draw(i32 %27, i32 %28, i32* %29, i32 0, i32 0, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @force_redraw(i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %21
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @SRCCOPY, align 4
  %46 = call i32 @BitBlt(i32* %37, i32 0, i32 0, i32 %38, i32 %39, i32* %40, i32 %42, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @ReleaseDC(i32 %47, i32* %48)
  store i32* null, i32** %14, align 8
  br label %50

50:                                               ; preds = %36, %21
  %51 = load i32*, i32** %14, align 8
  store i32* %51, i32** %7, align 8
  br label %52

52:                                               ; preds = %50, %20
  %53 = load i32*, i32** %7, align 8
  ret i32* %53
}

declare dso_local i32 @SetWindowTextA(i32, i32) #1

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @pImageList_Draw(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @force_redraw(i32) #1

declare dso_local i32 @BitBlt(i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
