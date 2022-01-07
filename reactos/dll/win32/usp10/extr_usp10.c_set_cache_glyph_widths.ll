; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_usp10.c_set_cache_glyph_widths.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_usp10.c_set_cache_glyph_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@GLYPH_BLOCK_SHIFT = common dso_local global i64 0, align 8
@GLYPH_BLOCK_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GLYPH_BLOCK_MASK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32*)* @set_cache_glyph_widths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cache_glyph_widths(i64* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @GLYPH_BLOCK_SHIFT, align 8
  %16 = lshr i64 %14, %15
  %17 = getelementptr inbounds i32*, i32** %13, i64 %16
  store i32** %17, i32*** %8, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @GLYPH_BLOCK_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32* @heap_alloc_zero(i32 %25)
  %27 = load i32**, i32*** %8, align 8
  store i32* %26, i32** %27, align 8
  %28 = icmp ne i32* %26, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %21, %3
  %32 = load i32**, i32*** %8, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @GLYPH_BLOCK_MASK, align 8
  %36 = and i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @memcpy(i32* %37, i32* %38, i32 4)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %29
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
