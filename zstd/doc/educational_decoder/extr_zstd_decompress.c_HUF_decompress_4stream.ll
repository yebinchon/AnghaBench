; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_HUF_decompress_4stream.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_HUF_decompress_4stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*)* @HUF_decompress_4stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_decompress_4stream(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @IO_read_bits(i32* %15, i32 16)
  store i64 %16, i64* %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @IO_read_bits(i32* %17, i32 16)
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @IO_read_bits(i32* %19, i32 16)
  store i64 %20, i64* %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @IO_make_sub_istream(i32* %21, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @IO_make_sub_istream(i32* %24, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @IO_make_sub_istream(i32* %27, i64 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @IO_istream_len(i32* %31)
  %33 = call i32 @IO_make_sub_istream(i32* %30, i64 %32)
  store i32 %33, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @HUF_decompress_1stream(i32* %34, i32* %35, i32* %10)
  %37 = load i64, i64* %14, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %14, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @HUF_decompress_1stream(i32* %39, i32* %40, i32* %11)
  %42 = load i64, i64* %14, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %14, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @HUF_decompress_1stream(i32* %44, i32* %45, i32* %12)
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %14, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @HUF_decompress_1stream(i32* %49, i32* %50, i32* %13)
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  ret i64 %54
}

declare dso_local i64 @IO_read_bits(i32*, i32) #1

declare dso_local i32 @IO_make_sub_istream(i32*, i64) #1

declare dso_local i64 @IO_istream_len(i32*) #1

declare dso_local i64 @HUF_decompress_1stream(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
