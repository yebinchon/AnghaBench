; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_lookup_bookmark.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_lookup_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @epub_lookup_bookmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epub_lookup_bookmark(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  br label %18

18:                                               ; preds = %40, %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = call i32* @epub_get_laid_out_html(i32* %22, %struct.TYPE_5__* %23, %struct.TYPE_6__* %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @fz_lookup_html_bookmark(i32* %26, i32* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @fz_drop_html(i32* %30, i32* %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @fz_make_location(i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %9, align 8
  br label %18

46:                                               ; preds = %18
  %47 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32* @epub_get_laid_out_html(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @fz_lookup_html_bookmark(i32*, i32*, i32) #1

declare dso_local i32 @fz_drop_html(i32*, i32*) #1

declare dso_local i32 @fz_make_location(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
