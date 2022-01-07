; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_set_colorspace.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_set_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32, i32 }

@PDF_FILL = common dso_local global i32 0, align 4
@PDF_MAT_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32, i32*)* @pdf_set_colorspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_set_colorspace(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %19
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @fz_colorspace_n(i32* %21, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = call %struct.TYPE_9__* @pdf_flush_text(i32* %24, %struct.TYPE_7__* %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PDF_FILL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  br label %36

33:                                               ; preds = %4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi %struct.TYPE_8__* [ %32, %30 ], [ %35, %33 ]
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %10, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @fz_drop_colorspace(i32* %38, i32 %41)
  %43 = load i32, i32* @PDF_MAT_COLOR, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @fz_keep_colorspace(i32* %46, i32* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 0, i32* %62, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 1, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @pdf_is_tint_colorspace(i32* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %83, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %72

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %36
  ret void
}

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @pdf_flush_text(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @fz_drop_colorspace(i32*, i32) #1

declare dso_local i32 @fz_keep_colorspace(i32*, i32*) #1

declare dso_local i64 @pdf_is_tint_colorspace(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
