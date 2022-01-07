; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_use.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"xlink:href\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@MAX_USE_DEPTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"svg: too much recursion\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"svg: cannot find linked symbol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*)* @svg_run_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_run_use(i32* %0, i32* %1, %struct.TYPE_12__* %2, i32* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = bitcast %struct.TYPE_11__* %11 to i8*
  %20 = bitcast %struct.TYPE_11__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  %21 = load i32*, i32** %9, align 8
  %22 = call i8* @fz_xml_att(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i8* @fz_xml_att(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %13, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i8* @fz_xml_att(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %14, align 8
  store float 0.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* @MAX_USE_DEPTH, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fz_warn(i32* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %107

35:                                               ; preds = %5
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @svg_parse_common(i32* %36, %struct.TYPE_12__* %37, i32* %38, %struct.TYPE_11__* %11)
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call float @svg_parse_length(i8* %43, i32 %45, i32 %47)
  store float %48, float* %15, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i8*, i8** %14, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call float @svg_parse_length(i8* %53, i32 %55, i32 %57)
  store float %58, float* %16, align 4
  br label %59

59:                                               ; preds = %52, %49
  %60 = load float, float* %15, align 4
  %61 = load float, float* %16, align 4
  %62 = call i32 @fz_translate(float %60, float %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @fz_concat(i32 %62, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %59
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i32* @fz_tree_lookup(i32* %76, i32 %79, i8* %81)
  store i32* %82, i32** %17, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %75
  %86 = load i32*, i32** %17, align 8
  %87 = call i64 @fz_xml_is_tag(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @svg_run_use_symbol(i32* %90, i32* %91, %struct.TYPE_12__* %92, i32* %93, i32* %94, %struct.TYPE_11__* %11)
  br label %102

96:                                               ; preds = %85
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @svg_run_element(i32* %97, i32* %98, %struct.TYPE_12__* %99, i32* %100, %struct.TYPE_11__* %11)
  br label %102

102:                                              ; preds = %96, %89
  br label %107

103:                                              ; preds = %75
  br label %104

104:                                              ; preds = %103, %69, %59
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @fz_warn(i32* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %102, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @fz_xml_att(i32*, i8*) #2

declare dso_local i32 @fz_warn(i32*, i8*) #2

declare dso_local i32 @svg_parse_common(i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #2

declare dso_local float @svg_parse_length(i8*, i32, i32) #2

declare dso_local i32 @fz_concat(i32, i32) #2

declare dso_local i32 @fz_translate(float, float) #2

declare dso_local i32* @fz_tree_lookup(i32*, i32, i8*) #2

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #2

declare dso_local i32 @svg_run_use_symbol(i32*, i32*, %struct.TYPE_12__*, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @svg_run_element(i32*, i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
