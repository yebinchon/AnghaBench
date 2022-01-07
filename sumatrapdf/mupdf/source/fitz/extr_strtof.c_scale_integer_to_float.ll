; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_scale_integer_to_float.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_scale_integer_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INFINITY = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, i32)* @scale_integer_to_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @scale_integer_to_float(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, float -0.000000e+00, float 0.000000e+00
  store float %17, float* %4, align 4
  br label %92

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 38
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* @ERANGE, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load float, float* @INFINITY, align 4
  %27 = fneg float %26
  br label %30

28:                                               ; preds = %21
  %29 = load float, float* @INFINITY, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi float [ %27, %25 ], [ %29, %28 ]
  store float %31, float* %4, align 4
  br label %92

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, -54
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @ERANGE, align 4
  store i32 %36, i32* @errno, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, float -0.000000e+00, float 0.000000e+00
  store float %40, float* %4, align 4
  br label %92

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %50, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 13
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp ule i32 %46, 429496729
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 %51, 10
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %42

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %65, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, -13
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = srem i32 %60, 10
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = load i32, i32* %5, align 4
  %67 = sdiv i32 %66, 10
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %56

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @uint32_to_diy(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @strtof_cached_power(i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @strtof_multiply(i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %88

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @strtof_cached_power(i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @divide(i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call float @diy_to_float(i32 %89, i32 %90)
  store float %91, float* %4, align 4
  br label %92

92:                                               ; preds = %88, %35, %30, %13
  %93 = load float, float* %4, align 4
  ret float %93
}

declare dso_local i32 @uint32_to_diy(i32) #1

declare dso_local i32 @strtof_cached_power(i32) #1

declare dso_local i32 @strtof_multiply(i32, i32) #1

declare dso_local i32 @divide(i32, i32) #1

declare dso_local float @diy_to_float(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
