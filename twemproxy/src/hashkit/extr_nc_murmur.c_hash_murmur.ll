; ModuleID = '/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_murmur.c_hash_murmur.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_murmur.c_hash_murmur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_murmur(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1540483477, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = mul i32 -559038737, %12
  store i32 %13, i32* %6, align 4
  store i32 24, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  %17 = xor i32 %14, %16
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %22, %2
  %20 = load i64, i64* %4, align 8
  %21 = icmp uge i64 %20, 4
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = mul i32 %26, 1540483477
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = lshr i32 %28, 24
  %30 = load i32, i32* %10, align 4
  %31 = xor i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul i32 %32, 1540483477
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul i32 %34, 1540483477
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %9, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %41, 4
  store i64 %42, i64* %4, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load i64, i64* %4, align 8
  switch i64 %44, label %70 [
    i64 3, label %45
    i64 2, label %53
    i64 1, label %61
  ]

45:                                               ; preds = %43
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %8, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %43, %45
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %8, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %43, %53
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %8, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul i32 %68, 1540483477
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %43, %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 13
  %74 = load i32, i32* %8, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul i32 %76, 1540483477
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 15
  %80 = load i32, i32* %8, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
