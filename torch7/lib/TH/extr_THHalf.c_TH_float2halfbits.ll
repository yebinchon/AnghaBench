; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THHalf.c_TH_float2halfbits.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THHalf.c_TH_float2halfbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TH_float2halfbits(float* %0, i16* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i16* %1, i16** %4, align 8
  %15 = load float*, float** %3, align 8
  %16 = bitcast float* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ugt i32 %20, 2139095040
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i16*, i16** %4, align 8
  store i16 32767, i16* %23, align 2
  br label %101

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 32768
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %28, 1199566847
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, 31744
  %33 = trunc i32 %32 to i16
  %34 = load i16*, i16** %4, align 8
  store i16 %33, i16* %34, align 2
  br label %101

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %36, 855638017
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = trunc i32 %39 to i16
  %41 = load i16*, i16** %4, align 8
  store i16 %40, i16* %41, align 2
  br label %101

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = lshr i32 %43, 23
  %45 = and i32 %44, 255
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 8388607
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ugt i32 %48, 112
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  store i32 13, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sub i32 %51, 112
  store i32 %52, i32* %13, align 4
  br label %58

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  %55 = sub i32 126, %54
  store i32 %55, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, 8388608
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = lshr i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %14, align 4
  %70 = lshr i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78, %58
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = and i32 %85, 1023
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %91, %78, %74
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = shl i32 %94, 10
  %96 = or i32 %93, %95
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %96, %97
  %99 = trunc i32 %98 to i16
  %100 = load i16*, i16** %4, align 8
  store i16 %99, i16* %100, align 2
  br label %101

101:                                              ; preds = %92, %38, %30, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
