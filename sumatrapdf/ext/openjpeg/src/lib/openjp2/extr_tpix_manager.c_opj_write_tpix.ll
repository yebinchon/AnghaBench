; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tpix_manager.c_opj_write_tpix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tpix_manager.c_opj_write_tpix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JPIP_TPIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_tpix(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @opj_stream_tell(i32* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @opj_stream_skip(i32* %16, i32 4, i32* %17)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %20 = load i64, i64* @JPIP_TPIX, align 8
  %21 = call i32 @opj_write_bytes(i32* %19, i64 %20, i32 4)
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @opj_stream_write_data(i32* %22, i32* %23, i32 4, i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @opj_write_tpixfaix(i32 %26, i32 0, i32 %27, i32 %28, i32* %29, i32* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @opj_stream_tell(i32* %32)
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %12, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @opj_stream_skip(i32* %37, i32 %38, i32* %39)
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @opj_write_bytes(i32* %41, i64 %42, i32 4)
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @opj_stream_write_data(i32* %44, i32* %45, i32 4, i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @opj_stream_seek(i32* %48, i64 %52, i32* %53)
  %55 = load i64, i64* %12, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local i32 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i64, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @opj_write_tpixfaix(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
