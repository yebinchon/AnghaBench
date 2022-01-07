; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_FSE_decompress_interleaved2.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_FSE_decompress_interleaved2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*)* @FSE_decompress_interleaved2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_decompress_interleaved2(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @IO_istream_len(i32* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @INP_SIZE()
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32* @IO_get_read_ptr(i32* %21, i64 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @highest_set_bit(i32 %28)
  %30 = sub nsw i32 8, %29
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %7, align 8
  %32 = mul i64 %31, 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %32, %34
  store i64 %35, i64* %10, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @FSE_init_state(i32* %36, i32* %11, i32* %37, i64* %10)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @FSE_init_state(i32* %39, i32* %12, i32* %40, i64* %10)
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %20, %78
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @FSE_decode_symbol(i32* %44, i32* %11, i32* %45, i64* %10)
  %47 = call i32 @IO_write_byte(i32* %43, i32 %46)
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @FSE_peek_symbol(i32* %54, i32 %55)
  %57 = call i32 @IO_write_byte(i32* %53, i32 %56)
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %13, align 8
  br label %79

60:                                               ; preds = %42
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @FSE_decode_symbol(i32* %62, i32* %12, i32* %63, i64* %10)
  %65 = call i32 @IO_write_byte(i32* %61, i32 %64)
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @FSE_peek_symbol(i32* %72, i32 %73)
  %75 = call i32 @IO_write_byte(i32* %71, i32 %74)
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %79

78:                                               ; preds = %60
  br label %42

79:                                               ; preds = %70, %52
  %80 = load i64, i64* %13, align 8
  ret i64 %80
}

declare dso_local i64 @IO_istream_len(i32*) #1

declare dso_local i32 @INP_SIZE(...) #1

declare dso_local i32* @IO_get_read_ptr(i32*, i64) #1

declare dso_local i32 @highest_set_bit(i32) #1

declare dso_local i32 @FSE_init_state(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @IO_write_byte(i32*, i32) #1

declare dso_local i32 @FSE_decode_symbol(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @FSE_peek_symbol(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
