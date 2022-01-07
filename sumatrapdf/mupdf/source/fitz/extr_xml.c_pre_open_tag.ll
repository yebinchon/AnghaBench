; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_pre_open_tag.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_pre_open_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.parser = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@fz_xml_html_tag__NONE = common dso_local global i32 0, align 4
@html_tags = common dso_local global %struct.TYPE_5__* null, align 8
@CONTAINER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.parser*, i8*, i8*)* @pre_open_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_open_tag(i32* %0, %struct.parser* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.parser* %1, %struct.parser** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.parser*, %struct.parser** %6, align 8
  %16 = getelementptr inbounds %struct.parser, %struct.parser* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load %struct.parser*, %struct.parser** %6, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %107

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @find_html_tag(i8* %24, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @fz_xml_html_tag__NONE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %107

36:                                               ; preds = %23
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CONTAINER, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %102

46:                                               ; preds = %36
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %11, align 8
  br label %48

48:                                               ; preds = %97, %46
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %101

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = call i8* @fz_xml_tag(%struct.TYPE_4__* %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32 @find_html_tag(i8* %57, i32 %59)
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @fz_xml_html_tag__NONE, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %60, %56 ], [ %62, %61 ]
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %83
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = icmp eq %struct.TYPE_4__* %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.parser*, %struct.parser** %6, align 8
  %76 = call i32 @xml_emit_close_tag(i32* %74, %struct.parser* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %9, align 8
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %84

83:                                               ; preds = %69
  br label %69

84:                                               ; preds = %82
  br label %101

85:                                               ; preds = %63
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CONTAINER, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %101

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %11, align 8
  br label %48

101:                                              ; preds = %95, %84, %48
  br label %102

102:                                              ; preds = %101, %36
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.parser*, %struct.parser** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @open_implied(i32* %103, %struct.parser* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %35, %22
  ret void
}

declare dso_local i32 @find_html_tag(i8*, i32) #1

declare dso_local i8* @fz_xml_tag(%struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xml_emit_close_tag(i32*, %struct.parser*) #1

declare dso_local i32 @open_implied(i32*, %struct.parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
