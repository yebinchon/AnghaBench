; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_splash.c_pixel_blend.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_splash.c_pixel_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @pixel_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pixel_blend(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 16711935
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 65280
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 16711935
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 65280
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %32, 8388736
  %34 = ashr i32 %33, 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = and i32 %36, 16711935
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, 32768
  %44 = ashr i32 %43, 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %44, %45
  %47 = and i32 %46, 65280
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
