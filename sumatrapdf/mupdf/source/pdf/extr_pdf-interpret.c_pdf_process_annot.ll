; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-interpret.c_pdf_process_annot.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-interpret.c_pdf_process_annot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (i32*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_15__*, i32*, i64, i32)*, i32 (i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32)*, i32 (i32*, %struct.TYPE_15__*)*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }

@F = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_INVISIBLE = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_HIDDEN = common dso_local global i32 0, align 4
@PDF_ANNOT_POPUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"Print\00", align 1
@PDF_ANNOT_IS_PRINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@PDF_ANNOT_IS_NO_VIEW = common dso_local global i32 0, align 4
@OC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_process_annot(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, i32* %3, %struct.TYPE_17__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @F, align 4
  %20 = call i32 @PDF_NAME(i32 %19)
  %21 = call i32 @pdf_dict_get_int(i32* %15, i32 %18, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @PDF_ANNOT_IS_INVISIBLE, align 4
  %24 = load i32, i32* @PDF_ANNOT_IS_HIDDEN, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %154

29:                                               ; preds = %6
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = call i64 @pdf_annot_type(i32* %30, %struct.TYPE_17__* %31)
  %33 = load i64, i64* @PDF_ANNOT_POPUP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %154

36:                                               ; preds = %29
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @strcmp(i64 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %154

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @strcmp(i64 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @PDF_ANNOT_IS_NO_VIEW, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %154

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OC, align 4
  %79 = call i32 @PDF_NAME(i32 %78)
  %80 = call i32 @pdf_dict_get(i32* %74, i32 %77, i32 %79)
  %81 = call i64 @pdf_is_hidden_ocg(i32* %67, i32 %70, i32* null, i64 %73, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %154

84:                                               ; preds = %66
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i32 (i32*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_15__*)** %86, align 8
  %88 = icmp ne i32 (i32*, %struct.TYPE_15__*)* %87, null
  br i1 %88, label %89, label %154

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = load i32 (i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32)*, i32 (i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32)** %91, align 8
  %93 = icmp ne i32 (i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32)* %92, null
  br i1 %93, label %94, label %154

94:                                               ; preds = %89
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32 (i32*, %struct.TYPE_15__*, i32*, i64, i32)*, i32 (i32*, %struct.TYPE_15__*, i32*, i64, i32)** %96, align 8
  %98 = icmp ne i32 (i32*, %struct.TYPE_15__*, i32*, i64, i32)* %97, null
  br i1 %98, label %99, label %154

99:                                               ; preds = %94
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32 (i32*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_15__*)** %101, align 8
  %103 = icmp ne i32 (i32*, %struct.TYPE_15__*)* %102, null
  br i1 %103, label %104, label %154

104:                                              ; preds = %99
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %154

109:                                              ; preds = %104
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  call void @pdf_annot_transform(%struct.TYPE_18__* sret %14, i32* %110, %struct.TYPE_17__* %111)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 3
  %114 = load i32 (i32*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_15__*)** %113, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = call i32 %114(i32* %115, %struct.TYPE_15__* %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i32 (i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32)*, i32 (i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32)** %119, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 %120(i32* %121, %struct.TYPE_15__* %122, i32 %124, i32 %126, i32 %128, i32 %130, i32 %132, i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32 (i32*, %struct.TYPE_15__*, i32*, i64, i32)*, i32 (i32*, %struct.TYPE_15__*, i32*, i64, i32)** %137, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 @pdf_page_resources(i32* %144, i32* %145)
  %147 = call i32 %138(i32* %139, %struct.TYPE_15__* %140, i32* null, i64 %143, i32 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32 (i32*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_15__*)** %149, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = call i32 %150(i32* %151, %struct.TYPE_15__* %152)
  br label %154

154:                                              ; preds = %28, %35, %52, %64, %83, %109, %104, %99, %94, %89, %84
  ret void
}

declare dso_local i32 @pdf_dict_get_int(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_annot_type(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i64 @pdf_is_hidden_ocg(i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @pdf_dict_get(i32*, i32, i32) #1

declare dso_local void @pdf_annot_transform(%struct.TYPE_18__* sret, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @pdf_page_resources(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
