; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_xxhash.c_XXH32.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_xxhash.c_XXH32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XXH_CPU_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@XXH_FORCE_ALIGN_CHECK = common dso_local global i64 0, align 8
@XXH_littleEndian = common dso_local global i64 0, align 8
@XXH_FORCE_NATIVE_FORMAT = common dso_local global i64 0, align 8
@XXH_aligned = common dso_local global i32 0, align 4
@XXH_bigEndian = common dso_local global i64 0, align 8
@XXH_unaligned = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @XXH_CPU_LITTLE_ENDIAN, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* @XXH_FORCE_ALIGN_CHECK, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 3
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @XXH_littleEndian, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @XXH_FORCE_NATIVE_FORMAT, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %18
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* @XXH_littleEndian, align 8
  %30 = load i32, i32* @XXH_aligned, align 4
  %31 = call i32 @XXH32_endian_align(i8* %26, i64 %27, i32 %28, i64 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* @XXH_bigEndian, align 8
  %37 = load i32, i32* @XXH_aligned, align 4
  %38 = call i32 @XXH32_endian_align(i8* %33, i64 %34, i32 %35, i64 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @XXH_littleEndian, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @XXH_FORCE_NATIVE_FORMAT, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* @XXH_littleEndian, align 8
  %52 = load i32, i32* @XXH_unaligned, align 4
  %53 = call i32 @XXH32_endian_align(i8* %48, i64 %49, i32 %50, i64 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %44
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* @XXH_bigEndian, align 8
  %59 = load i32, i32* @XXH_unaligned, align 4
  %60 = call i32 @XXH32_endian_align(i8* %55, i64 %56, i32 %57, i64 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %47, %32, %25
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @XXH32_endian_align(i8*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
