; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compress1X.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compress1X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NonPagedPool = common dso_local global i32 0, align 4
@HUF_WORKSPACE_SIZE_U32 = common dso_local global i32 0, align 4
@HUFC_ALLOC_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_compress1X(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @NonPagedPool, align 4
  %17 = load i32, i32* @HUF_WORKSPACE_SIZE_U32, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @HUFC_ALLOC_TAG, align 4
  %22 = call i32* @ExAllocatePoolWithTag(i32 %16, i32 %20, i32 %21)
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %42

26:                                               ; preds = %6
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* @HUF_WORKSPACE_SIZE_U32, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call i64 @HUF_compress1X_wksp(i8* %27, i64 %28, i8* %29, i64 %30, i32 %31, i32 %32, i32* %33, i32 %37)
  store i64 %38, i64* %15, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @ExFreePool(i32* %39)
  %41 = load i64, i64* %15, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %26, %25
  %43 = load i64, i64* %7, align 8
  ret i64 %43
}

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i64 @HUF_compress1X_wksp(i8*, i64, i8*, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
