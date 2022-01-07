; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_text_span.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_text_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"<span font=\22%s\22 wmode=\22%d\22 bidi=\22%d\22\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" trm=\22%g %g %g %g\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"<g unicode=\22-1\22\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"<g unicode=\22%c\22\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"<g unicode=\22U+%04x\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" glyph=\22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" glyph=\22-1\22\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" x=\22%g\22 y=\22%g\22 />\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"</span>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_7__*, i32)* @fz_trace_text_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_trace_text_span(i32* %0, i32* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @fz_trace_indent(i32* %11, i32* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @fz_font_name(i32* %17, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %15, i32* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %29, i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %162, %4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %165

54:                                               ; preds = %48
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @fz_trace_indent(i32* %55, i32* %56, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %70, i32* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %109

73:                                               ; preds = %54
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @isxmlmeta(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %73
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %85, i32* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %108

96:                                               ; preds = %73
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %97, i32* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %96, %84
  br label %109

109:                                              ; preds = %108, %69
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %109
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %133 = call i32 @fz_get_glyph_name(i32* %120, i32 %123, i64 %131, i8* %132, i32 32)
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %137 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %134, i32* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  br label %142

138:                                              ; preds = %109
  %139 = load i32*, i32** %5, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %139, i32* %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %119
  %143 = load i32*, i32** %5, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %143, i32* %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %152, i32 %160)
  br label %162

162:                                              ; preds = %142
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %48

165:                                              ; preds = %48
  %166 = load i32*, i32** %5, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @fz_trace_indent(i32* %166, i32* %167, i32 %168)
  %170 = load i32*, i32** %5, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %170, i32* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_trace_indent(i32*, i32*, i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @fz_font_name(i32*, i32) #1

declare dso_local i32 @isxmlmeta(i32) #1

declare dso_local i32 @fz_get_glyph_name(i32*, i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
