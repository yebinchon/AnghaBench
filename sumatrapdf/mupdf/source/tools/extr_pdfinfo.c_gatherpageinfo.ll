; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfinfo.c_gatherpageinfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfinfo.c_gatherpageinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot retrieve info from page %d\00", align 1
@Resources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32)* @gatherpageinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatherpageinfo(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32* @pdf_lookup_page_obj(i32* %11, i32 %14, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @fz_throw(i32* %21, i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @gatherdimensions(i32* %26, %struct.TYPE_5__* %27, i32 %28, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @Resources, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i32* @pdf_dict_get(i32* %31, i32* %32, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @gatherresourceinfo(i32* %36, %struct.TYPE_5__* %37, i32 %38, i32* %39, i32 %40)
  ret void
}

declare dso_local i32* @pdf_lookup_page_obj(i32*, i32, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @gatherdimensions(i32*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @gatherresourceinfo(i32*, %struct.TYPE_5__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
