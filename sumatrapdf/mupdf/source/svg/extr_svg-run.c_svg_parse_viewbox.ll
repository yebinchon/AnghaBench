; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_parse_viewbox.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_parse_viewbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"viewBox\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"preserveAspectRatio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_parse_viewbox(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i8* @fz_xml_att(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %9, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @fz_xml_att(i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %150

28:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @svg_lex_viewbox(i8* %29, float* %11, float* %12, float* %13, float* %14)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 8
  %34 = load float, float* %13, align 4
  %35 = fdiv float %33, %34
  store float %35, float* %15, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = load float, float* %14, align 4
  %40 = fdiv float %38, %39
  store float %40, float* %16, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @svg_parse_preserve_aspect_ratio(i8* %44, i32* %17, i32* %18)
  store i32 %45, i32* %19, align 4
  br label %46

46:                                               ; preds = %43, %28
  %47 = load i32, i32* %19, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %46
  %50 = load float, float* %15, align 4
  %51 = load float, float* %16, align 4
  %52 = call float @fz_min(float %50, float %51)
  store float %52, float* %16, align 4
  store float %52, float* %15, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load float, float* %13, align 4
  %57 = load float, float* %15, align 4
  %58 = fmul float %56, %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 8
  %62 = fsub float %58, %61
  %63 = fdiv float %62, 2.000000e+00
  store float %63, float* %20, align 4
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i32, i32* %17, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load float, float* %13, align 4
  %69 = load float, float* %15, align 4
  %70 = fmul float %68, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load float, float* %72, align 8
  %74 = fsub float %70, %73
  store float %74, float* %20, align 4
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load float, float* %14, align 4
  %80 = load float, float* %16, align 4
  %81 = fmul float %79, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = fsub float %81, %84
  %86 = fdiv float %85, 2.000000e+00
  store float %86, float* %21, align 4
  br label %87

87:                                               ; preds = %78, %75
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load float, float* %14, align 4
  %92 = load float, float* %16, align 4
  %93 = fmul float %91, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = fsub float %93, %96
  store float %97, float* %21, align 4
  br label %98

98:                                               ; preds = %90, %87
  %99 = load float, float* %20, align 4
  %100 = fneg float %99
  %101 = load float, float* %21, align 4
  %102 = fneg float %101
  %103 = call i32 @fz_translate(float %100, float %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @fz_concat(i32 %103, i8* %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %98, %46
  %111 = load float, float* %15, align 4
  %112 = load float, float* %16, align 4
  %113 = call i32 @fz_scale(float %111, float %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @fz_concat(i32 %113, i8* %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load float, float* %11, align 4
  %121 = fneg float %120
  %122 = load float, float* %12, align 4
  %123 = fneg float %122
  %124 = call i32 @fz_translate(float %121, float %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 5
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @fz_concat(i32 %124, i8* %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load float, float* %13, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store float %131, float* %133, align 8
  %134 = load float, float* %14, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  store float %134, float* %136, align 4
  %137 = load float, float* %13, align 4
  %138 = load float, float* %13, align 4
  %139 = fmul float %137, %138
  %140 = load float, float* %14, align 4
  %141 = load float, float* %14, align 4
  %142 = fmul float %140, %141
  %143 = fadd float %139, %142
  %144 = fptosi float %143 to i32
  %145 = call i32 @sqrtf(i32 %144)
  %146 = call i32 @sqrtf(i32 2)
  %147 = sdiv i32 %145, %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %110, %4
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @svg_lex_viewbox(i8*, float*, float*, float*, float*) #1

declare dso_local i32 @svg_parse_preserve_aspect_ratio(i8*, i32*, i32*) #1

declare dso_local float @fz_min(float, float) #1

declare dso_local i8* @fz_concat(i32, i8*) #1

declare dso_local i32 @fz_translate(float, float) #1

declare dso_local i32 @fz_scale(float, float) #1

declare dso_local i32 @sqrtf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
