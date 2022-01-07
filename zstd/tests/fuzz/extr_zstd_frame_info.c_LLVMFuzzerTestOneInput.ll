; ModuleID = '/home/carl/AnghaBench/zstd/tests/fuzz/extr_zstd_frame_info.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/fuzz/extr_zstd_frame_info.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_f_zstd1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @ZSTD_getFrameContentSize(i32* %6, i64 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @ZSTD_getDecompressedSize(i32* %9, i64 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ZSTD_findFrameCompressedSize(i32* %12, i64 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @ZSTD_getDictID_fromFrame(i32* %15, i64 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @ZSTD_findDecompressedSize(i32* %18, i64 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ZSTD_decompressBound(i32* %21, i64 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @ZSTD_frameHeaderSize(i32* %24, i64 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ZSTD_isFrame(i32* %27, i64 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @ZSTD_getFrameHeader(i32* %5, i32* %30, i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* @ZSTD_f_zstd1, align 4
  %36 = call i32 @ZSTD_getFrameHeader_advanced(i32* %5, i32* %33, i64 %34, i32 %35)
  ret i32 0
}

declare dso_local i32 @ZSTD_getFrameContentSize(i32*, i64) #1

declare dso_local i32 @ZSTD_getDecompressedSize(i32*, i64) #1

declare dso_local i32 @ZSTD_findFrameCompressedSize(i32*, i64) #1

declare dso_local i32 @ZSTD_getDictID_fromFrame(i32*, i64) #1

declare dso_local i32 @ZSTD_findDecompressedSize(i32*, i64) #1

declare dso_local i32 @ZSTD_decompressBound(i32*, i64) #1

declare dso_local i32 @ZSTD_frameHeaderSize(i32*, i64) #1

declare dso_local i32 @ZSTD_isFrame(i32*, i64) #1

declare dso_local i32 @ZSTD_getFrameHeader(i32*, i32*, i64) #1

declare dso_local i32 @ZSTD_getFrameHeader_advanced(i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
