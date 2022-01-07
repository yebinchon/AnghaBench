; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/demux/extr_anim_decode.c_BlendPixelNonPremult.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/demux/extr_anim_decode.c_BlendPixelNonPremult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @BlendPixelNonPremult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlendPixelNonPremult(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 24
  %16 = and i32 %15, 255
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 256, %26
  %28 = mul nsw i32 %25, %27
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 16777216, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @BlendChannelNonPremult(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @BlendChannelNonPremult(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 8)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @BlendChannelNonPremult(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 16)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp slt i32 %57, 256
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 0
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %62, %64
  %66 = load i32, i32* %13, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %65, %67
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %69, 24
  %71 = or i32 %68, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %21, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @BlendChannelNonPremult(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
