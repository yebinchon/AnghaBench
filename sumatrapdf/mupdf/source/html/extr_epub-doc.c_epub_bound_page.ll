; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_bound_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_bound_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i64*, i64, i64 }

@L = common dso_local global i64 0, align 8
@R = common dso_local global i64 0, align 8
@T = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*)* @epub_bound_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epub_bound_page(%struct.TYPE_7__* noalias sret %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32* %1, i32** %4, align 8
  store i32* %2, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call %struct.TYPE_8__* @epub_get_laid_out_html(i32* %14, i32 %17, i32* %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @L, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %24, %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @R, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %31, %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @T, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %42, %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @B, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %49, %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = call i32 @fz_drop_html(i32* %58, %struct.TYPE_8__* %59)
  ret void
}

declare dso_local %struct.TYPE_8__* @epub_get_laid_out_html(i32*, i32, i32*) #1

declare dso_local i32 @fz_drop_html(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
