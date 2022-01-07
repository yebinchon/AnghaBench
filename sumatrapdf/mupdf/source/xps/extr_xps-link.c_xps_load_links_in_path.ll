; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"FixedPage.NavigateUri\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"RenderTransform\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Path.RenderTransform\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path.Data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, i32*, i32*, i32**)* @xps_load_links_in_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_load_links_in_path(i32* %0, i32* %1, i32 %2, i8* %3, i32* %4, i32* %5, i32** %6) #0 {
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
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i8* @fz_xml_att(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %88

27:                                               ; preds = %7
  %28 = load i32*, i32** %13, align 8
  %29 = call i8* @fz_xml_att(i32* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %16, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @fz_xml_find_down(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32* @fz_xml_down(i32 %31)
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call i8* @fz_xml_att(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %34, i8** %18, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @fz_xml_find_down(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32* @fz_xml_down(i32 %36)
  store i32* %37, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @xps_resolve_resource_reference(i32* %38, i32* %39, i32* %40, i8** %18, i32** %19, i32* null)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @xps_resolve_resource_reference(i32* %42, i32* %43, i32* %44, i8** %16, i32** %17, i32* null)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @xps_parse_transform(i32* %46, i32* %47, i8* %48, i32* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %18, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %27
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = call i32* @xps_parse_abbreviated_geometry(i32* %55, i32* %56, i8* %57, i32* %21)
  store i32* %58, i32** %20, align 8
  br label %69

59:                                               ; preds = %27
  %60 = load i32*, i32** %19, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = call i32* @xps_parse_path_geometry(i32* %63, i32* %64, i32* %65, i32* %66, i32 0, i32* %21)
  store i32* %67, i32** %20, align 8
  br label %68

68:                                               ; preds = %62, %59
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32*, i32** %20, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @fz_bound_path(i32* %73, i32* %74, i32* null, i32 %75)
  store i32 %76, i32* %22, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = call i32 @fz_drop_path(i32* %77, i32* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %22, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load i32**, i32*** %14, align 8
  %86 = call i32 @xps_add_link(i32* %80, i32* %81, i32 %82, i8* %83, i8* %84, i32** %85)
  br label %87

87:                                               ; preds = %72, %69
  br label %88

88:                                               ; preds = %87, %7
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32* @fz_xml_down(i32) #1

declare dso_local i32 @fz_xml_find_down(i32*, i8*) #1

declare dso_local i32 @xps_resolve_resource_reference(i32*, i32*, i32*, i8**, i32**, i32*) #1

declare dso_local i32 @xps_parse_transform(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32* @xps_parse_abbreviated_geometry(i32*, i32*, i8*, i32*) #1

declare dso_local i32* @xps_parse_path_geometry(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @fz_bound_path(i32*, i32*, i32*, i32) #1

declare dso_local i32 @fz_drop_path(i32*, i32*) #1

declare dso_local i32 @xps_add_link(i32*, i32*, i32, i8*, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
