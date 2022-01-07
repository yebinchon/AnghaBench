; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-unicode.c_pdf_remap_cmap_range.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-unicode.c_pdf_remap_cmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32*)* @pdf_remap_cmap_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_remap_cmap_range(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %55, %6
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %26 = call i32 @pdf_lookup_cmap_full(i32* %21, i32 %24, i32* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add i32 %35, %36
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = call i32 @pdf_map_range_to_range(i32* %30, i32* %31, i32 %34, i32 %37, i32 %39)
  br label %54

41:                                               ; preds = %20
  %42 = load i32, i32* %15, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %47, %48
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @pdf_map_one_to_many(i32* %45, i32* %46, i32 %49, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %41
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %13, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %16

58:                                               ; preds = %16
  ret void
}

declare dso_local i32 @pdf_lookup_cmap_full(i32*, i32, i32*) #1

declare dso_local i32 @pdf_map_range_to_range(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pdf_map_one_to_many(i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
