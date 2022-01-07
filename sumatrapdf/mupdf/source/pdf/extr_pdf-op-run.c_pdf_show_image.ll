; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { i32* }

@fz_unit_rect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*, %struct.TYPE_19__*)* @pdf_show_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_show_image(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i64 %17
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %122

25:                                               ; preds = %3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @fz_pre_translate(i32 %28, i32 0, i32 1)
  %30 = call i32 @fz_pre_scale(i32 %29, i32 1, i32 -1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @fz_unit_rect, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @fz_transform_rect(i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %25
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @fz_begin_group(i32* %44, i32 %47, i32 %48, i32* null, i32 0, i32 0, i64 %51, i32 1)
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @fz_clip_image_mask(i32* %53, i32 %56, i64 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @pdf_show_image_imp(i32* %63, %struct.TYPE_17__* %64, %struct.TYPE_19__* %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @fz_pop_clip(i32* %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fz_end_group(i32* %74, i32 %77)
  br label %122

79:                                               ; preds = %38, %25
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @fz_clip_image_mask(i32* %85, i32 %88, i64 %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @pdf_show_image_imp(i32* %95, %struct.TYPE_17__* %96, %struct.TYPE_19__* %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @fz_pop_clip(i32* %101, i32 %104)
  br label %121

106:                                              ; preds = %79
  %107 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %107, i8 0, i64 8, i1 false)
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call %struct.TYPE_18__* @pdf_begin_group(i32* %108, %struct.TYPE_17__* %109, i32 %110, %struct.TYPE_16__* %10)
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %7, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @pdf_show_image_imp(i32* %112, %struct.TYPE_17__* %113, %struct.TYPE_19__* %114, i32 %115, i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = call i32 @pdf_end_group(i32* %118, %struct.TYPE_17__* %119, %struct.TYPE_16__* %10)
  br label %121

121:                                              ; preds = %106, %84
  br label %122

122:                                              ; preds = %24, %121, %43
  ret void
}

declare dso_local i32 @fz_pre_scale(i32, i32, i32) #1

declare dso_local i32 @fz_pre_translate(i32, i32, i32) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local i32 @fz_begin_group(i32*, i32, i32, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @fz_clip_image_mask(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @pdf_show_image_imp(i32*, %struct.TYPE_17__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @fz_pop_clip(i32*, i32) #1

declare dso_local i32 @fz_end_group(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_18__* @pdf_begin_group(i32*, %struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @pdf_end_group(i32*, %struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
