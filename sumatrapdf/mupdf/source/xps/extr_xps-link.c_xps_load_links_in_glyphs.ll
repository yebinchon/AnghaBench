; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_glyphs.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_glyphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"FixedPage.NavigateUri\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"RenderTransform\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Path.RenderTransform\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"BidiLevel\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"FontRenderingEmSize\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"FontUri\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"OriginX\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"OriginY\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"IsSideways\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Indices\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"UnicodeString\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"StyleSimulations\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, i32*, i32*, i32**)* @xps_load_links_in_glyphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_load_links_in_glyphs(i32* %0, i32* %1, i32 %2, i8* %3, i32* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i8* @fz_xml_att(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %127

36:                                               ; preds = %7
  %37 = load i32*, i32** %13, align 8
  %38 = call i8* @fz_xml_att(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %16, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @fz_xml_find_down(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32* @fz_xml_down(i32 %40)
  store i32* %41, i32** %17, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i8* @fz_xml_att(i32* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %43, i8** %18, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i8* @fz_xml_att(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i8* %45, i8** %19, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i8* @fz_xml_att(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %47, i8** %20, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i8* @fz_xml_att(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %49, i8** %21, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i8* @fz_xml_att(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %51, i8** %22, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i8* @fz_xml_att(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i8* %53, i8** %23, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i8* @fz_xml_att(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i8* %55, i8** %24, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i8* @fz_xml_att(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i8* %57, i8** %25, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i8* @fz_xml_att(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i8* %59, i8** %26, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @xps_resolve_resource_reference(i32* %60, i32* %61, i32* %62, i8** %16, i32** %17, i32* null)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @xps_parse_transform(i32* %64, i32* %65, i8* %66, i32* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** %23, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %36
  %73 = load i8*, i8** %23, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %27, align 4
  br label %78

78:                                               ; preds = %72, %36
  %79 = load i8*, i8** %18, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %18, align 8
  %83 = call i32 @atoi(i8* %82)
  store i32 %83, i32* %28, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %20, align 8
  %89 = load i8*, i8** %26, align 8
  %90 = call i32* @xps_lookup_font(i32* %85, i32* %86, i8* %87, i8* %88, i8* %89)
  store i32* %90, i32** %29, align 8
  %91 = load i32*, i32** %29, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %127

94:                                               ; preds = %84
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %29, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = call i32 @fz_atof(i8* %99)
  %101 = load i8*, i8** %21, align 8
  %102 = call i32 @fz_atof(i8* %101)
  %103 = load i8*, i8** %22, align 8
  %104 = call i32 @fz_atof(i8* %103)
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* %28, align 4
  %107 = load i8*, i8** %24, align 8
  %108 = load i8*, i8** %25, align 8
  %109 = call i32* @xps_parse_glyphs_imp(i32* %95, i32* %96, i32 %97, i32* %98, i32 %100, i32 %102, i32 %104, i32 %105, i32 %106, i8* %107, i8* %108)
  store i32* %109, i32** %30, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %30, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @fz_bound_text(i32* %110, i32* %111, i32* null, i32 %112)
  store i32 %113, i32* %31, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %30, align 8
  %116 = call i32 @fz_drop_text(i32* %114, i32* %115)
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %29, align 8
  %119 = call i32 @fz_drop_font(i32* %117, i32* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %31, align 4
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i32**, i32*** %14, align 8
  %126 = call i32 @xps_add_link(i32* %120, i32* %121, i32 %122, i8* %123, i8* %124, i32** %125)
  br label %127

127:                                              ; preds = %93, %94, %7
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32* @fz_xml_down(i32) #1

declare dso_local i32 @fz_xml_find_down(i32*, i8*) #1

declare dso_local i32 @xps_resolve_resource_reference(i32*, i32*, i32*, i8**, i32**, i32*) #1

declare dso_local i32 @xps_parse_transform(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @xps_lookup_font(i32*, i32*, i8*, i8*, i8*) #1

declare dso_local i32* @xps_parse_glyphs_imp(i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @fz_atof(i8*) #1

declare dso_local i32 @fz_bound_text(i32*, i32*, i32*, i32) #1

declare dso_local i32 @fz_drop_text(i32*, i32*) #1

declare dso_local i32 @fz_drop_font(i32*, i32*) #1

declare dso_local i32 @xps_add_link(i32*, i32*, i32, i8*, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
