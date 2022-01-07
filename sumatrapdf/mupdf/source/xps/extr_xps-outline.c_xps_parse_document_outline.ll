; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-outline.c_xps_parse_document_outline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-outline.c_xps_parse_document_outline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"OutlineEntry\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"OutlineLevel\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"OutlineTarget\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"outline_title\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"outline_uri\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i32*, i32*)* @xps_parse_document_outline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @xps_parse_document_outline(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  store i32 1, i32* %11, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @fz_xml_down(i32* %17)
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %100, %3
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %103

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @fz_xml_is_tag(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* @fz_xml_att(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %13, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @fz_xml_att(i32* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %14, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @fz_xml_att(i32* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %32, i8** %15, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %26
  br label %100

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = call %struct.TYPE_7__* @fz_new_outline(i32* %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %9, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @fz_strdup(i32* %42, i8* %43)
  %45 = call i8* @Memento_label(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @fz_strdup(i32* %48, i8* %49)
  %51 = call i8* @Memento_label(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @xps_lookup_link_target(i32* %54, i32* %55, i8* %56, i32* null, i32* null)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %39
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @atoi(i8* %70)
  br label %73

72:                                               ; preds = %39
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 1, %72 ]
  store i32 %74, i32* %12, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = icmp ne %struct.TYPE_7__* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %8, align 8
  br label %97

79:                                               ; preds = %73
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call %struct.TYPE_7__* @xps_lookup_last_outline_at_level(i32* %80, i32* %81, %struct.TYPE_7__* %82, i32 1, i32 %83)
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %91, align 8
  br label %96

92:                                               ; preds = %79
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %77
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %97, %22
  br label %100

100:                                              ; preds = %99, %38
  %101 = load i32*, i32** %7, align 8
  %102 = call i32* @fz_xml_next(i32* %101)
  store i32* %102, i32** %7, align 8
  br label %19

103:                                              ; preds = %19
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  ret %struct.TYPE_7__* %104
}

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @fz_new_outline(i32*) #1

declare dso_local i8* @Memento_label(i32, i8*) #1

declare dso_local i32 @fz_strdup(i32*, i8*) #1

declare dso_local i32 @xps_lookup_link_target(i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_7__* @xps_lookup_last_outline_at_level(i32*, i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32* @fz_xml_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
