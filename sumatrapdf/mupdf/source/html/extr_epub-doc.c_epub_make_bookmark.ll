; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_make_bookmark.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_make_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @epub_make_bookmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epub_make_bookmark(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = bitcast %struct.TYPE_7__* %5 to i64*
  store i64 %2, i64* %13, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %9, align 8
  br label %19

19:                                               ; preds = %42, %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = call i32* @epub_get_laid_out_html(i32* %28, %struct.TYPE_8__* %29, %struct.TYPE_9__* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fz_make_html_bookmark(i32* %32, i32* %33, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @fz_drop_html(i32* %37, i32* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %49

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %9, align 8
  br label %19

48:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32* @epub_get_laid_out_html(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @fz_make_html_bookmark(i32*, i32*, i32) #1

declare dso_local i32 @fz_drop_html(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
