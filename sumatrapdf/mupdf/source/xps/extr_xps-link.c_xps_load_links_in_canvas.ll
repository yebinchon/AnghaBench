; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_canvas.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_canvas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [22 x i8] c"FixedPage.NavigateUri\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"RenderTransform\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Canvas.RenderTransform\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Canvas.Resources\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"FixedPage.NavigateUri attribute on Canvas element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, %struct.TYPE_7__*, i32*, i32**)* @xps_load_links_in_canvas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_load_links_in_canvas(i32* %0, i32* %1, i32 %2, i8* %3, %struct.TYPE_7__* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i8* @fz_xml_att(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %17, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i8* @fz_xml_att(i32* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %18, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32* @fz_xml_find_down(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32* @fz_xml_down(i32* %26)
  store i32* %27, i32** %19, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32* @fz_xml_find_down(i32* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32* @fz_xml_down(i32* %29)
  store i32* %30, i32** %20, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %7
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = call %struct.TYPE_7__* @xps_parse_resource_dictionary(i32* %34, i32* %35, i8* %36, i32* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %15, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %12, align 8
  br label %46

46:                                               ; preds = %41, %33
  br label %47

47:                                               ; preds = %46, %7
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = call i32 @xps_resolve_resource_reference(i32* %48, i32* %49, %struct.TYPE_7__* %50, i8** %18, i32** %19, i32* null)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @xps_parse_transform(i32* %52, i32* %53, i8* %54, i32* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @fz_warn(i32* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32*, i32** %13, align 8
  %65 = call i32* @fz_xml_down(i32* %64)
  store i32* %65, i32** %16, align 8
  br label %66

66:                                               ; preds = %78, %63
  %67 = load i32*, i32** %16, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = load i32**, i32*** %14, align 8
  %77 = call i32 @xps_load_links_in_element(i32* %70, i32* %71, i32 %72, i8* %73, %struct.TYPE_7__* %74, i32* %75, i32** %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32*, i32** %16, align 8
  %80 = call i32* @fz_xml_next(i32* %79)
  store i32* %80, i32** %16, align 8
  br label %66

81:                                               ; preds = %66
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %88 = call i32 @xps_drop_resource_dictionary(i32* %85, i32* %86, %struct.TYPE_7__* %87)
  br label %89

89:                                               ; preds = %84, %81
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i32* @fz_xml_find_down(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @xps_parse_resource_dictionary(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @xps_resolve_resource_reference(i32*, i32*, %struct.TYPE_7__*, i8**, i32**, i32*) #1

declare dso_local i32 @xps_parse_transform(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @xps_load_links_in_element(i32*, i32*, i32, i8*, %struct.TYPE_7__*, i32*, i32**) #1

declare dso_local i32* @fz_xml_next(i32*) #1

declare dso_local i32 @xps_drop_resource_dictionary(i32*, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
