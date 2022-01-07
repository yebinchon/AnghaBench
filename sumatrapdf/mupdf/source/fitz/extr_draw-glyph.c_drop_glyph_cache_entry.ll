; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-glyph.c_drop_glyph_cache_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-glyph.c_drop_glyph_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_19__**, i32, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_20__, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_21__*)* @drop_glyph_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_glyph_cache_entry(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %5, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = icmp ne %struct.TYPE_17__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %20, align 8
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 3
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %26, align 8
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %39, align 8
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 2
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @fz_glyph_size(%struct.TYPE_23__* %47, i32 %50)
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = icmp ne %struct.TYPE_19__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %46
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %69, align 8
  br label %70

70:                                               ; preds = %62, %46
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = icmp ne %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %82, align 8
  br label %94

83:                                               ; preds = %70
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %89, i64 %92
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %93, align 8
  br label %94

94:                                               ; preds = %83, %75
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @fz_drop_font(%struct.TYPE_23__* %95, i32 %99)
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @fz_drop_glyph(%struct.TYPE_23__* %101, i32 %104)
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = call i32 @fz_free(%struct.TYPE_23__* %106, %struct.TYPE_21__* %107)
  ret void
}

declare dso_local i64 @fz_glyph_size(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @fz_drop_font(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @fz_drop_glyph(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @fz_free(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
