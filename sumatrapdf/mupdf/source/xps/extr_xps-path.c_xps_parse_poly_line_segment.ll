; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_poly_line_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_parse_poly_line_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"IsStroked\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"PolyLineSegment element has no points\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*)* @xps_parse_poly_line_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_parse_poly_line_segment(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i8* @fz_xml_att(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %13, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i8* @fz_xml_att(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @fz_warn(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %80

28:                                               ; preds = %6
  store i32 1, i32* %15, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %35, %31, %28
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %12, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i8*, i8** %13, align 8
  store i8* %42, i8** %18, align 8
  br label %43

43:                                               ; preds = %79, %41
  %44 = load i8*, i8** %18, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i8*, i8** %18, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %18, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %18, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i8* @xps_parse_point(i32* %58, i32* %59, i8* %60, float* %16, float* %17)
  store i8* %61, i8** %18, align 8
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load float, float* %16, align 4
  %71 = load float, float* %17, align 4
  %72 = call i32 @fz_moveto(i32* %68, i32* %69, float %70, float %71)
  br label %79

73:                                               ; preds = %64, %57
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load float, float* %16, align 4
  %77 = load float, float* %17, align 4
  %78 = call i32 @fz_lineto(i32* %74, i32* %75, float %76, float %77)
  br label %79

79:                                               ; preds = %73, %67
  br label %43

80:                                               ; preds = %25, %43
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @xps_parse_point(i32*, i32*, i8*, float*, float*) #1

declare dso_local i32 @fz_moveto(i32*, i32*, float, float) #1

declare dso_local i32 @fz_lineto(i32*, i32*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
