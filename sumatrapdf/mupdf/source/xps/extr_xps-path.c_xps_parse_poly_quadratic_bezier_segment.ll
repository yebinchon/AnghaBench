; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_poly_quadratic_bezier_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_poly_quadratic_bezier_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"IsStroked\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"PolyQuadraticBezierSegment element has no points\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*)* @xps_parse_poly_quadratic_bezier_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_parse_poly_quadratic_bezier_segment(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i8* @fz_xml_att(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %13, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i8* @fz_xml_att(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @fz_warn(i32* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %137

31:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %38, %34, %31
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %12, align 8
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** %13, align 8
  store i8* %45, i8** %19, align 8
  store i32 0, i32* %20, align 4
  br label %46

46:                                               ; preds = %136, %44
  %47 = load i8*, i8** %19, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %137

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %57, %51
  %53 = load i8*, i8** %19, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %19, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %19, align 8
  br label %52

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 %65
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 %68
  %70 = call i8* @xps_parse_point(i32* %61, i32* %62, i8* %63, float* %66, float* %69)
  store i8* %70, i8** %19, align 8
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %136

75:                                               ; preds = %60
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %85 = load float, float* %84, align 4
  %86 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 1
  %87 = load float, float* %86, align 4
  %88 = call i32 @fz_moveto(i32* %82, i32* %83, float %85, float %87)
  br label %135

89:                                               ; preds = %78, %75
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @fz_currentpoint(i32* %90, i32* %91)
  %93 = bitcast %struct.TYPE_3__* %21 to i64*
  store i64 %92, i64* %93, align 4
  %94 = bitcast %struct.TYPE_3__* %18 to i8*
  %95 = bitcast %struct.TYPE_3__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 8, i1 false)
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sitofp i32 %99 to float
  %101 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %102 = load float, float* %101, align 4
  %103 = fmul float 2.000000e+00, %102
  %104 = fadd float %100, %103
  %105 = fdiv float %104, 3.000000e+00
  %106 = fptosi float %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sitofp i32 %108 to float
  %110 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 0
  %111 = load float, float* %110, align 4
  %112 = fmul float 2.000000e+00, %111
  %113 = fadd float %109, %112
  %114 = fdiv float %113, 3.000000e+00
  %115 = fptosi float %114 to i32
  %116 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %117 = load float, float* %116, align 4
  %118 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %119 = load float, float* %118, align 4
  %120 = fmul float 2.000000e+00, %119
  %121 = fadd float %117, %120
  %122 = fdiv float %121, 3.000000e+00
  %123 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 1
  %124 = load float, float* %123, align 4
  %125 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 0
  %126 = load float, float* %125, align 4
  %127 = fmul float 2.000000e+00, %126
  %128 = fadd float %124, %127
  %129 = fdiv float %128, 3.000000e+00
  %130 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %131 = load float, float* %130, align 4
  %132 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 1
  %133 = load float, float* %132, align 4
  %134 = call i32 @fz_curveto(i32* %96, i32* %97, i32 %106, i32 %115, float %122, float %129, float %131, float %133)
  br label %135

135:                                              ; preds = %89, %81
  store i32 0, i32* %20, align 4
  br label %136

136:                                              ; preds = %135, %60
  br label %46

137:                                              ; preds = %28, %46
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @xps_parse_point(i32*, i32*, i8*, float*, float*) #1

declare dso_local i32 @fz_moveto(i32*, i32*, float, float) #1

declare dso_local i64 @fz_currentpoint(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_curveto(i32*, i32*, i32, i32, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
