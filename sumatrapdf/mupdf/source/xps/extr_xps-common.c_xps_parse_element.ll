; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_element.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Glyphs\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"AlternateContent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xps_parse_element(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
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
  br label %84

27:                                               ; preds = %19, %7
  %28 = load i32*, i32** %14, align 8
  %29 = call i64 @fz_xml_is_tag(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @xps_parse_path(i32* %32, %struct.TYPE_9__* %33, i32 %34, i8* %35, i32* %36, i32* %37)
  br label %39

39:                                               ; preds = %31, %27
  %40 = load i32*, i32** %14, align 8
  %41 = call i64 @fz_xml_is_tag(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @xps_parse_glyphs(i32* %44, %struct.TYPE_9__* %45, i32 %46, i8* %47, i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %43, %39
  %52 = load i32*, i32** %14, align 8
  %53 = call i64 @fz_xml_is_tag(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @xps_parse_canvas(i32* %56, %struct.TYPE_9__* %57, i32 %58, i32 %59, i8* %60, i32* %61, i32* %62)
  br label %64

64:                                               ; preds = %55, %51
  %65 = load i32*, i32** %14, align 8
  %66 = call i64 @fz_xml_is_tag(i32* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32* @xps_lookup_alternate_content(i32* %69, %struct.TYPE_9__* %70, i32* %71)
  store i32* %72, i32** %14, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %14, align 8
  call void @xps_parse_element(i32* %76, %struct.TYPE_9__* %77, i32 %78, i32 %79, i8* %80, i32* %81, i32* %82)
  br label %83

83:                                               ; preds = %75, %68
  br label %84

84:                                               ; preds = %26, %83, %64
  ret void
}

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i32 @xps_parse_path(i32*, %struct.TYPE_9__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xps_parse_glyphs(i32*, %struct.TYPE_9__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xps_parse_canvas(i32*, %struct.TYPE_9__*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32* @xps_lookup_alternate_content(i32*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
