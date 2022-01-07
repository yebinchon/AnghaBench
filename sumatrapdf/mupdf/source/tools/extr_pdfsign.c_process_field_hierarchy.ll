; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfsign.c_process_field_hierarchy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfsign.c_process_field_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Kids = common dso_local global i32 0, align 4
@FT = common dso_local global i32 0, align 4
@Sig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @process_field_hierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_field_hierarchy(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @Kids, align 4
  %14 = call i64 @PDF_NAME(i32 %13)
  %15 = call i32* @pdf_dict_get(i32* %11, i32* %12, i64 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @pdf_array_len(i32* %19, i32* %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %44, %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32* @pdf_array_get(i32* %27, i32* %28, i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @FT, align 4
  %34 = call i64 @PDF_NAME(i32 %33)
  %35 = call i64 @pdf_dict_get_inheritable(i32* %31, i32* %32, i64 %34)
  %36 = load i32, i32* @Sig, align 4
  %37 = call i64 @PDF_NAME(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %10, align 8
  call void @process_field_hierarchy(i32* %40, i32* %41, i32* %42)
  br label %43

43:                                               ; preds = %39, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %22

47:                                               ; preds = %22
  br label %63

48:                                               ; preds = %3
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @FT, align 4
  %52 = call i64 @PDF_NAME(i32 %51)
  %53 = call i64 @pdf_dict_get_inheritable(i32* %49, i32* %50, i64 %52)
  %54 = load i32, i32* @Sig, align 4
  %55 = call i64 @PDF_NAME(i32 %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @process_field(i32* %58, i32* %59, i32* %60)
  br label %62

62:                                               ; preds = %57, %48
  br label %63

63:                                               ; preds = %62, %47
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i64) #1

declare dso_local i64 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @pdf_dict_get_inheritable(i32*, i32*, i64) #1

declare dso_local i32 @process_field(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
