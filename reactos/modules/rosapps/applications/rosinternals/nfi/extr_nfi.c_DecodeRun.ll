; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/nfi/extr_nfi.c_DecodeRun.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/nfi/extr_nfi.c_DecodeRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DecodeRun(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64*, i64** %6, align 8
  store i64 0, i64* %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, 8
  %30 = shl i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %31
  store i64 %34, i64* %32, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  store i32 -1, i32* %44, align 4
  br label %76

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %54, 8
  %56 = shl i32 %53, %55
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %4, align 8
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %4, align 8
  %68 = load i32, i32* %66, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 8
  %71 = shl i32 %68, %70
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %71, %73
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %43
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
