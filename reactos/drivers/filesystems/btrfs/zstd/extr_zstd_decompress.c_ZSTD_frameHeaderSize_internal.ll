; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_frameHeaderSize_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_frameHeaderSize_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_did_fieldSize = common dso_local global i64* null, align 8
@ZSTD_fcs_fieldSize = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @ZSTD_frameHeaderSize_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_frameHeaderSize_internal(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @ZSTD_startingInputLength(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @srcSize_wrong, align 4
  %20 = call i64 @ERROR(i32 %19)
  store i64 %20, i64* %4, align 8
  br label %66

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 3
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 5
  %33 = and i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 6
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = add i64 %38, %43
  %45 = load i64*, i64** @ZSTD_did_fieldSize, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %44, %48
  %50 = load i64*, i64** @ZSTD_fcs_fieldSize, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %49, %53
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %21
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %57, %21
  %62 = phi i1 [ false, %21 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = add i64 %54, %64
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %61, %18
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @ZSTD_startingInputLength(i32) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
