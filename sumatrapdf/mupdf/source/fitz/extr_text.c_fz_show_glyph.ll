; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_show_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_show_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot modify shared text objects\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_show_glyph(i32* %0, %struct.TYPE_13__* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_14__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = bitcast %struct.TYPE_14__* %11 to i64*
  store i64 %3, i64* %22, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %10
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %30 = call i32 @fz_throw(i32* %28, i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %10
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %20, align 4
  %39 = bitcast %struct.TYPE_14__* %11 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call %struct.TYPE_12__* @fz_add_text_span(i32* %32, %struct.TYPE_13__* %33, i32* %34, i32 %35, i32 %36, i32 %37, i32 %38, i64 %40)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %21, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %44 = call i32 @fz_grow_text_span(i32* %42, %struct.TYPE_12__* %43, i32 1)
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 %45, i32* %53, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 %54, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store i32 %64, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %74, i32* %82, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_12__* @fz_add_text_span(i32*, %struct.TYPE_13__*, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @fz_grow_text_span(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
