; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_decompress.c_HUF_decompress1X1.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_decompress.c_HUF_decompress1X1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NonPagedPool = common dso_local global i32 0, align 4
@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@HUFD_ALLOC_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_decompress1X1(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
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
  %12 = load i32, i32* @NonPagedPool, align 4
  %13 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @HUF_DTABLE_SIZE(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @HUFD_ALLOC_TAG, align 4
  %20 = call i32* @ExAllocatePoolWithTag(i32 %12, i32 %18, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %47

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @HUF_DTABLE_SIZE(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @RtlZeroMemory(i32* %25, i32 %31)
  %33 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %34 = sub nsw i32 %33, 1
  %35 = mul nsw i32 %34, 16777217
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @HUF_decompress1X1_DCtx(i32* %38, i8* %39, i64 %40, i8* %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ExFreePool(i32* %44)
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %24, %23
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @HUF_DTABLE_SIZE(i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i64 @HUF_decompress1X1_DCtx(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @ExFreePool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
