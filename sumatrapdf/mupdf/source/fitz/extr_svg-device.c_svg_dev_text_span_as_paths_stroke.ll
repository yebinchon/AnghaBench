; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_text_span_as_paths_stroke.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_text_span_as_paths_stroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"<use xlink:href=\22#font_%x_%x\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_22__*, i32*, %struct.TYPE_24__*, i32*, float*, float, %struct.TYPE_25__*, i32)* @svg_dev_text_span_as_paths_stroke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_text_span_as_paths_stroke(i32* %0, i32* %1, %struct.TYPE_22__* %2, i32* %3, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %4, i32* %5, float* %6, float %7, %struct.TYPE_25__* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_24__, align 8
  %23 = alloca %struct.TYPE_24__, align 8
  %24 = alloca %struct.TYPE_24__, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_23__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_24__, align 8
  %29 = alloca %struct.TYPE_24__, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %18, align 8
  store i32 %9, i32* %19, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %20, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %21, align 8
  %35 = bitcast %struct.TYPE_24__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 56, i1 false)
  %36 = bitcast i8* %35 to %struct.TYPE_24__*
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 3
  store i64 1, i64* %38, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 7
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 6
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 5
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 4
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 2
  store i64 0, i64* %60, align 8
  store i32 0, i32* %25, align 4
  br label %61

61:                                               ; preds = %133, %10
  %62 = load i32, i32* %25, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %136

67:                                               ; preds = %61
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  %71 = load i32, i32* %25, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i64 %72
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %26, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %27, align 4
  %77 = load i32, i32* %27, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %133

80:                                               ; preds = %67
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = load i32, i32* %27, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 3
  store i64 %88, i64* %89, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 2
  store i64 %97, i64* %98, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  store i64 %101, i64* %102, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 2
  store i64 %105, i64* %106, align 8
  call void @fz_concat(%struct.TYPE_24__* sret %29, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %23, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %4)
  call void @fz_concat(%struct.TYPE_24__* sret %28, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %22, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %29)
  %107 = bitcast %struct.TYPE_24__* %24 to i8*
  %108 = bitcast %struct.TYPE_24__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 56, i1 false)
  %109 = load i32*, i32** %11, align 8
  %110 = load i32*, i32** %21, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %27, align 4
  %115 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %109, i32* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @svg_dev_stroke_state(i32* %116, %struct.TYPE_21__* %117, i32* %118, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %24)
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %122 = call i32 @svg_dev_ctm(i32* %120, %struct.TYPE_21__* %121, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %24)
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load float*, float** %16, align 8
  %127 = load float, float* %17, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @svg_dev_stroke_color(i32* %123, %struct.TYPE_21__* %124, i32* %125, float* %126, float %127, i32 %128)
  %130 = load i32*, i32** %11, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %130, i32* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %133

133:                                              ; preds = %80, %79
  %134 = load i32, i32* %25, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %25, align 4
  br label %61

136:                                              ; preds = %61
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @fz_concat(%struct.TYPE_24__* sret, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_dev_stroke_state(i32*, %struct.TYPE_21__*, i32*, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8) #2

declare dso_local i32 @svg_dev_ctm(i32*, %struct.TYPE_21__*, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8) #2

declare dso_local i32 @svg_dev_stroke_color(i32*, %struct.TYPE_21__*, i32*, float*, float, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
