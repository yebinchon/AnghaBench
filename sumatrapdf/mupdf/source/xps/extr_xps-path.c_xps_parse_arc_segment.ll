; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_arc_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_arc_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"RotationAngle\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"IsLargeArc\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SweepDirection\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"IsStroked\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"ArcSegment element is missing attributes\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Clockwise\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*)* @xps_parse_arc_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_parse_arc_segment(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i8* @fz_xml_att(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %21, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i8* @fz_xml_att(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %22, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i8* @fz_xml_att(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %23, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i8* @fz_xml_att(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %34, i8** %24, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i8* @fz_xml_att(i32* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %36, i8** %25, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i8* @fz_xml_att(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %38, i8** %26, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %6
  %42 = load i8*, i8** %22, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %23, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %24, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %25, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %47, %44, %41, %6
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @fz_warn(i32* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %113

56:                                               ; preds = %50
  store i32 1, i32* %20, align 4
  %57 = load i8*, i8** %26, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %26, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 0, i32* %20, align 4
  br label %64

64:                                               ; preds = %63, %59, %56
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %12, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %64
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %18, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i8*, i8** %21, align 8
  %73 = call i32 @xps_parse_point(i32* %70, i32* %71, i8* %72, float* %16, float* %17)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i8*, i8** %22, align 8
  %77 = call i32 @xps_parse_point(i32* %74, i32* %75, i8* %76, float* %18, float* %19)
  %78 = load i8*, i8** %23, align 8
  %79 = call float @fz_atof(i8* %78)
  store float %79, float* %13, align 4
  %80 = load i8*, i8** %24, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %14, align 4
  %85 = load i8*, i8** %25, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %69
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load float, float* %16, align 4
  %99 = load float, float* %17, align 4
  %100 = call i32 @fz_moveto(i32* %96, i32* %97, float %98, float %99)
  br label %113

101:                                              ; preds = %92, %69
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load float, float* %18, align 4
  %106 = load float, float* %19, align 4
  %107 = load float, float* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load float, float* %16, align 4
  %111 = load float, float* %17, align 4
  %112 = call i32 @xps_draw_arc(i32* %102, i32* %103, i32* %104, float %105, float %106, float %107, i32 %108, i32 %109, float %110, float %111)
  br label %113

113:                                              ; preds = %101, %95, %53
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @xps_parse_point(i32*, i32*, i8*, float*, float*) #1

declare dso_local float @fz_atof(i8*) #1

declare dso_local i32 @fz_moveto(i32*, i32*, float, float) #1

declare dso_local i32 @xps_draw_arc(i32*, i32*, i32*, float, float, float, i32, i32, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
