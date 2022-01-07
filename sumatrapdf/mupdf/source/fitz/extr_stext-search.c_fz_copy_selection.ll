; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_fz_copy_selection.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_fz_copy_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callbacks = type { i32*, i32, i32 }

@on_copy_char = common dso_local global i32 0, align 4
@on_copy_line_crlf = common dso_local global i32 0, align 4
@on_copy_line_lf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fz_copy_selection(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.callbacks, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @fz_new_buffer(i32* %14, i32 1024)
  store i32* %15, i32** %12, align 8
  %16 = load i32, i32* @on_copy_char, align 4
  %17 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %11, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @on_copy_line_crlf, align 4
  br label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @on_copy_line_lf, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %11, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %11, i32 0, i32 0
  store i32* %27, i32** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @fz_enumerate_selection(i32* %29, i32* %30, i32 %31, i32 %32, %struct.callbacks* %11)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @fz_terminate_buffer(i32* %34, i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @fz_buffer_extract(i32* %37, i32* %38, i8** %13)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @fz_drop_buffer(i32* %40, i32* %41)
  %43 = load i8*, i8** %13, align 8
  ret i8* %43
}

declare dso_local i32* @fz_new_buffer(i32*, i32) #1

declare dso_local i32 @fz_enumerate_selection(i32*, i32*, i32, i32, %struct.callbacks*) #1

declare dso_local i32 @fz_terminate_buffer(i32*, i32*) #1

declare dso_local i32 @fz_buffer_extract(i32*, i32*, i8**) #1

declare dso_local i32 @fz_drop_buffer(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
