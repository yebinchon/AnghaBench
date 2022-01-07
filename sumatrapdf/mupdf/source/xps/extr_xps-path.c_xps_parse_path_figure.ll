; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_path_figure.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_path_figure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"IsClosed\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"StartPoint\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"IsFilled\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ArcSegment\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"PolyBezierSegment\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"PolyLineSegment\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"PolyQuadraticBezierSegment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32)* @xps_parse_path_figure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_parse_path_figure(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i8* @fz_xml_att(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i8* @fz_xml_att(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %13, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i8* @fz_xml_att(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %28, %5
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @xps_parse_point(i32* %47, i32* %48, i8* %49, float* %17, float* %18)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %137

58:                                               ; preds = %54, %51
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load float, float* %17, align 4
  %62 = load float, float* %18, align 4
  %63 = call i32 @fz_moveto(i32* %59, i32* %60, float %61, float %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32* @fz_xml_down(i32* %64)
  store i32* %65, i32** %11, align 8
  br label %66

66:                                               ; preds = %114, %58
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %117

69:                                               ; preds = %66
  %70 = load i32*, i32** %11, align 8
  %71 = call i64 @fz_xml_is_tag(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @xps_parse_arc_segment(i32* %74, i32* %75, i32* %76, i32* %77, i32 %78, i32* %19)
  br label %80

80:                                               ; preds = %73, %69
  %81 = load i32*, i32** %11, align 8
  %82 = call i64 @fz_xml_is_tag(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @xps_parse_poly_bezier_segment(i32* %85, i32* %86, i32* %87, i32* %88, i32 %89, i32* %19)
  br label %91

91:                                               ; preds = %84, %80
  %92 = load i32*, i32** %11, align 8
  %93 = call i64 @fz_xml_is_tag(i32* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @xps_parse_poly_line_segment(i32* %96, i32* %97, i32* %98, i32* %99, i32 %100, i32* %19)
  br label %102

102:                                              ; preds = %95, %91
  %103 = load i32*, i32** %11, align 8
  %104 = call i64 @fz_xml_is_tag(i32* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32*, i32** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @xps_parse_poly_quadratic_bezier_segment(i32* %107, i32* %108, i32* %109, i32* %110, i32 %111, i32* %19)
  br label %113

113:                                              ; preds = %106, %102
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %11, align 8
  %116 = call i32* @fz_xml_next(i32* %115)
  store i32* %116, i32** %11, align 8
  br label %66

117:                                              ; preds = %66
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load float, float* %17, align 4
  %130 = load float, float* %18, align 4
  %131 = call i32 @fz_lineto(i32* %127, i32* %128, float %129, float %130)
  br label %136

132:                                              ; preds = %123, %120
  %133 = load i32*, i32** %6, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @fz_closepath(i32* %133, i32* %134)
  br label %136

136:                                              ; preds = %132, %126
  br label %137

137:                                              ; preds = %57, %136, %117
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @xps_parse_point(i32*, i32*, i8*, float*, float*) #1

declare dso_local i32 @fz_moveto(i32*, i32*, float, float) #1

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i32 @xps_parse_arc_segment(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @xps_parse_poly_bezier_segment(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @xps_parse_poly_line_segment(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @xps_parse_poly_quadratic_bezier_segment(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32* @fz_xml_next(i32*) #1

declare dso_local i32 @fz_lineto(i32*, i32*, float, float) #1

declare dso_local i32 @fz_closepath(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
