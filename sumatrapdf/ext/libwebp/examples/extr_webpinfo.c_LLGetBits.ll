; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_LLGetBits.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_LLGetBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32*, i32*)* @LLGetBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LLGetBits(i32* %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %55, %5
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = ashr i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %8, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %57

30:                                               ; preds = %20
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = ashr i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, 7
  %39 = shl i32 1, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i64, i64* %12, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %47, %49
  %51 = or i32 %46, %50
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %30
  br label %16

56:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
