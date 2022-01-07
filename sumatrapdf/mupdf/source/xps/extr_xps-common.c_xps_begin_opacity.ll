; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_begin_opacity.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_begin_opacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, float*, i32* }

@.str = private unnamed_addr constant [16 x i8] c"SolidColorBrush\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@fz_default_color_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xps_begin_opacity(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i8* %4, i32* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %17, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %8
  %30 = load i32*, i32** %16, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %130

33:                                               ; preds = %29, %8
  store float 1.000000e+00, float* %18, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %15, align 8
  %38 = call float @fz_atof(i8* %37)
  store float %38, float* %18, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %16, align 8
  %41 = call i64 @fz_xml_is_tag(i32* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = load i32*, i32** %16, align 8
  %45 = call i8* @fz_xml_att(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %19, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i8* @fz_xml_att(i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %47, i8** %20, align 8
  %48 = load i8*, i8** %19, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load float, float* %18, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = call float @fz_atof(i8* %52)
  %54 = fmul float %51, %53
  store float %54, float* %18, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i8*, i8** %20, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i32, i32* @FZ_MAX_COLORS, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %22, align 8
  %62 = alloca float, i64 %60, align 16
  store i64 %60, i64* %23, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = call i32 @xps_parse_color(i32* %63, %struct.TYPE_5__* %64, i8* %65, i8* %66, i32** %21, float* %62)
  %68 = load float, float* %18, align 4
  %69 = getelementptr inbounds float, float* %62, i64 0
  %70 = load float, float* %69, align 16
  %71 = fmul float %68, %70
  store float %71, float* %18, align 4
  %72 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %58, %55
  store i32* null, i32** %16, align 8
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load float*, float** %80, align 8
  %82 = call i64 @nelem(float* %81)
  %83 = trunc i64 %82 to i32
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %74
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load float*, float** %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %88, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load float, float* %18, align 4
  %96 = fmul float %94, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load float*, float** %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %99, i64 %104
  store float %96, float* %105, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %85, %74
  %111 = load i32*, i32** %16, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @fz_default_color_params, align 4
  %118 = call i32 @fz_begin_mask(i32* %114, i32* %115, i32 %116, i32 0, i32* null, i32* null, i32 %117)
  %119 = load i32*, i32** %9, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i8*, i8** %13, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @xps_parse_brush(i32* %119, %struct.TYPE_5__* %120, i32 %121, i32 %122, i8* %123, i32* %124, i32* %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @fz_end_mask(i32* %127, i32* %128)
  br label %130

130:                                              ; preds = %32, %113, %110
  ret void
}

declare dso_local float @fz_atof(i8*) #1

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xps_parse_color(i32*, %struct.TYPE_5__*, i8*, i8*, i32**, float*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @nelem(float*) #1

declare dso_local i32 @fz_begin_mask(i32*, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @xps_parse_brush(i32*, %struct.TYPE_5__*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @fz_end_mask(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
