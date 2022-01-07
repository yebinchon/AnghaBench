; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_set_pattern.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_set_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32 }

@PDF_FILL = common dso_local global i32 0, align 4
@PDF_MAT_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, i32*, float*)* @pdf_set_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_set_pattern(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, float* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store float* %4, float** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = call %struct.TYPE_10__* @pdf_flush_text(i32* %13, %struct.TYPE_8__* %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PDF_FILL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  br label %25

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi %struct.TYPE_9__* [ %21, %19 ], [ %24, %22 ]
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %12, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @pdf_drop_pattern(i32* %27, i32* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* @PDF_MAT_PATTERN, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @pdf_keep_pattern(i32* %40, i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %39, %25
  %46 = load float*, float** %10, align 8
  %47 = icmp ne float* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load float*, float** %10, align 8
  %53 = call i32 @pdf_set_color(i32* %49, %struct.TYPE_8__* %50, i32 %51, float* %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local %struct.TYPE_10__* @pdf_flush_text(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pdf_drop_pattern(i32*, i32*) #1

declare dso_local i32* @pdf_keep_pattern(i32*, i32*) #1

declare dso_local i32 @pdf_set_color(i32*, %struct.TYPE_8__*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
