; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_load_chapter_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_load_chapter_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @fz_load_chapter_page(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = call i32 @fz_ensure_layout(i32* %11, %struct.TYPE_11__* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  br label %20

20:                                               ; preds = %40, %16
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = call %struct.TYPE_10__* @fz_keep_page(i32* %36, %struct.TYPE_10__* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %5, align 8
  br label %99

39:                                               ; preds = %29, %23
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %10, align 8
  br label %20

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44, %4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %98

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = bitcast {}** %50 to %struct.TYPE_10__* (i32*, %struct.TYPE_11__*, i32, i32)**
  %52 = load %struct.TYPE_10__* (i32*, %struct.TYPE_11__*, i32, i32)*, %struct.TYPE_10__* (i32*, %struct.TYPE_11__*, i32, i32)** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* (i32*, %struct.TYPE_11__*, i32, i32)* %52, null
  br i1 %53, label %54, label %98

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = bitcast {}** %56 to %struct.TYPE_10__* (i32*, %struct.TYPE_11__*, i32, i32)**
  %58 = load %struct.TYPE_10__* (i32*, %struct.TYPE_11__*, i32, i32)*, %struct.TYPE_10__* (i32*, %struct.TYPE_11__*, i32, i32)** %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.TYPE_10__* %58(i32* %59, %struct.TYPE_11__* %60, i32 %61, i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %54
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %79, align 8
  %80 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store %struct.TYPE_10__** %83, %struct.TYPE_10__*** %87, align 8
  br label %88

88:                                               ; preds = %81, %74
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store %struct.TYPE_10__** %93, %struct.TYPE_10__*** %95, align 8
  br label %96

96:                                               ; preds = %88, %54
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %5, align 8
  br label %99

98:                                               ; preds = %48, %45
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %99

99:                                               ; preds = %98, %96, %35
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %100
}

declare dso_local i32 @fz_ensure_layout(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @fz_keep_page(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
