; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_startingInputLength.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_startingInputLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_f_zstd1_magicless = common dso_local global i64 0, align 8
@ZSTD_frameHeaderSize_prefix = common dso_local global i64 0, align 8
@ZSTD_FRAMEIDSIZE = common dso_local global i64 0, align 8
@ZSTD_FRAMEHEADERSIZE_PREFIX = common dso_local global i64 0, align 8
@ZSTD_f_zstd1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @ZSTD_startingInputLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_startingInputLength(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @ZSTD_f_zstd1_magicless, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %9 = load i64, i64* @ZSTD_FRAMEIDSIZE, align 8
  %10 = sub nsw i64 %8, %9
  br label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %10, %7 ], [ %12, %11 ]
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @ZSTD_FRAMEHEADERSIZE_PREFIX, align 8
  %16 = load i64, i64* @ZSTD_FRAMEIDSIZE, align 8
  %17 = icmp sge i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ZSTD_STATIC_ASSERT(i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @ZSTD_f_zstd1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @ZSTD_f_zstd1_magicless, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i1 [ true, %13 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i32 @ZSTD_STATIC_ASSERT(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
