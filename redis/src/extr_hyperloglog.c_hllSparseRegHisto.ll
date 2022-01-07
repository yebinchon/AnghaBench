; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllSparseRegHisto.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllSparseRegHisto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HLL_REGISTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hllSparseRegHisto(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %13, align 8
  br label %19

19:                                               ; preds = %75, %4
  %20 = load i32*, i32** %13, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load i32*, i32** %13, align 8
  %25 = call i64 @HLL_SPARSE_IS_ZERO(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @HLL_SPARSE_ZERO_LEN(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %13, align 8
  br label %75

40:                                               ; preds = %23
  %41 = load i32*, i32** %13, align 8
  %42 = call i64 @HLL_SPARSE_IS_XZERO(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @HLL_SPARSE_XZERO_LEN(i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %13, align 8
  br label %74

57:                                               ; preds = %40
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @HLL_SPARSE_VAL_LEN(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @HLL_SPARSE_VAL_VALUE(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %13, align 8
  br label %74

74:                                               ; preds = %57, %44
  br label %75

75:                                               ; preds = %74, %27
  br label %19

76:                                               ; preds = %19
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @HLL_REGISTERS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %80, %76
  ret void
}

declare dso_local i64 @HLL_SPARSE_IS_ZERO(i32*) #1

declare dso_local i32 @HLL_SPARSE_ZERO_LEN(i32*) #1

declare dso_local i64 @HLL_SPARSE_IS_XZERO(i32*) #1

declare dso_local i32 @HLL_SPARSE_XZERO_LEN(i32*) #1

declare dso_local i32 @HLL_SPARSE_VAL_LEN(i32*) #1

declare dso_local i32 @HLL_SPARSE_VAL_VALUE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
