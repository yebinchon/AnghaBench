; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictComputeBigQKey.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictComputeBigQKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64*, i32, i32)* @xmlDictComputeBigQKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xmlDictComputeBigQKey(i64* %0, i32 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %36, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i64*, i64** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 %28, 10
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 6
  %34 = load i32, i32* %11, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 58
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 10
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 6
  %48 = load i32, i32* %11, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %72, %39
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i64*, i64** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 10
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = ashr i32 %68, 6
  %70 = load i32, i32* %11, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %50

75:                                               ; preds = %50
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, 3
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = ashr i32 %80, 11
  %82 = load i32, i32* %11, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %84, 15
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  ret i64 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
