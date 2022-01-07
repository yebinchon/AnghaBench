; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_redact_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_redact_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"1 0 0 RG\0A\00", align 1
@QuadPoints = common dso_local global i32 0, align 4
@fz_empty_rect = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@LL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@LR = common dso_local global i64 0, align 8
@UR = common dso_local global i64 0, align 8
@UL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_11__*)* @pdf_write_redact_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_redact_appearance(i32* %0, %struct.TYPE_10__* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca [4 x %struct.TYPE_12__], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %13, i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QuadPoints, align 4
  %21 = call i32 @PDF_NAME(i32 %20)
  %22 = call i32* @pdf_dict_get(i32* %16, i32 %19, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @pdf_array_len(i32* %23, i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %95

28:                                               ; preds = %4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = bitcast %struct.TYPE_11__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_11__* @fz_empty_rect to i8*), i64 32, i1 false)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %91, %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %94

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @extract_quad(i32* %36, %struct.TYPE_12__* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* @LL, align 8
  %44 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @LL, align 8
  %48 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %41, i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* @LR, align 8
  %55 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @LR, align 8
  %59 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %52, i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i64, i64* @UR, align 8
  %66 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* @UR, align 8
  %70 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %63, i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i64, i64* @UL, align 8
  %77 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @UL, align 8
  %81 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %74, i32* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %85, i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %90 = call i32 @union_quad(%struct.TYPE_11__* %88, %struct.TYPE_12__* %89, i32 1)
  br label %91

91:                                               ; preds = %35
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 8
  store i32 %93, i32* %11, align 4
  br label %31

94:                                               ; preds = %31
  br label %143

95:                                               ; preds = %4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  %106 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %96, i32* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  %117 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %107, i32* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 1
  %128 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %118, i32* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %123, i64 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, 1
  %139 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %129, i32* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %134, i64 %138)
  %140 = load i32*, i32** %5, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %140, i32* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %143

143:                                              ; preds = %95, %94
  ret void
}

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @extract_quad(i32*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @union_quad(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
