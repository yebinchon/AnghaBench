; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ccm.c_ccm_validate_args.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ccm.c_ccm_validate_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@CRYPTO_MECHANISM_PARAM_INVALID = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccm_validate_args(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %16, 16
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = urem i64 %19, 2
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %15, %2
  %23 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 7
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %31, 13
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %24
  %34 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 15, %36
  %38 = and i64 %37, 255
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %42, %35
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 8
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = sub i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %61

59:                                               ; preds = %50
  %60 = load i64, i64* @ULONG_MAX, align 8
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %59, %53
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %48, %33, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
