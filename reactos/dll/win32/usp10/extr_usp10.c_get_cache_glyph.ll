; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_usp10.c_get_cache_glyph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_usp10.c_get_cache_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }

@GLYPH_BLOCK_SHIFT = common dso_local global i32 0, align 4
@GLYPH_BLOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @get_cache_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cache_glyph(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 65536
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = srem i32 %25, 65536
  %27 = load i32, i32* @GLYPH_BLOCK_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %24, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = srem i32 %37, 65536
  %39 = load i32, i32* @GLYPH_BLOCK_MASK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %34, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
