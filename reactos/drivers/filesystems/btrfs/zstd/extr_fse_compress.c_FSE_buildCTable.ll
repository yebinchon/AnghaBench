; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_fse_compress.c_FSE_buildCTable.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_fse_compress.c_FSE_buildCTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NonPagedPool = common dso_local global i32 0, align 4
@FSE_MAX_TABLESIZE = common dso_local global i32 0, align 4
@FSEC_ALLOC_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_buildCTable(i32* %0, i16* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @NonPagedPool, align 4
  %13 = load i32, i32* @FSE_MAX_TABLESIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @FSEC_ALLOC_TAG, align 4
  %18 = call i32* @ExAllocatePoolWithTag(i32 %12, i32 %16, i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %36

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i16*, i16** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @FSE_MAX_TABLESIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @FSE_buildCTable_wksp(i32* %23, i16* %24, i32 %25, i32 %26, i32* %27, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @ExFreePool(i32* %33)
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %22, %21
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i64 @FSE_buildCTable_wksp(i32*, i16*, i32, i32, i32*, i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
