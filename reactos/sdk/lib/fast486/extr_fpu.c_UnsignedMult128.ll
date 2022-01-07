; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fast486/extr_fpu.c_UnsignedMult128.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fast486/extr_fpu.c_UnsignedMult128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @UnsignedMult128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UnsignedMult128(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, 4294967295
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = mul nsw i32 %30, %32
  store i32 %33, i32* %13, align 4
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  %38 = mul nsw i32 %35, %37
  store i32 %38, i32* %15, align 4
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  %43 = mul nsw i32 %40, %42
  store i32 %43, i32* %16, align 4
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = mul nsw i32 %45, %47
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %3
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4294967296
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %56, %3
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %64, 4294967295
  store i64 %65, i64* %11, align 8
  %66 = load i32, i32* %14, align 4
  %67 = ashr i32 %66, 32
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 32
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = ashr i32 %74, 32
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %11, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %62
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %79, %62
  %84 = load i64, i64* %12, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %84
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load i32, i32* %13, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
