; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_HUF_decompress_1stream.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_HUF_decompress_1stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i32*)* @HUF_decompress_1stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_decompress_1stream(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @IO_istream_len(i32* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @INP_SIZE()
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32* @IO_get_read_ptr(i32* %20, i64 %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @highest_set_bit(i32 %27)
  %29 = sub nsw i32 8, %28
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %7, align 8
  %31 = mul i64 %30, 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %31, %33
  store i64 %34, i64* %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @HUF_init_state(%struct.TYPE_5__* %35, i32* %11, i32* %36, i64* %10)
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %45, %19
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 0, %42
  %44 = icmp ugt i64 %39, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @HUF_decode_symbol(%struct.TYPE_5__* %47, i32* %11, i32* %48, i64* %10)
  %50 = call i32 @IO_write_byte(i32* %46, i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  br label %38

53:                                               ; preds = %38
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 0, %57
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 (...) @CORRUPTION()
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i64, i64* %12, align 8
  ret i64 %63
}

declare dso_local i64 @IO_istream_len(i32*) #1

declare dso_local i32 @INP_SIZE(...) #1

declare dso_local i32* @IO_get_read_ptr(i32*, i64) #1

declare dso_local i32 @highest_set_bit(i32) #1

declare dso_local i32 @HUF_init_state(%struct.TYPE_5__*, i32*, i32*, i64*) #1

declare dso_local i32 @IO_write_byte(i32*, i32) #1

declare dso_local i32 @HUF_decode_symbol(%struct.TYPE_5__*, i32*, i32*, i64*) #1

declare dso_local i32 @CORRUPTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
