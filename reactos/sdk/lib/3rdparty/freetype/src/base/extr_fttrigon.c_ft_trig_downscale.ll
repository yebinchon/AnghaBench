; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_fttrigon.c_ft_trig_downscale.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_fttrigon.c_ft_trig_downscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT_TRIG_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @ft_trig_downscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ft_trig_downscale(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1, i32* %3, align 4
  %12 = load i64, i64* %2, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %2, align 8
  store i32 -1, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i64, i64* %2, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* %2, align 8
  %22 = trunc i64 %21 to i32
  %23 = ashr i32 %22, 16
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @FT_TRIG_SCALE, align 4
  %25 = and i32 %24, 65535
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @FT_TRIG_SCALE, align 4
  %27 = ashr i32 %26, 16
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 16
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 16
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 1073741824
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 1073741824
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %17
  %80 = load i64, i64* %2, align 8
  %81 = sub nsw i64 0, %80
  br label %84

82:                                               ; preds = %17
  %83 = load i64, i64* %2, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  ret i64 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
