; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_readlong.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_readlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i64 }

@TII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiff*)* @tiff_readlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiff_readlong(%struct.tiff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tiff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tiff* %0, %struct.tiff** %3, align 8
  %8 = load %struct.tiff*, %struct.tiff** %3, align 8
  %9 = call i32 @tiff_readbyte(%struct.tiff* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.tiff*, %struct.tiff** %3, align 8
  %11 = call i32 @tiff_readbyte(%struct.tiff* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tiff*, %struct.tiff** %3, align 8
  %13 = call i32 @tiff_readbyte(%struct.tiff* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tiff*, %struct.tiff** %3, align 8
  %15 = call i32 @tiff_readbyte(%struct.tiff* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.tiff*, %struct.tiff** %3, align 8
  %17 = getelementptr inbounds %struct.tiff, %struct.tiff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TII, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 24
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %26, %28
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 24
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %34, %36
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %32, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @tiff_readbyte(%struct.tiff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
