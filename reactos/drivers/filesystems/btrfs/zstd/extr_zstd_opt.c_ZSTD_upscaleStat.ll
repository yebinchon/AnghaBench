; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_opt.c_ZSTD_upscaleStat.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_opt.c_ZSTD_upscaleStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_FREQ_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i32)* @ZSTD_upscaleStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_upscaleStat(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @ZSTD_FREQ_DIV, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %40, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i32, i32* @ZSTD_FREQ_DIV, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = zext i32 %22 to i64
  %28 = shl i64 %26, %27
  store i64 %28, i64* %25, align 8
  %29 = load i64*, i64** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %19
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %15

43:                                               ; preds = %15
  %44 = load i64, i64* %8, align 8
  ret i64 %44
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
