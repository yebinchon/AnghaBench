; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_delete_annot.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_delete_annot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@Annots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_delete_annot(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = icmp eq %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %81

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store %struct.TYPE_11__** %21, %struct.TYPE_11__*** %8, align 8
  br label %22

22:                                               ; preds = %33, %19
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = icmp eq %struct.TYPE_11__* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store %struct.TYPE_11__** %36, %struct.TYPE_11__*** %8, align 8
  br label %22

37:                                               ; preds = %31, %22
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp eq %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %81

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %46, align 8
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp eq %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store %struct.TYPE_11__** %51, %struct.TYPE_11__*** %53, align 8
  br label %54

54:                                               ; preds = %50, %42
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @Annots, align 4
  %60 = call i32 @PDF_NAME(i32 %59)
  %61 = call i32* @pdf_dict_get(i32* %55, i32 %58, i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pdf_array_find(i32* %62, i32* %63, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %54
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @pdf_array_delete(i32* %71, i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %54
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = call i32 @pdf_drop_annot(i32* %76, %struct.TYPE_11__* %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %41, %18
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_find(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_delete(i32*, i32*, i32) #1

declare dso_local i32 @pdf_drop_annot(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
