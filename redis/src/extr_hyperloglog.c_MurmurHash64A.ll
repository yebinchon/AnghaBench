; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_MurmurHash64A.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_MurmurHash64A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MurmurHash64A(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1540483477, i32* %7, align 4
  store i32 47, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 1540483477
  %16 = xor i32 %13, %15
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %10, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 7
  %23 = sub nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %19, i64 %24
  store i64* %25, i64** %11, align 8
  br label %26

26:                                               ; preds = %30, %3
  %27 = load i64*, i64** %10, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = icmp ne i64* %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i64*, i64** %10, align 8
  %32 = bitcast i64* %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %34, 1540483477
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 47
  %38 = load i32, i32* %12, align 4
  %39 = xor i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul nsw i32 %40, 1540483477
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 1540483477
  store i32 %46, i32* %9, align 4
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 8
  store i64* %48, i64** %10, align 8
  br label %26

49:                                               ; preds = %26
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 7
  switch i32 %51, label %109 [
    i32 7, label %52
    i32 6, label %60
    i32 5, label %68
    i32 4, label %76
    i32 3, label %84
    i32 2, label %92
    i32 1, label %100
  ]

52:                                               ; preds = %49
  %53 = load i64*, i64** %10, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 6
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 48
  %58 = load i32, i32* %9, align 4
  %59 = xor i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %49, %52
  %61 = load i64*, i64** %10, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 5
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 %64, 40
  %66 = load i32, i32* %9, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %49, %60
  %69 = load i64*, i64** %10, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 4
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %72, 32
  %74 = load i32, i32* %9, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %49, %68
  %77 = load i64*, i64** %10, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 24
  %82 = load i32, i32* %9, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %49, %76
  %85 = load i64*, i64** %10, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %9, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %49, %84
  %93 = load i64*, i64** %10, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %9, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %49, %92
  %101 = load i64*, i64** %10, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %9, align 4
  %106 = xor i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %107, 1540483477
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %100, %49
  %110 = load i32, i32* %9, align 4
  %111 = ashr i32 %110, 47
  %112 = load i32, i32* %9, align 4
  %113 = xor i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 %114, 1540483477
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = ashr i32 %116, 47
  %118 = load i32, i32* %9, align 4
  %119 = xor i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
