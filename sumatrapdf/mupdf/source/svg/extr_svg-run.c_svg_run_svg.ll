; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_svg.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_run_svg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"viewBox\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, %struct.TYPE_7__*)* @svg_run_svg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_run_svg(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = bitcast %struct.TYPE_7__* %11 to i8*
  %20 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 16, i1 false)
  %21 = load i32*, i32** %9, align 8
  %22 = call i8* @fz_xml_att(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %13, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i8* @fz_xml_att(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %14, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i8* @fz_xml_att(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %5
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %32, %29
  %36 = load i8*, i8** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %39 = call i32 @svg_lex_viewbox(i8* %36, float* %16, float* %17, i32* %37, i32* %38)
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i8*, i8** %14, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %32, %5
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @svg_parse_viewport(i32* %55, i32* %56, i32* %57, %struct.TYPE_7__* %11)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @svg_parse_viewbox(i32* %59, i32* %60, i32* %61, %struct.TYPE_7__* %11)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @svg_parse_common(i32* %63, i32* %64, i32* %65, %struct.TYPE_7__* %11)
  %67 = load i32*, i32** %9, align 8
  %68 = call i32* @fz_xml_down(i32* %67)
  store i32* %68, i32** %12, align 8
  br label %69

69:                                               ; preds = %78, %54
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @svg_run_element(i32* %73, i32* %74, i32* %75, i32* %76, %struct.TYPE_7__* %11)
  br label %78

78:                                               ; preds = %72
  %79 = load i32*, i32** %12, align 8
  %80 = call i32* @fz_xml_next(i32* %79)
  store i32* %80, i32** %12, align 8
  br label %69

81:                                               ; preds = %69
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @fz_xml_att(i32*, i8*) #2

declare dso_local i32 @svg_lex_viewbox(i8*, float*, float*, i32*, i32*) #2

declare dso_local i32 @svg_parse_viewport(i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @svg_parse_viewbox(i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @svg_parse_common(i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32* @fz_xml_down(i32*) #2

declare dso_local i32 @svg_run_element(i32*, i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32* @fz_xml_next(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
