; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_element.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_load_links_in_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Glyphs\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"AlternateContent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, i32*, i32*, i32**)* @xps_load_links_in_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_load_links_in_element(i32* %0, i32* %1, i32 %2, i8* %3, i32* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = call i64 @fz_xml_is_tag(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32**, i32*** %14, align 8
  %26 = call i32 @xps_load_links_in_path(i32* %19, i32* %20, i32 %21, i8* %22, i32* %23, i32* %24, i32** %25)
  br label %76

27:                                               ; preds = %7
  %28 = load i32*, i32** %13, align 8
  %29 = call i64 @fz_xml_is_tag(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32**, i32*** %14, align 8
  %39 = call i32 @xps_load_links_in_glyphs(i32* %32, i32* %33, i32 %34, i8* %35, i32* %36, i32* %37, i32** %38)
  br label %75

40:                                               ; preds = %27
  %41 = load i32*, i32** %13, align 8
  %42 = call i64 @fz_xml_is_tag(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32**, i32*** %14, align 8
  %52 = call i32 @xps_load_links_in_canvas(i32* %45, i32* %46, i32 %47, i8* %48, i32* %49, i32* %50, i32** %51)
  br label %74

53:                                               ; preds = %40
  %54 = load i32*, i32** %13, align 8
  %55 = call i64 @fz_xml_is_tag(i32* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32* @xps_lookup_alternate_content(i32* %58, i32* %59, i32* %60)
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32**, i32*** %14, align 8
  call void @xps_load_links_in_element(i32* %65, i32* %66, i32 %67, i8* %68, i32* %69, i32* %70, i32** %71)
  br label %72

72:                                               ; preds = %64, %57
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74, %31
  br label %76

76:                                               ; preds = %75, %18
  ret void
}

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i32 @xps_load_links_in_path(i32*, i32*, i32, i8*, i32*, i32*, i32**) #1

declare dso_local i32 @xps_load_links_in_glyphs(i32*, i32*, i32, i8*, i32*, i32*, i32**) #1

declare dso_local i32 @xps_load_links_in_canvas(i32*, i32*, i32, i8*, i32*, i32*, i32**) #1

declare dso_local i32* @xps_lookup_alternate_content(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
