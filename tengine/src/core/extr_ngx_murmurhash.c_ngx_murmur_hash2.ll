; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_murmurhash.c_ngx_murmur_hash2.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_murmurhash.c_ngx_murmur_hash2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_murmur_hash2(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = xor i64 0, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %13, %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp uge i64 %11, 4
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 1540483477
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 24
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 1540483477
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 1540483477
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = sub i64 %50, 4
  store i64 %51, i64* %4, align 8
  br label %10

52:                                               ; preds = %10
  %53 = load i64, i64* %4, align 8
  switch i64 %53, label %76 [
    i64 3, label %54
    i64 2, label %61
    i64 1, label %68
  ]

54:                                               ; preds = %52
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %5, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %52, %54
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %5, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %52, %61
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 1540483477
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %68, %52
  %77 = load i32, i32* %5, align 4
  %78 = ashr i32 %77, 13
  %79 = load i32, i32* %5, align 4
  %80 = xor i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = mul nsw i32 %81, 1540483477
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 15
  %85 = load i32, i32* %5, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
