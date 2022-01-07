; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-jbig2.c_fz_jbig2_realloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-jbig2.c_fz_jbig2_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fz_jbig2_alloc_s = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64)* @fz_jbig2_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fz_jbig2_realloc(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.fz_jbig2_alloc_s*
  %11 = getelementptr inbounds %struct.fz_jbig2_alloc_s, %struct.fz_jbig2_alloc_s* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @fz_free(i32* %16, i8* %17)
  store i8* null, i8** %4, align 8
  br label %31

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i8* @fz_malloc(i32* %23, i64 %24)
  store i8* %25, i8** %4, align 8
  br label %31

26:                                               ; preds = %19
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i8* @fz_realloc_no_throw(i32* %27, i8* %28, i64 %29)
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %26, %22, %15
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i32 @fz_free(i32*, i8*) #1

declare dso_local i8* @fz_malloc(i32*, i64) #1

declare dso_local i8* @fz_realloc_no_throw(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
