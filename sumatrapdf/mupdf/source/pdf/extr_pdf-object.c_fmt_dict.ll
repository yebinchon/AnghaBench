; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_dict.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.fmt*, i32*)* @fmt_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_dict(i32* %0, %struct.fmt* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fmt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.fmt* %1, %struct.fmt** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @pdf_dict_len(i32* %11, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.fmt*, %struct.fmt** %5, align 8
  %15 = getelementptr inbounds %struct.fmt, %struct.fmt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.fmt*, %struct.fmt** %5, align 8
  %21 = call i32 @fmt_puts(i32* %19, %struct.fmt* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %47, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.fmt*, %struct.fmt** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32* @pdf_dict_get_key(i32* %29, i32* %30, i32 %31)
  %33 = call i32 @fmt_obj(i32* %27, %struct.fmt* %28, i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.fmt*, %struct.fmt** %5, align 8
  %36 = call i32 @fmt_sep(i32* %34, %struct.fmt* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.fmt*, %struct.fmt** %5, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @pdf_dict_get_val(i32* %39, i32* %40, i32 %41)
  %43 = call i32 @fmt_obj(i32* %37, %struct.fmt* %38, i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.fmt*, %struct.fmt** %5, align 8
  %46 = call i32 @fmt_sep(i32* %44, %struct.fmt* %45)
  br label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.fmt*, %struct.fmt** %5, align 8
  %53 = call i32 @fmt_puts(i32* %51, %struct.fmt* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %136

54:                                               ; preds = %3
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.fmt*, %struct.fmt** %5, align 8
  %57 = call i32 @fmt_puts(i32* %55, %struct.fmt* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.fmt*, %struct.fmt** %5, align 8
  %59 = getelementptr inbounds %struct.fmt, %struct.fmt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %122, %54
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %62
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32* @pdf_dict_get_key(i32* %67, i32* %68, i32 %69)
  store i32* %70, i32** %9, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32* @pdf_dict_get_val(i32* %71, i32* %72, i32 %73)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.fmt*, %struct.fmt** %5, align 8
  %77 = call i32 @fmt_indent(i32* %75, %struct.fmt* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.fmt*, %struct.fmt** %5, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @fmt_obj(i32* %78, %struct.fmt* %79, i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.fmt*, %struct.fmt** %5, align 8
  %84 = call i32 @fmt_putc(i32* %82, %struct.fmt* %83, i8 signext 32)
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @pdf_is_indirect(i32* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %66
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i64 @pdf_is_array(i32* %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.fmt*, %struct.fmt** %5, align 8
  %96 = getelementptr inbounds %struct.fmt, %struct.fmt* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %94, %89, %66
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.fmt*, %struct.fmt** %5, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @fmt_obj(i32* %100, %struct.fmt* %101, i32* %102)
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.fmt*, %struct.fmt** %5, align 8
  %106 = call i32 @fmt_putc(i32* %104, %struct.fmt* %105, i8 signext 10)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @pdf_is_indirect(i32* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %99
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i64 @pdf_is_array(i32* %112, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.fmt*, %struct.fmt** %5, align 8
  %118 = getelementptr inbounds %struct.fmt, %struct.fmt* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %116, %111, %99
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %62

125:                                              ; preds = %62
  %126 = load %struct.fmt*, %struct.fmt** %5, align 8
  %127 = getelementptr inbounds %struct.fmt, %struct.fmt* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.fmt*, %struct.fmt** %5, align 8
  %132 = call i32 @fmt_indent(i32* %130, %struct.fmt* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.fmt*, %struct.fmt** %5, align 8
  %135 = call i32 @fmt_puts(i32* %133, %struct.fmt* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %125, %50
  ret void
}

declare dso_local i32 @pdf_dict_len(i32*, i32*) #1

declare dso_local i32 @fmt_puts(i32*, %struct.fmt*, i8*) #1

declare dso_local i32 @fmt_obj(i32*, %struct.fmt*, i32*) #1

declare dso_local i32* @pdf_dict_get_key(i32*, i32*, i32) #1

declare dso_local i32 @fmt_sep(i32*, %struct.fmt*) #1

declare dso_local i32* @pdf_dict_get_val(i32*, i32*, i32) #1

declare dso_local i32 @fmt_indent(i32*, %struct.fmt*) #1

declare dso_local i32 @fmt_putc(i32*, %struct.fmt*, i8 signext) #1

declare dso_local i32 @pdf_is_indirect(i32*, i32*) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
