; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_document.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_document.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64, i64*, i64, i64, i32, i32 }

@fz_default_stroke_state = common dso_local global i32 0, align 4
@DEF_WIDTH = common dso_local global i32 0, align 4
@DEF_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_run_document(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @svg_parse_document_bounds(i32* %12, i32* %13, i32* %14)
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 16
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @fz_default_stroke_state, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 15
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 14
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @DEF_WIDTH, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @DEF_HEIGHT, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @DEF_WIDTH, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @DEF_HEIGHT, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @DEF_WIDTH, align 4
  %30 = load i32, i32* @DEF_WIDTH, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* @DEF_HEIGHT, align 4
  %33 = load i32, i32* @DEF_HEIGHT, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %31, %34
  %36 = call i32 @sqrtf(i32 %35)
  %37 = call i32 @sqrtf(i32 2)
  %38 = sdiv i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store i32 12, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 13
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 7
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 12
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 12
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 12
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 8
  store i32 1, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 11
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 10
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 10
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 10
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 9
  store i32 1, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @svg_run_svg(i32* %65, i32* %66, i32* %67, i32* %68, %struct.TYPE_3__* %11)
  ret void
}

declare dso_local i32 @svg_parse_document_bounds(i32*, i32*, i32*) #1

declare dso_local i32 @sqrtf(i32) #1

declare dso_local i32 @svg_run_svg(i32*, i32*, i32*, i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
