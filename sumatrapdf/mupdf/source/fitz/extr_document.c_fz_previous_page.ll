; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_previous_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_previous_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i64 } @fz_previous_page(i32* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_5__* %6 to { i32, i64 }*
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 0
  store i32 %2, i32* %11, align 8
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 1
  store i64 %3, i64* %12, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @fz_count_chapter_pages(i32* %21, i32* %22, i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call { i32, i64 } @fz_make_location(i64 %29, i32 %31)
  %33 = bitcast %struct.TYPE_5__* %5 to { i32, i64 }*
  %34 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i32, i64 } %32, 0
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i32, i64 } %32, 1
  store i64 %37, i64* %36, align 8
  br label %54

38:                                               ; preds = %16
  br label %51

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = call { i32, i64 } @fz_make_location(i64 %41, i32 %44)
  %46 = bitcast %struct.TYPE_5__* %5 to { i32, i64 }*
  %47 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 0
  %48 = extractvalue { i32, i64 } %45, 0
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 1
  %50 = extractvalue { i32, i64 } %45, 1
  store i64 %50, i64* %49, align 8
  br label %54

51:                                               ; preds = %38
  %52 = bitcast %struct.TYPE_5__* %5 to i8*
  %53 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  br label %54

54:                                               ; preds = %51, %39, %20
  %55 = bitcast %struct.TYPE_5__* %5 to { i32, i64 }*
  %56 = load { i32, i64 }, { i32, i64 }* %55, align 8
  ret { i32, i64 } %56
}

declare dso_local i32 @fz_count_chapter_pages(i32*, i32*, i64) #1

declare dso_local { i32, i64 } @fz_make_location(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
