; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hash_string.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hash_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stbds_hash_string(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i64, i64* %5, align 8
  %13 = call zeroext i8 @STBDS_ROTATE_LEFT(i64 %12, i32 9)
  %14 = zext i8 %13 to i32
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  %17 = load i8, i8* %15, align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %14, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  br label %7

21:                                               ; preds = %7
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = xor i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %5, align 8
  %28 = shl i64 %27, 18
  %29 = add i64 %26, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @STBDS_ROTATE_RIGHT(i64 %31, i32 31)
  %33 = xor i64 %30, %32
  %34 = load i64, i64* %5, align 8
  %35 = xor i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = mul i64 %36, 21
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @STBDS_ROTATE_RIGHT(i64 %39, i32 11)
  %41 = xor i64 %38, %40
  %42 = load i64, i64* %5, align 8
  %43 = xor i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = shl i64 %44, 6
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @STBDS_ROTATE_RIGHT(i64 %48, i32 22)
  %50 = load i64, i64* %5, align 8
  %51 = xor i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %52, %53
  ret i64 %54
}

declare dso_local zeroext i8 @STBDS_ROTATE_LEFT(i64, i32) #1

declare dso_local i64 @STBDS_ROTATE_RIGHT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
