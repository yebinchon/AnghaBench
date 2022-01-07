; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_new_pixmap_with_bbox_and_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_new_pixmap_with_bbox_and_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @fz_new_pixmap_with_bbox_and_data(i32* %0, i32* %1, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* %5, i8** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %17, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @fz_count_active_separations(i32* %21, i32* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %26, %6
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @fz_colorspace_n(i32* %31, i32* %32)
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call %struct.TYPE_6__* @fz_new_pixmap_with_data(i32* %40, i32* %41, i32 %42, i64 %47, i32* %48, i32 %49, i32 %50, i8* %51)
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  ret %struct.TYPE_6__* %61
}

declare dso_local i32 @fz_count_active_separations(i32*, i32*) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @fz_new_pixmap_with_data(i32*, i32*, i32, i64, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
