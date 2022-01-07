; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_rle_flush_same.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_rle_flush_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rle = type { i64*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rle*)* @rle_flush_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rle_flush_same(i32* %0, %struct.rle* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rle*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rle* %1, %struct.rle** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.rle*, %struct.rle** %4, align 8
  %7 = getelementptr inbounds %struct.rle, %struct.rle* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.rle*, %struct.rle** %4, align 8
  %10 = getelementptr inbounds %struct.rle, %struct.rle* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 257, %11
  %13 = call i32 @fz_write_byte(i32* %5, i32 %8, i64 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.rle*, %struct.rle** %4, align 8
  %16 = getelementptr inbounds %struct.rle, %struct.rle* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rle*, %struct.rle** %4, align 8
  %19 = getelementptr inbounds %struct.rle, %struct.rle* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @fz_write_byte(i32* %14, i32 %17, i64 %22)
  ret void
}

declare dso_local i32 @fz_write_byte(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
