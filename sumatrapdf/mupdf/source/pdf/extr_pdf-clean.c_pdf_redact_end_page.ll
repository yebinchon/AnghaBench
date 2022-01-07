; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_redact_end_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_redact_end_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"0 g\0A\00", align 1
@Subtype = common dso_local global i32 0, align 4
@Redact = common dso_local global i32 0, align 4
@QuadPoints = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@Rect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*)* @pdf_redact_end_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_redact_end_page(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca %struct.TYPE_18__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @fz_append_string(i32* %18, i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.TYPE_17__* @pdf_first_annot(i32* %21, i32* %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %10, align 8
  br label %24

24:                                               ; preds = %149, %4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %153

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @Subtype, align 4
  %33 = call i32* @PDF_NAME(i32 %32)
  %34 = call i32* @pdf_dict_get(i32* %28, i32 %31, i32* %33)
  %35 = load i32, i32* @Redact, align 4
  %36 = call i32* @PDF_NAME(i32 %35)
  %37 = icmp eq i32* %34, %36
  br i1 %37, label %38, label %148

38:                                               ; preds = %27
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QuadPoints, align 4
  %44 = call i32* @PDF_NAME(i32 %43)
  %45 = call i32* @pdf_dict_get(i32* %39, i32 %42, i32* %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @pdf_array_len(i32* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %99, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %102

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %12, align 4
  call void @pdf_to_quad(%struct.TYPE_19__* sret %14, i32* %57, i32* %58, i32 %59)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fz_append_printf(i32* %60, i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fz_append_printf(i32* %69, i32* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @fz_append_printf(i32* %78, i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @fz_append_printf(i32* %87, i32* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @fz_append_string(i32* %96, i32* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %56
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 8
  store i32 %101, i32* %12, align 4
  br label %52

102:                                              ; preds = %52
  br label %147

103:                                              ; preds = %38
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @Rect, align 4
  %109 = call i32* @PDF_NAME(i32 %108)
  %110 = call { i64, i64 } @pdf_dict_get_rect(i32* %104, i32 %107, i32* %109)
  %111 = bitcast %struct.TYPE_18__* %15 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = extractvalue { i64, i64 } %110, 0
  store i64 %113, i64* %112, align 4
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = extractvalue { i64, i64 } %110, 1
  store i64 %115, i64* %114, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @fz_append_printf(i32* %116, i32* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @fz_append_printf(i32* %123, i32* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @fz_append_printf(i32* %130, i32* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @fz_append_printf(i32* %137, i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %142)
  %144 = load i32*, i32** %5, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @fz_append_string(i32* %144, i32* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %103, %102
  br label %148

148:                                              ; preds = %147, %27
  br label %149

149:                                              ; preds = %148
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = call %struct.TYPE_17__* @pdf_next_annot(i32* %150, %struct.TYPE_17__* %151)
  store %struct.TYPE_17__* %152, %struct.TYPE_17__** %10, align 8
  br label %24

153:                                              ; preds = %24
  ret void
}

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_17__* @pdf_first_annot(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local void @pdf_to_quad(%struct.TYPE_19__* sret, i32*, i32*, i32) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, i32, i32) #1

declare dso_local { i64, i64 } @pdf_dict_get_rect(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @pdf_next_annot(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
