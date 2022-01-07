; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_load_xref.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_load_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { float, i32, i64, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"found xref was empty\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"first object in xref is not free\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"object offset out of range: %d (%d 0 R)\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"invalid reference to an objstm that does not exist: %d (%d 0 R)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32*)* @pdf_load_xref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_load_xref(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = call i32 @pdf_read_start_xref(i32* %11, %struct.TYPE_11__* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @pdf_read_xref_sections(i32* %14, %struct.TYPE_11__* %15, i32 %18, i32* %19, i32 1)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = call i32 @pdf_xref_len(i32* %21, %struct.TYPE_11__* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %28 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call i32 @pdf_prime_xref_index(i32* %30, %struct.TYPE_11__* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = call %struct.TYPE_10__* @pdf_get_xref_entry(i32* %33, %struct.TYPE_11__* %34, i32 0)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %9, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 8
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %47, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store float 1.020000e+02, float* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i32 65535, i32* %44, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %56

47:                                               ; preds = %29
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 8
  %51 = fcmp une float %50, 1.020000e+02
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @fz_warn(i32* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = call i32 @pdf_xref_len(i32* %57, %struct.TYPE_11__* %58)
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %137, %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %140

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.TYPE_10__* @pdf_get_xref_entry(i32* %65, %struct.TYPE_11__* %66, i32 %67)
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %9, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 8
  %72 = fcmp oeq float %71, 1.100000e+02
  br i1 %72, label %73, label %105

73:                                               ; preds = %64
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store float 1.020000e+02, float* %80, align 8
  br label %104

81:                                               ; preds = %73
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %86, %81
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %95, i32 %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %86
  br label %104

104:                                              ; preds = %103, %78
  br label %105

105:                                              ; preds = %104, %64
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 8
  %109 = fcmp oeq float %108, 1.110000e+02
  br i1 %109, label %110, label %136

110:                                              ; preds = %105
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call %struct.TYPE_10__* @pdf_get_xref_entry(i32* %122, %struct.TYPE_11__* %123, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load float, float* %126, align 8
  %128 = fcmp une float %127, 1.100000e+02
  br i1 %128, label %129, label %135

129:                                              ; preds = %121, %117, %110
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %130, i32 %131, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %129, %121
  br label %136

136:                                              ; preds = %135, %105
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %60

140:                                              ; preds = %60
  ret void
}

declare dso_local i32 @pdf_read_start_xref(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @pdf_read_xref_sections(i32*, %struct.TYPE_11__*, i32, i32*, i32) #1

declare dso_local i32 @pdf_xref_len(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @pdf_prime_xref_index(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @pdf_get_xref_entry(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
