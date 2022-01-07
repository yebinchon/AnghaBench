; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_compressRleLiteralsBlock.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_compressRleLiteralsBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_rle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64)* @ZSTD_compressRleLiteralsBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compressRleLiteralsBlock(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 31
  %15 = zext i1 %14 to i32
  %16 = add nsw i32 1, %15
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 4095
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %42 [
    i32 1, label %23
    i32 2, label %32
    i32 3, label %43
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @set_rle, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = shl i64 %26, 3
  %28 = add i64 %25, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  br label %53

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @set_rle, align 4
  %35 = add nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = shl i64 %37, 4
  %39 = add i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ZSTD_writeLE16(i32* %33, i32 %40)
  br label %53

42:                                               ; preds = %4
  br label %43

43:                                               ; preds = %4, %42
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @set_rle, align 4
  %46 = add nsw i32 %45, 12
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = shl i64 %48, 4
  %50 = add i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ZSTD_writeLE32(i32* %44, i32 %51)
  br label %53

53:                                               ; preds = %43, %32, %23
  %54 = load i8*, i8** %7, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  ret i64 %63
}

declare dso_local i32 @ZSTD_writeLE16(i32*, i32) #1

declare dso_local i32 @ZSTD_writeLE32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
