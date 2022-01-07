; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_element.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"defs\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ellipse\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"polyline\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"polygon\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @svg_run_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_run_element(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i64 @fz_xml_is_tag(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @svg_run_svg(i32* %15, i32* %16, i32* %17, i32* %18, i32* %19)
  br label %166

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @fz_xml_is_tag(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @svg_run_g(i32* %26, i32* %27, i32* %28, i32* %29, i32* %30)
  br label %165

32:                                               ; preds = %21
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @fz_xml_is_tag(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %164

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @fz_xml_is_tag(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %163

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @fz_xml_is_tag(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %162

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @fz_xml_is_tag(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %161

52:                                               ; preds = %47
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @fz_xml_is_tag(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @svg_run_use(i32* %57, i32* %58, i32* %59, i32* %60, i32* %61)
  br label %160

63:                                               ; preds = %52
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @fz_xml_is_tag(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @svg_run_path(i32* %68, i32* %69, i32* %70, i32* %71, i32* %72)
  br label %159

74:                                               ; preds = %63
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @fz_xml_is_tag(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @svg_run_rect(i32* %79, i32* %80, i32* %81, i32* %82, i32* %83)
  br label %158

85:                                               ; preds = %74
  %86 = load i32*, i32** %9, align 8
  %87 = call i64 @fz_xml_is_tag(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @svg_run_circle(i32* %90, i32* %91, i32* %92, i32* %93, i32* %94)
  br label %157

96:                                               ; preds = %85
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @fz_xml_is_tag(i32* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @svg_run_ellipse(i32* %101, i32* %102, i32* %103, i32* %104, i32* %105)
  br label %156

107:                                              ; preds = %96
  %108 = load i32*, i32** %9, align 8
  %109 = call i64 @fz_xml_is_tag(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @svg_run_line(i32* %112, i32* %113, i32* %114, i32* %115, i32* %116)
  br label %155

118:                                              ; preds = %107
  %119 = load i32*, i32** %9, align 8
  %120 = call i64 @fz_xml_is_tag(i32* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @svg_run_polyline(i32* %123, i32* %124, i32* %125, i32* %126, i32* %127)
  br label %154

129:                                              ; preds = %118
  %130 = load i32*, i32** %9, align 8
  %131 = call i64 @fz_xml_is_tag(i32* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32*, i32** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @svg_run_polygon(i32* %134, i32* %135, i32* %136, i32* %137, i32* %138)
  br label %153

140:                                              ; preds = %129
  %141 = load i32*, i32** %9, align 8
  %142 = call i64 @fz_xml_is_tag(i32* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i32*, i32** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @svg_run_image(i32* %145, i32* %146, i32* %147, i32* %148, i32* %149)
  br label %152

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %144
  br label %153

153:                                              ; preds = %152, %133
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %111
  br label %156

156:                                              ; preds = %155, %100
  br label %157

157:                                              ; preds = %156, %89
  br label %158

158:                                              ; preds = %157, %78
  br label %159

159:                                              ; preds = %158, %67
  br label %160

160:                                              ; preds = %159, %56
  br label %161

161:                                              ; preds = %160, %51
  br label %162

162:                                              ; preds = %161, %46
  br label %163

163:                                              ; preds = %162, %41
  br label %164

164:                                              ; preds = %163, %36
  br label %165

165:                                              ; preds = %164, %25
  br label %166

166:                                              ; preds = %165, %14
  ret void
}

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i32 @svg_run_svg(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_g(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_use(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_path(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_rect(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_circle(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_ellipse(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_line(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_polyline(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_polygon(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svg_run_image(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
