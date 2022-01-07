; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress_literals.c_ZSTD_noCompressLiterals.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress_literals.c_ZSTD_noCompressLiterals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@set_basic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_noCompressLiterals(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
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
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @dstSize_tooSmall, align 4
  %29 = call i32 @RETURN_ERROR_IF(i32 %27, i32 %28)
  %30 = load i64, i64* %10, align 8
  switch i64 %30, label %59 [
    i64 1, label %31
    i64 2, label %40
    i64 3, label %50
  ]

31:                                               ; preds = %4
  %32 = load i32, i32* @set_basic, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = shl i64 %34, 3
  %36 = add i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  br label %61

40:                                               ; preds = %4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @set_basic, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 4
  %45 = load i64, i64* %8, align 8
  %46 = shl i64 %45, 4
  %47 = add i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @MEM_writeLE16(i32* %41, i32 %48)
  br label %61

50:                                               ; preds = %4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @set_basic, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 12
  %55 = load i64, i64* %8, align 8
  %56 = shl i64 %55, 4
  %57 = add i64 %54, %56
  %58 = call i32 @MEM_writeLE32(i32* %51, i64 %57)
  br label %61

59:                                               ; preds = %4
  %60 = call i32 @assert(i32 0)
  br label %61

61:                                               ; preds = %59, %50, %40, %31
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @memcpy(i32* %64, i8* %65, i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %68, %69
  ret i64 %70
}

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @MEM_writeLE16(i32*, i32) #1

declare dso_local i32 @MEM_writeLE32(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
