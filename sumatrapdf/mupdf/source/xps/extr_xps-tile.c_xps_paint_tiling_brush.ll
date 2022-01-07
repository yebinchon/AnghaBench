; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-tile.c_xps_paint_tiling_brush.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-tile.c_xps_paint_tiling_brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.closure = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@TILE_FLIP_X = common dso_local global i32 0, align 4
@TILE_FLIP_X_Y = common dso_local global i32 0, align 4
@TILE_FLIP_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64, i32, %struct.closure*)* @xps_paint_tiling_brush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_paint_tiling_brush(i32* %0, i32* %1, i32 %2, i64 %3, i32 %4, %struct.closure* %5) #0 {
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.closure*, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_4__* %7 to i64*
  store i64 %3, i64* %14, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.closure* %5, %struct.closure** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.closure*, %struct.closure** %12, align 8
  %19 = bitcast %struct.TYPE_4__* %7 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = call i32 @xps_paint_tiling_brush_clipped(i32* %15, i32* %16, i32 %17, i64 %20, %struct.closure* %18)
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @TILE_FLIP_X, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @TILE_FLIP_X_Y, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25, %6
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = call i32 @fz_pre_translate(i32 %30, i32 %33, i32 0)
  %35 = call i32 @fz_pre_scale(i32 %34, i32 -1, i32 1)
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.closure*, %struct.closure** %12, align 8
  %40 = bitcast %struct.TYPE_4__* %7 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i32 @xps_paint_tiling_brush_clipped(i32* %36, i32* %37, i32 %38, i64 %41, %struct.closure* %39)
  br label %43

43:                                               ; preds = %29, %25
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @TILE_FLIP_Y, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @TILE_FLIP_X_Y, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %10, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 2
  %56 = call i32 @fz_pre_translate(i32 %52, i32 0, i32 %55)
  %57 = call i32 @fz_pre_scale(i32 %56, i32 1, i32 -1)
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.closure*, %struct.closure** %12, align 8
  %62 = bitcast %struct.TYPE_4__* %7 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i32 @xps_paint_tiling_brush_clipped(i32* %58, i32* %59, i32 %60, i64 %63, %struct.closure* %61)
  br label %65

65:                                               ; preds = %51, %47
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @TILE_FLIP_X_Y, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 2
  %77 = call i32 @fz_pre_translate(i32 %70, i32 %73, i32 %76)
  %78 = call i32 @fz_pre_scale(i32 %77, i32 -1, i32 -1)
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.closure*, %struct.closure** %12, align 8
  %83 = bitcast %struct.TYPE_4__* %7 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call i32 @xps_paint_tiling_brush_clipped(i32* %79, i32* %80, i32 %81, i64 %84, %struct.closure* %82)
  br label %86

86:                                               ; preds = %69, %65
  ret void
}

declare dso_local i32 @xps_paint_tiling_brush_clipped(i32*, i32*, i32, i64, %struct.closure*) #1

declare dso_local i32 @fz_pre_scale(i32, i32, i32) #1

declare dso_local i32 @fz_pre_translate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
