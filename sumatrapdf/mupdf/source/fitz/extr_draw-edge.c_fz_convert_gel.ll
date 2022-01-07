; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_convert_gel.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_convert_gel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@fz_aa_bits = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, %struct.TYPE_5__*, i8*, i32*)* @fz_convert_gel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_convert_gel(i32* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_5__* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %9, align 8
  store i32* %18, i32** %15, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = call i32 @sort_gel(i32* %19, i32* %20)
  %22 = load i64, i64* @fz_aa_bits, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %7
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i64 @fz_get_span_color_painter(i32 %30, i32 %33, i8* %34, i32* %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %16, align 8
  br label %45

38:                                               ; preds = %24
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = call i64 @fz_get_span_painter(i32 %41, i32 1, i32 0, i32 255, i32* %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %16, align 8
  br label %45

45:                                               ; preds = %38, %27
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @assert(i8* %46)
  %48 = load i8*, i8** %16, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %86

51:                                               ; preds = %45
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @fz_scan_convert_aa(i32* %52, i32* %53, i32 %54, i32* %55, %struct.TYPE_5__* %56, i8* %57, i8* %58, i32* %59)
  br label %86

61:                                               ; preds = %7
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = call i8* @fz_get_solid_color_painter(i32 %64, i8* %65, i32 %68, i32* %69)
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = call i32 @assert(i8* %71)
  %73 = load i8*, i8** %17, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %86

76:                                               ; preds = %61
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @fz_scan_convert_sharp(i32* %77, i32* %78, i32 %79, i32* %80, %struct.TYPE_5__* %81, i8* %82, i8* %83, i32* %84)
  br label %86

86:                                               ; preds = %50, %75, %76, %51
  ret void
}

declare dso_local i32 @sort_gel(i32*, i32*) #1

declare dso_local i64 @fz_get_span_color_painter(i32, i32, i8*, i32*) #1

declare dso_local i64 @fz_get_span_painter(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @fz_scan_convert_aa(i32*, i32*, i32, i32*, %struct.TYPE_5__*, i8*, i8*, i32*) #1

declare dso_local i8* @fz_get_solid_color_painter(i32, i8*, i32, i32*) #1

declare dso_local i32 @fz_scan_convert_sharp(i32*, i32*, i32, i32*, %struct.TYPE_5__*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
