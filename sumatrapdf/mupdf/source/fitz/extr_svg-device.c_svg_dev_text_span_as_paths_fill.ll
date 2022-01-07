; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_text_span_as_paths_fill.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_text_span_as_paths_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i32, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"<use xlink:href=\22#font_%x_%x\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_20__*, %struct.TYPE_22__*, i32*, float*, float, %struct.TYPE_23__*, i32)* @svg_dev_text_span_as_paths_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_text_span_as_paths_fill(i32* %0, i32* %1, %struct.TYPE_20__* %2, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3, i32* %4, float* %5, float %6, %struct.TYPE_23__* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_22__, align 8
  %21 = alloca %struct.TYPE_22__, align 8
  %22 = alloca %struct.TYPE_22__, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_21__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_22__, align 8
  %27 = alloca %struct.TYPE_22__, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %12, align 8
  store i32* %4, i32** %13, align 8
  store float* %5, float** %14, align 8
  store float %6, float* %15, align 4
  store %struct.TYPE_23__* %7, %struct.TYPE_23__** %16, align 8
  store i32 %8, i32* %17, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %18, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %19, align 8
  %33 = bitcast %struct.TYPE_22__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 56, i1 false)
  %34 = bitcast i8* %33 to %struct.TYPE_22__*
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 3
  store i64 1, i64* %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 6
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  store i64 0, i64* %58, align 8
  store i32 0, i32* %23, align 4
  br label %59

59:                                               ; preds = %127, %9
  %60 = load i32, i32* %23, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %130

65:                                               ; preds = %59
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = load i32, i32* %23, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i64 %70
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %24, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %25, align 4
  %75 = load i32, i32* %25, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %127

78:                                               ; preds = %65
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load i32, i32* %25, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 3
  store i64 %86, i64* %87, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = load i32, i32* %25, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  store i64 %95, i64* %96, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  store i64 %99, i64* %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  store i64 %103, i64* %104, align 8
  call void @fz_concat(%struct.TYPE_22__* sret %27, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %21, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3)
  call void @fz_concat(%struct.TYPE_22__* sret %26, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %20, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %27)
  %105 = bitcast %struct.TYPE_22__* %22 to i8*
  %106 = bitcast %struct.TYPE_22__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 56, i1 false)
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %25, align 4
  %113 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %107, i32* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %116 = call i32 @svg_dev_ctm(i32* %114, %struct.TYPE_19__* %115, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %22)
  %117 = load i32*, i32** %10, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load float*, float** %14, align 8
  %121 = load float, float* %15, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @svg_dev_fill_color(i32* %117, %struct.TYPE_19__* %118, i32* %119, float* %120, float %121, i32 %122)
  %124 = load i32*, i32** %10, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %124, i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %78, %77
  %128 = load i32, i32* %23, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %23, align 4
  br label %59

130:                                              ; preds = %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @fz_concat(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_dev_ctm(i32*, %struct.TYPE_19__*, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #2

declare dso_local i32 @svg_dev_fill_color(i32*, %struct.TYPE_19__*, i32*, float*, float, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
