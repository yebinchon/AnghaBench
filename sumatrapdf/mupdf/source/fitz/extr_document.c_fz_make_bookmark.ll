; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_make_bookmark.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_make_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { {}* }
%struct.TYPE_7__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fz_make_bookmark(i32* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = bitcast %struct.TYPE_7__* %6 to { i32, i64 }*
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 0
  store i32 %2, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 1
  store i64 %3, i64* %11, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i64 (i32*, %struct.TYPE_8__*, i32, i64)**
  %18 = load i64 (i32*, %struct.TYPE_8__*, i32, i64)*, i64 (i32*, %struct.TYPE_8__*, i32, i64)** %17, align 8
  %19 = icmp ne i64 (i32*, %struct.TYPE_8__*, i32, i64)* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i64 (i32*, %struct.TYPE_8__*, i32, i64)**
  %24 = load i64 (i32*, %struct.TYPE_8__*, i32, i64)*, i64 (i32*, %struct.TYPE_8__*, i32, i64)** %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = bitcast %struct.TYPE_7__* %6 to { i32, i64 }*
  %28 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %27, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 %24(i32* %25, %struct.TYPE_8__* %26, i32 %29, i64 %31)
  store i64 %32, i64* %5, align 8
  br label %41

33:                                               ; preds = %14, %4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 16
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %37, %39
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %33, %20
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
