; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_noCompressLiterals.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_noCompressLiterals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@set_basic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64)* @ZSTD_noCompressLiterals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_noCompressLiterals(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 31
  %16 = zext i1 %15 to i32
  %17 = add nsw i32 1, %16
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 4095
  %20 = zext i1 %19 to i32
  %21 = add nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @dstSize_tooSmall, align 4
  %30 = call i64 @ERROR(i32 %29)
  store i64 %30, i64* %5, align 8
  br label %72

31:                                               ; preds = %4
  %32 = load i64, i64* %11, align 8
  switch i64 %32, label %52 [
    i64 1, label %33
    i64 2, label %42
    i64 3, label %53
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @set_basic, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = shl i64 %36, 3
  %38 = add i64 %35, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  br label %62

42:                                               ; preds = %31
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @set_basic, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = load i64, i64* %9, align 8
  %48 = shl i64 %47, 4
  %49 = add i64 %46, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ZSTD_writeLE16(i32* %43, i32 %50)
  br label %62

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %31, %52
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @set_basic, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 12
  %58 = load i64, i64* %9, align 8
  %59 = shl i64 %58, 4
  %60 = add i64 %57, %59
  %61 = call i32 @ZSTD_writeLE32(i32* %54, i64 %60)
  br label %62

62:                                               ; preds = %53, %42, %33
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @memcpy(i32* %65, i8* %66, i64 %67)
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %69, %70
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %62, %28
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_writeLE16(i32*, i32) #1

declare dso_local i32 @ZSTD_writeLE32(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
