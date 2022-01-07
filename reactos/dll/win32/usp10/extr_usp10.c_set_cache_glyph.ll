; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_usp10.c_set_cache_glyph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_usp10.c_set_cache_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }

@GLYPH_BLOCK_SHIFT = common dso_local global i32 0, align 4
@GLYPH_BLOCK_SIZE = common dso_local global i32 0, align 4
@GLYPH_BLOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @set_cache_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cache_glyph(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i32**, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 65536
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %17
  store %struct.TYPE_4__** %18, %struct.TYPE_4__*** %8, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = call i8* @heap_alloc_zero(i32 8)
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %25, align 8
  %26 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %62

28:                                               ; preds = %22, %3
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = srem i32 %33, 65536
  %35 = load i32, i32* @GLYPH_BLOCK_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %32, i64 %37
  store i32** %38, i32*** %9, align 8
  %39 = load i32**, i32*** %9, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @GLYPH_BLOCK_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @heap_alloc_zero(i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load i32**, i32*** %9, align 8
  store i32* %48, i32** %49, align 8
  %50 = icmp ne i32* %48, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %62

52:                                               ; preds = %42, %28
  %53 = load i32, i32* %7, align 4
  %54 = load i32**, i32*** %9, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = srem i32 %56, 65536
  %58 = load i32, i32* @GLYPH_BLOCK_MASK, align 4
  %59 = and i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  store i32 %53, i32* %61, align 4
  store i32 %53, i32* %4, align 4
  br label %62

62:                                               ; preds = %52, %51, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @heap_alloc_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
