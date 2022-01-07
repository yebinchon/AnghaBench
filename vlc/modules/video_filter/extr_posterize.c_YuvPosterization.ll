; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_posterize.c_YuvPosterization.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_posterize.c_YuvPosterization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)* @YuvPosterization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @YuvPosterization(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @yuv_to_rgb(i32* %19, i32* %20, i32* %21, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @yuv_to_rgb(i32* %22, i32* %24, i32* %23, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %36, %37
  %39 = sdiv i32 %38, 2
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @yuv_to_rgb(i32* %25, i32* %26, i32* %27, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @POSTERIZE_PIXEL(i32 %43, i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @POSTERIZE_PIXEL(i32 %46, i32 %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @POSTERIZE_PIXEL(i32 %49, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @POSTERIZE_PIXEL(i32 %52, i32 %53)
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %24, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @POSTERIZE_PIXEL(i32 %55, i32 %56)
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @POSTERIZE_PIXEL(i32 %58, i32 %59)
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %25, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @POSTERIZE_PIXEL(i32 %61, i32 %62)
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @POSTERIZE_PIXEL(i32 %64, i32 %65)
  store i32 %66, i32* %26, align 4
  %67 = load i32, i32* %27, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @POSTERIZE_PIXEL(i32 %67, i32 %68)
  store i32 %69, i32* %27, align 4
  %70 = load i32, i32* %19, align 4
  %71 = mul nsw i32 66, %70
  %72 = load i32, i32* %20, align 4
  %73 = mul nsw i32 129, %72
  %74 = add nsw i32 %71, %73
  %75 = load i32, i32* %21, align 4
  %76 = mul nsw i32 25, %75
  %77 = add nsw i32 %74, %76
  %78 = add nsw i32 %77, 128
  %79 = ashr i32 %78, 8
  %80 = add nsw i32 %79, 16
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %22, align 4
  %83 = mul nsw i32 66, %82
  %84 = load i32, i32* %24, align 4
  %85 = mul nsw i32 129, %84
  %86 = add nsw i32 %83, %85
  %87 = load i32, i32* %23, align 4
  %88 = mul nsw i32 25, %87
  %89 = add nsw i32 %86, %88
  %90 = add nsw i32 %89, 128
  %91 = ashr i32 %90, 8
  %92 = add nsw i32 %91, 16
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %25, align 4
  %95 = mul nsw i32 -38, %94
  %96 = load i32, i32* %26, align 4
  %97 = mul nsw i32 74, %96
  %98 = sub nsw i32 %95, %97
  %99 = load i32, i32* %27, align 4
  %100 = mul nsw i32 112, %99
  %101 = add nsw i32 %98, %100
  %102 = add nsw i32 %101, 128
  %103 = ashr i32 %102, 8
  %104 = add nsw i32 %103, 128
  %105 = load i32*, i32** %12, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %25, align 4
  %107 = mul nsw i32 112, %106
  %108 = load i32, i32* %26, align 4
  %109 = mul nsw i32 94, %108
  %110 = sub nsw i32 %107, %109
  %111 = load i32, i32* %27, align 4
  %112 = mul nsw i32 18, %111
  %113 = sub nsw i32 %110, %112
  %114 = add nsw i32 %113, 128
  %115 = ashr i32 %114, 8
  %116 = add nsw i32 %115, 128
  %117 = load i32*, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  ret void
}

declare dso_local i32 @yuv_to_rgb(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @POSTERIZE_PIXEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
