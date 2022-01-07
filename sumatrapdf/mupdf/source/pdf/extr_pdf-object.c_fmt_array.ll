; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_array.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.fmt*, i32*)* @fmt_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_array(i32* %0, %struct.fmt* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fmt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.fmt* %1, %struct.fmt** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @pdf_array_len(i32* %9, i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.fmt*, %struct.fmt** %5, align 8
  %13 = getelementptr inbounds %struct.fmt, %struct.fmt* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.fmt*, %struct.fmt** %5, align 8
  %19 = call i32 @fmt_putc(i32* %17, %struct.fmt* %18, i8 signext 91)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %35, %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.fmt*, %struct.fmt** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pdf_array_get(i32* %27, i32* %28, i32 %29)
  %31 = call i32 @fmt_obj(i32* %25, %struct.fmt* %26, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.fmt*, %struct.fmt** %5, align 8
  %34 = call i32 @fmt_sep(i32* %32, %struct.fmt* %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.fmt*, %struct.fmt** %5, align 8
  %41 = call i32 @fmt_putc(i32* %39, %struct.fmt* %40, i8 signext 93)
  br label %95

42:                                               ; preds = %3
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.fmt*, %struct.fmt** %5, align 8
  %45 = call i32 @fmt_putc(i32* %43, %struct.fmt* %44, i8 signext 91)
  %46 = load %struct.fmt*, %struct.fmt** %5, align 8
  %47 = getelementptr inbounds %struct.fmt, %struct.fmt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %78, %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load %struct.fmt*, %struct.fmt** %5, align 8
  %56 = getelementptr inbounds %struct.fmt, %struct.fmt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 60
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.fmt*, %struct.fmt** %5, align 8
  %62 = call i32 @fmt_putc(i32* %60, %struct.fmt* %61, i8 signext 10)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.fmt*, %struct.fmt** %5, align 8
  %65 = call i32 @fmt_indent(i32* %63, %struct.fmt* %64)
  br label %70

66:                                               ; preds = %54
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.fmt*, %struct.fmt** %5, align 8
  %69 = call i32 @fmt_putc(i32* %67, %struct.fmt* %68, i8 signext 32)
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.fmt*, %struct.fmt** %5, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @pdf_array_get(i32* %73, i32* %74, i32 %75)
  %77 = call i32 @fmt_obj(i32* %71, %struct.fmt* %72, i32 %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %50

81:                                               ; preds = %50
  %82 = load %struct.fmt*, %struct.fmt** %5, align 8
  %83 = getelementptr inbounds %struct.fmt, %struct.fmt* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.fmt*, %struct.fmt** %5, align 8
  %88 = call i32 @fmt_putc(i32* %86, %struct.fmt* %87, i8 signext 32)
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.fmt*, %struct.fmt** %5, align 8
  %91 = call i32 @fmt_putc(i32* %89, %struct.fmt* %90, i8 signext 93)
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.fmt*, %struct.fmt** %5, align 8
  %94 = call i32 @fmt_sep(i32* %92, %struct.fmt* %93)
  br label %95

95:                                               ; preds = %81, %38
  ret void
}

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @fmt_putc(i32*, %struct.fmt*, i8 signext) #1

declare dso_local i32 @fmt_obj(i32*, %struct.fmt*, i32) #1

declare dso_local i32 @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32 @fmt_sep(i32*, %struct.fmt*) #1

declare dso_local i32 @fmt_indent(i32*, %struct.fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
