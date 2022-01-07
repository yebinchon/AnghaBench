; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-run.c_pdf_run_page_widgets_with_usage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-run.c_pdf_run_page_widgets_with_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_10__*, i32*, i32, i8*, %struct.TYPE_11__*)* @pdf_run_page_widgets_with_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_run_page_widgets_with_usage(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, i32 %4, i8* %5, %struct.TYPE_11__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %14, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %7
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  store i32 1, i32* %16, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %15, align 8
  br label %28

28:                                               ; preds = %34, %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %15, align 8
  br label %28

38:                                               ; preds = %28
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %19, %7
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %15, align 8
  br label %48

48:                                               ; preds = %75, %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %79

60:                                               ; preds = %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %51
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %74 = call i32 @pdf_run_annot_with_usage(i32* %66, i32* %67, %struct.TYPE_10__* %68, %struct.TYPE_9__* %69, i32* %70, i32 %71, i8* %72, %struct.TYPE_11__* %73)
  br label %75

75:                                               ; preds = %65
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %15, align 8
  br label %48

79:                                               ; preds = %59, %48
  ret void
}

declare dso_local i32 @pdf_run_annot_with_usage(i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32, i8*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
