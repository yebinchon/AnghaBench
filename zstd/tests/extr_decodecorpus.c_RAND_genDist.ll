; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_RAND_genDist.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_RAND_genDist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISTSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, double)* @RAND_genDist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RAND_genDist(i32* %0, i64* %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store double %2, double* %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load i64, i64* @DISTSIZE, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @RAND(i32* %14)
  %16 = srem i32 %15, 256
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @RAND(i32* %18)
  %20 = srem i32 %19, 256
  %21 = or i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %54, %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @DISTSIZE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load double, double* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = uitofp i64 %29 to double
  %31 = fmul double %28, %30
  %32 = fptoui double %31 to i64
  %33 = add i64 %32, 1
  store i64 %33, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %49, %27
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @DISTSIZE, align 8
  %41 = icmp ult i64 %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = load i64, i64* %9, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %34

54:                                               ; preds = %42
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %8, align 8
  br label %23

61:                                               ; preds = %23
  ret void
}

declare dso_local i32 @RAND(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
