; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encodings.c_fz_duplicate_glyph_names_from_unicode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encodings.c_fz_duplicate_glyph_names_from_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@agl_dup_offsets = common dso_local global i32* null, align 8
@agl_dup_names = common dso_local global i8** null, align 8
@empty_dup_list = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @fz_duplicate_glyph_names_from_unicode(i32 %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32*, i32** @agl_dup_offsets, align 8
  %8 = call i32 @nelem(i32* %7)
  %9 = sdiv i32 %8, 2
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32*, i32** @agl_dup_offsets, align 8
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %55

31:                                               ; preds = %15
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** @agl_dup_offsets, align 8
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %32, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %31
  %44 = load i8**, i8*** @agl_dup_names, align 8
  %45 = load i32*, i32** @agl_dup_offsets, align 8
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 1
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %44, i64 %52
  store i8** %53, i8*** %2, align 8
  br label %58

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %28
  br label %11

56:                                               ; preds = %11
  %57 = load i8**, i8*** @empty_dup_list, align 8
  store i8** %57, i8*** %2, align 8
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i8**, i8*** %2, align 8
  ret i8** %59
}

declare dso_local i32 @nelem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
