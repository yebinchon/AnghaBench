; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_get_bound_document.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_get_bound_document.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }

@PDF_LIMIT = common dso_local global %struct.TYPE_10__* null, align 8
@PDF_INDIRECT = common dso_local global i64 0, align 8
@PDF_ARRAY = common dso_local global i64 0, align 8
@PDF_DICT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdf_get_bound_document(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PDF_LIMIT, align 8
  %8 = icmp ult %struct.TYPE_10__* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* null, i32** %3, align 8
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PDF_INDIRECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call %struct.TYPE_11__* @REF(%struct.TYPE_10__* %17)
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %3, align 8
  br label %44

21:                                               ; preds = %10
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PDF_ARRAY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = call %struct.TYPE_13__* @ARRAY(%struct.TYPE_10__* %28)
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %3, align 8
  br label %44

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PDF_DICT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call %struct.TYPE_12__* @DICT(%struct.TYPE_10__* %39)
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %3, align 8
  br label %44

43:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %44

44:                                               ; preds = %43, %38, %27, %16, %9
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local %struct.TYPE_11__* @REF(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_13__* @ARRAY(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @DICT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
