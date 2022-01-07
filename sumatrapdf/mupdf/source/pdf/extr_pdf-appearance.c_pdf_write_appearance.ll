; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cannot create appearance stream for %s annotations\00", align 1
@Subtype = common dso_local global i32 0, align 4
@fz_identity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_19__*, i32*, i32*, i32*, i32*, i32**)* @pdf_write_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_appearance(i32* %0, %struct.TYPE_19__* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %17 = call i32 @pdf_annot_type(i32* %15, %struct.TYPE_19__* %16)
  switch i32 %17, label %18 [
    i32 128, label %29
    i32 140, label %38
    i32 138, label %49
    i32 137, label %60
    i32 139, label %71
    i32 134, label %82
    i32 144, label %93
    i32 145, label %104
    i32 130, label %113
    i32 143, label %113
    i32 135, label %113
    i32 141, label %122
    i32 129, label %134
    i32 131, label %145
    i32 133, label %156
    i32 136, label %167
    i32 132, label %178
    i32 142, label %188
  ]

18:                                               ; preds = %7
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @Subtype, align 4
  %26 = call i32 @PDF_NAME(i32 %25)
  %27 = call i32 @pdf_dict_get_name(i32* %21, i32 %24, i32 %26)
  %28 = call i32 @fz_throw(i32* %19, i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %7, %18
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32**, i32*** %14, align 8
  %37 = call i32 @pdf_write_widget_appearance(i32* %30, %struct.TYPE_19__* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32** %36)
  br label %197

38:                                               ; preds = %7
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @pdf_write_ink_appearance(i32* %39, %struct.TYPE_19__* %40, i32* %41, i32* %42)
  %44 = load i32, i32* @fz_identity, align 4
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  br label %197

49:                                               ; preds = %7
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @pdf_write_polygon_appearance(i32* %50, %struct.TYPE_19__* %51, i32* %52, i32* %53, i32 1)
  %55 = load i32, i32* @fz_identity, align 4
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %12, align 8
  store i32 %58, i32* %59, align 4
  br label %197

60:                                               ; preds = %7
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @pdf_write_polygon_appearance(i32* %61, %struct.TYPE_19__* %62, i32* %63, i32* %64, i32 0)
  %66 = load i32, i32* @fz_identity, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  br label %197

71:                                               ; preds = %7
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @pdf_write_line_appearance(i32* %72, %struct.TYPE_19__* %73, i32* %74, i32* %75)
  %77 = load i32, i32* @fz_identity, align 4
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 8
  store i32 %80, i32* %81, align 4
  br label %197

82:                                               ; preds = %7
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @pdf_write_square_appearance(i32* %83, %struct.TYPE_19__* %84, i32* %85, i32* %86)
  %88 = load i32, i32* @fz_identity, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  br label %197

93:                                               ; preds = %7
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @pdf_write_circle_appearance(i32* %94, %struct.TYPE_19__* %95, i32* %96, i32* %97)
  %99 = load i32, i32* @fz_identity, align 4
  %100 = load i32*, i32** %13, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %12, align 8
  store i32 %102, i32* %103, align 4
  br label %197

104:                                              ; preds = %7
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @pdf_write_caret_appearance(i32* %105, %struct.TYPE_19__* %106, i32* %107, i32* %108, i32* %109)
  %111 = load i32, i32* @fz_identity, align 4
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %197

113:                                              ; preds = %7, %7, %7
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @pdf_write_icon_appearance(i32* %114, %struct.TYPE_19__* %115, i32* %116, i32* %117, i32* %118)
  %120 = load i32, i32* @fz_identity, align 4
  %121 = load i32*, i32** %13, align 8
  store i32 %120, i32* %121, align 4
  br label %197

122:                                              ; preds = %7
  %123 = load i32*, i32** %8, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i32**, i32*** %14, align 8
  %128 = call i32 @pdf_write_highlight_appearance(i32* %123, %struct.TYPE_19__* %124, i32* %125, i32* %126, i32** %127)
  %129 = load i32, i32* @fz_identity, align 4
  %130 = load i32*, i32** %13, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %12, align 8
  store i32 %132, i32* %133, align 4
  br label %197

134:                                              ; preds = %7
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @pdf_write_underline_appearance(i32* %135, %struct.TYPE_19__* %136, i32* %137, i32* %138)
  %140 = load i32, i32* @fz_identity, align 4
  %141 = load i32*, i32** %13, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %12, align 8
  store i32 %143, i32* %144, align 4
  br label %197

145:                                              ; preds = %7
  %146 = load i32*, i32** %8, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @pdf_write_strike_out_appearance(i32* %146, %struct.TYPE_19__* %147, i32* %148, i32* %149)
  %151 = load i32, i32* @fz_identity, align 4
  %152 = load i32*, i32** %13, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %12, align 8
  store i32 %154, i32* %155, align 4
  br label %197

156:                                              ; preds = %7
  %157 = load i32*, i32** %8, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = call i32 @pdf_write_squiggly_appearance(i32* %157, %struct.TYPE_19__* %158, i32* %159, i32* %160)
  %162 = load i32, i32* @fz_identity, align 4
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %12, align 8
  store i32 %165, i32* %166, align 4
  br label %197

167:                                              ; preds = %7
  %168 = load i32*, i32** %8, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @pdf_write_redact_appearance(i32* %168, %struct.TYPE_19__* %169, i32* %170, i32* %171)
  %173 = load i32, i32* @fz_identity, align 4
  %174 = load i32*, i32** %13, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %12, align 8
  store i32 %176, i32* %177, align 4
  br label %197

178:                                              ; preds = %7
  %179 = load i32*, i32** %8, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = load i32**, i32*** %14, align 8
  %185 = call i32 @pdf_write_stamp_appearance(i32* %179, %struct.TYPE_19__* %180, i32* %181, i32* %182, i32* %183, i32** %184)
  %186 = load i32, i32* @fz_identity, align 4
  %187 = load i32*, i32** %13, align 8
  store i32 %186, i32* %187, align 4
  br label %197

188:                                              ; preds = %7
  %189 = load i32*, i32** %8, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = load i32**, i32*** %14, align 8
  %196 = call i32 @pdf_write_free_text_appearance(i32* %189, %struct.TYPE_19__* %190, i32* %191, i32* %192, i32* %193, i32* %194, i32** %195)
  br label %197

197:                                              ; preds = %188, %178, %167, %156, %145, %134, %122, %113, %104, %93, %82, %71, %60, %49, %38, %29
  ret void
}

declare dso_local i32 @pdf_annot_type(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @pdf_dict_get_name(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_write_widget_appearance(i32*, %struct.TYPE_19__*, i32*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @pdf_write_ink_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_polygon_appearance(i32*, %struct.TYPE_19__*, i32*, i32*, i32) #1

declare dso_local i32 @pdf_write_line_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_square_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_circle_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_caret_appearance(i32*, %struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_write_icon_appearance(i32*, %struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_write_highlight_appearance(i32*, %struct.TYPE_19__*, i32*, i32*, i32**) #1

declare dso_local i32 @pdf_write_underline_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_strike_out_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_squiggly_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_redact_appearance(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @pdf_write_stamp_appearance(i32*, %struct.TYPE_19__*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @pdf_write_free_text_appearance(i32*, %struct.TYPE_19__*, i32*, i32*, i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
