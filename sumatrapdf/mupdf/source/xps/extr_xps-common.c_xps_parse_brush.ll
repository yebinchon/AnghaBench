; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_brush.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"ImageBrush\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"VisualBrush\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"LinearGradientBrush\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"RadialGradientBrush\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"unknown brush tag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xps_parse_brush(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %85

27:                                               ; preds = %19, %7
  %28 = load i32*, i32** %14, align 8
  %29 = call i64 @fz_xml_is_tag(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @xps_parse_image_brush(i32* %32, %struct.TYPE_9__* %33, i32 %34, i32 %35, i8* %36, i32* %37, i32* %38)
  br label %85

40:                                               ; preds = %27
  %41 = load i32*, i32** %14, align 8
  %42 = call i64 @fz_xml_is_tag(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @xps_parse_visual_brush(i32* %45, %struct.TYPE_9__* %46, i32 %47, i32 %48, i8* %49, i32* %50, i32* %51)
  br label %84

53:                                               ; preds = %40
  %54 = load i32*, i32** %14, align 8
  %55 = call i64 @fz_xml_is_tag(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @xps_parse_linear_gradient_brush(i32* %58, %struct.TYPE_9__* %59, i32 %60, i32 %61, i8* %62, i32* %63, i32* %64)
  br label %83

66:                                               ; preds = %53
  %67 = load i32*, i32** %14, align 8
  %68 = call i64 @fz_xml_is_tag(i32* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @xps_parse_radial_gradient_brush(i32* %71, %struct.TYPE_9__* %72, i32 %73, i32 %74, i8* %75, i32* %76, i32* %77)
  br label %82

79:                                               ; preds = %66
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @fz_warn(i32* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %70
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83, %44
  br label %85

85:                                               ; preds = %26, %84, %31
  ret void
}

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i32 @xps_parse_image_brush(i32*, %struct.TYPE_9__*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xps_parse_visual_brush(i32*, %struct.TYPE_9__*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xps_parse_linear_gradient_brush(i32*, %struct.TYPE_9__*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xps_parse_radial_gradient_brush(i32*, %struct.TYPE_9__*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
