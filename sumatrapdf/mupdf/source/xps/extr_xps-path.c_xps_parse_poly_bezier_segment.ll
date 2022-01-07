; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_poly_bezier_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_poly_bezier_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"IsStroked\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"PolyBezierSegment element has no points\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*)* @xps_parse_poly_bezier_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_parse_poly_bezier_segment(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i8* @fz_xml_att(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %13, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i8* @fz_xml_att(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @fz_warn(i32* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %105

29:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %36, %32, %29
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %12, align 8
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %13, align 8
  store i8* %43, i8** %18, align 8
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %104, %42
  %45 = load i8*, i8** %18, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %105

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %55, %49
  %51 = load i8*, i8** %18, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %18, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %18, align 8
  br label %50

58:                                               ; preds = %50
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 %63
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 %66
  %68 = call i8* @xps_parse_point(i32* %59, i32* %60, i8* %61, float* %64, float* %67)
  store i8* %68, i8** %18, align 8
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %104

73:                                               ; preds = %58
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 2
  %83 = load float, float* %82, align 4
  %84 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 2
  %85 = load float, float* %84, align 4
  %86 = call i32 @fz_moveto(i32* %80, i32* %81, float %83, float %85)
  br label %103

87:                                               ; preds = %76, %73
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %93 = load float, float* %92, align 4
  %94 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 1
  %95 = load float, float* %94, align 4
  %96 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 1
  %97 = load float, float* %96, align 4
  %98 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 2
  %99 = load float, float* %98, align 4
  %100 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 2
  %101 = load float, float* %100, align 4
  %102 = call i32 @fz_curveto(i32* %88, i32* %89, float %91, float %93, float %95, float %97, float %99, float %101)
  br label %103

103:                                              ; preds = %87, %79
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %103, %58
  br label %44

105:                                              ; preds = %26, %44
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @xps_parse_point(i32*, i32*, i8*, float*, float*) #1

declare dso_local i32 @fz_moveto(i32*, i32*, float, float) #1

declare dso_local i32 @fz_curveto(i32*, i32*, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
