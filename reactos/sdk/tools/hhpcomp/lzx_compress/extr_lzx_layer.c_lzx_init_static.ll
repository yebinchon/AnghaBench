; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_init_static.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_init_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extra_bits = common dso_local global i32* null, align 8
@rloge2 = common dso_local global double 0.000000e+00, align 8
@position_base = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lzx_init_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzx_init_static() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @extra_bits, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 49
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %58

8:                                                ; preds = %0
  %9 = call double @log(i32 2)
  %10 = fdiv double 1.000000e+00, %9
  store double %10, double* @rloge2, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %34, %8
  %12 = load i32, i32* %1, align 4
  %13 = icmp sle i32 %12, 50
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = load i32*, i32** @extra_bits, align 8
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load i32*, i32** @extra_bits, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %15, i32* %24, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 17
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %27, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %1, align 4
  br label %11

37:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %1, align 4
  %40 = icmp sle i32 %39, 50
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = load i32*, i32** @position_base, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** @extra_bits, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %38

58:                                               ; preds = %7, %38
  ret void
}

declare dso_local double @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
