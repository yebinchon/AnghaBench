; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_fixed_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_fixed_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"FixedPage.Resources\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_5__*, i32**)* @xps_load_links_in_fixed_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_load_links_in_fixed_page(i32* %0, i32* %1, i32 %2, %struct.TYPE_5__* %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32** %4, i32*** %10, align 8
  store i32* null, i32** %14, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @fz_xml_root(i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %77

24:                                               ; preds = %5
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fz_strlcpy(i8* %25, i32 %30, i32 1024)
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %33 = call i8* @strrchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i8*, i8** %16, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i32*, i32** %11, align 8
  %41 = call i32* @fz_xml_find_down(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = call i32* @fz_xml_down(i32* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %49 = load i32*, i32** %13, align 8
  %50 = call i32* @xps_parse_resource_dictionary(i32* %46, i32* %47, i8* %48, i32* %49)
  store i32* %50, i32** %14, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32*, i32** %11, align 8
  %53 = call i32* @fz_xml_down(i32* %52)
  store i32* %53, i32** %12, align 8
  br label %54

54:                                               ; preds = %66, %51
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32**, i32*** %10, align 8
  %65 = call i32 @xps_load_links_in_element(i32* %58, i32* %59, i32 %60, i8* %61, i32* %62, i32* %63, i32** %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32*, i32** %12, align 8
  %68 = call i32* @fz_xml_next(i32* %67)
  store i32* %68, i32** %12, align 8
  br label %54

69:                                               ; preds = %54
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @xps_drop_resource_dictionary(i32* %73, i32* %74, i32* %75)
  br label %77

77:                                               ; preds = %23, %72, %69
  ret void
}

declare dso_local i32* @fz_xml_root(i32) #1

declare dso_local i32 @fz_strlcpy(i8*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i32* @fz_xml_find_down(i32*, i8*) #1

declare dso_local i32* @xps_parse_resource_dictionary(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @xps_load_links_in_element(i32*, i32*, i32, i8*, i32*, i32*, i32**) #1

declare dso_local i32* @fz_xml_next(i32*) #1

declare dso_local i32 @xps_drop_resource_dictionary(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
