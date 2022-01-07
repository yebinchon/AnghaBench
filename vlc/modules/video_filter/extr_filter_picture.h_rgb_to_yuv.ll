; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_filter_picture.h_rgb_to_yuv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_filter_picture.h_rgb_to_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)* @rgb_to_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_to_yuv(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = mul nsw i32 66, %13
  %15 = load i32, i32* %11, align 4
  %16 = mul nsw i32 129, %15
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* %12, align 4
  %19 = mul nsw i32 25, %18
  %20 = add nsw i32 %17, %19
  %21 = add nsw i32 %20, 128
  %22 = ashr i32 %21, 8
  %23 = add nsw i32 %22, 16
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 -38, %25
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 74, %27
  %29 = sub nsw i32 %26, %28
  %30 = load i32, i32* %12, align 4
  %31 = mul nsw i32 112, %30
  %32 = add nsw i32 %29, %31
  %33 = add nsw i32 %32, 128
  %34 = ashr i32 %33, 8
  %35 = add nsw i32 %34, 128
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 112, %37
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 94, %39
  %41 = sub nsw i32 %38, %40
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 18, %42
  %44 = sub nsw i32 %41, %43
  %45 = add nsw i32 %44, 128
  %46 = ashr i32 %45, 8
  %47 = add nsw i32 %46, 128
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
