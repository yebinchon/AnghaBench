; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_setUnsignedBitfield.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_setUnsignedBitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setUnsignedBitfield(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %59, %4
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 %20, 1
  %22 = load i64, i64* %13, align 8
  %23 = sub nsw i64 %21, %22
  %24 = shl i64 1, %23
  %25 = and i64 %19, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %6, align 8
  %30 = ashr i64 %29, 3
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, 7
  %33 = sub nsw i64 7, %32
  store i64 %33, i64* %10, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %11, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = shl i64 %46, %47
  %49 = load i64, i64* %11, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = and i64 %51, 255
  %53 = trunc i64 %52 to i8
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %56, align 1
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %18
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %13, align 8
  br label %14

62:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
