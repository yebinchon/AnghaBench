; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THHalf.c_TH_halfbits2float.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THHalf.c_TH_halfbits2float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TH_halfbits2float(i16* %0, float* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store float* %1, float** %4, align 8
  %10 = load i16*, i16** %3, align 8
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %13, 15
  %15 = and i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = lshr i32 %16, 10
  %18 = and i32 %17, 31
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1023
  %21 = shl i32 %20, 13
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 31
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %29

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i32 [ 8388607, %27 ], [ 0, %28 ]
  store i32 %30, i32* %8, align 4
  store i32 255, i32* %7, align 4
  br label %57

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  store i32 113, i32* %7, align 4
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 4194304
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %38, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 8388607
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %34
  br label %56

53:                                               ; preds = %31
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 112
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 31
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 23
  %62 = or i32 %59, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %62, %63
  %65 = load float*, float** %4, align 8
  %66 = bitcast float* %65 to i32*
  store i32 %64, i32* %66, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
