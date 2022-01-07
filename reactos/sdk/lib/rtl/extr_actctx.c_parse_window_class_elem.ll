; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_window_class_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_window_class_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dll_redirect = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.entity = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION = common dso_local global i32 0, align 4
@versionedW = common dso_local global i32 0, align 4
@noW = common dso_local global i32 0, align 4
@yesW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@WINDOWCLASS_SECTION = common dso_local global i32 0, align 4
@windowClassW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown elem %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.dll_redirect*, %struct.actctx_loader*)* @parse_window_class_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_window_class_elem(i32* %0, %struct.dll_redirect* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dll_redirect*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.entity*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dll_redirect* %1, %struct.dll_redirect** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** @TRUE, align 8
  store i8* %20, i8** %13, align 8
  %21 = load %struct.dll_redirect*, %struct.dll_redirect** %6, align 8
  %22 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %21, i32 0, i32 0
  %23 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION, align 4
  %24 = call %struct.entity* @add_entity(i32* %22, i32 %23)
  store %struct.entity* %24, %struct.entity** %15, align 8
  %25 = icmp ne %struct.entity* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i8*, i8** @FALSE, align 8
  store i8* %27, i8** %4, align 8
  br label %120

28:                                               ; preds = %3
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.entity*, %struct.entity** %15, align 8
  %31 = getelementptr inbounds %struct.entity, %struct.entity* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  br label %34

34:                                               ; preds = %64, %28
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @next_xml_attr(i32* %35, i32* %10, i32* %11, i8** %14, i8** %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = load i32, i32* @versionedW, align 4
  %40 = call i64 @xmlstr_cmp(i32* %10, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* @noW, align 4
  %44 = call i64 @xmlstr_cmpi(i32* %11, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.entity*, %struct.entity** %15, align 8
  %49 = getelementptr inbounds %struct.entity, %struct.entity* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %47, i8** %51, align 8
  br label %59

52:                                               ; preds = %42
  %53 = load i32, i32* @yesW, align 4
  %54 = call i64 @xmlstr_cmpi(i32* %11, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** @FALSE, align 8
  store i8* %57, i8** %4, align 8
  br label %120

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %46
  br label %64

60:                                               ; preds = %38
  %61 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %61, i32* %17, align 4
  %62 = call i32 @xmlstr2unicode(i32* %11)
  store i32 %62, i32* %18, align 4
  %63 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %18)
  br label %64

64:                                               ; preds = %60, %59
  br label %34

65:                                               ; preds = %34
  %66 = load i8*, i8** %14, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65
  %72 = load i8*, i8** %12, align 8
  store i8* %72, i8** %4, align 8
  br label %120

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @parse_text_content(i32* %74, i32* %9)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** @FALSE, align 8
  store i8* %78, i8** %4, align 8
  br label %120

79:                                               ; preds = %73
  %80 = call i32 @xmlstrdupW(i32* %9)
  %81 = load %struct.entity*, %struct.entity** %15, align 8
  %82 = getelementptr inbounds %struct.entity, %struct.entity* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = icmp ne i32 %80, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = load i8*, i8** @FALSE, align 8
  store i8* %87, i8** %4, align 8
  br label %120

88:                                               ; preds = %79
  %89 = load i32, i32* @WINDOWCLASS_SECTION, align 4
  %90 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %91 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %117, %88
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %5, align 8
  %101 = call i8* @next_xml_elem(i32* %100, i32* %8)
  store i8* %101, i8** %13, align 8
  %102 = icmp ne i8* %101, null
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br i1 %104, label %105, label %118

105:                                              ; preds = %103
  %106 = load i32, i32* @windowClassW, align 4
  %107 = call i64 @xmlstr_cmp_end(i32* %8, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32*, i32** %5, align 8
  %111 = call i8* @parse_end_element(i32* %110)
  store i8* %111, i8** %13, align 8
  br label %118

112:                                              ; preds = %105
  %113 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %113, i32* %16, align 4
  %114 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %115 = load i32*, i32** %5, align 8
  %116 = call i8* @parse_unknown_elem(i32* %115, i32* %8)
  store i8* %116, i8** %13, align 8
  br label %117

117:                                              ; preds = %112
  br label %96

118:                                              ; preds = %109, %103
  %119 = load i8*, i8** %13, align 8
  store i8* %119, i8** %4, align 8
  br label %120

120:                                              ; preds = %118, %86, %77, %71, %56, %26
  %121 = load i8*, i8** %4, align 8
  ret i8* %121
}

declare dso_local %struct.entity* @add_entity(i32*, i32) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i8**, i8**) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i64 @xmlstr_cmpi(i32*, i32) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i32 @parse_text_content(i32*, i32*) #1

declare dso_local i32 @xmlstrdupW(i32*) #1

declare dso_local i8* @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xmlstr_cmp_end(i32*, i32) #1

declare dso_local i8* @parse_end_element(i32*) #1

declare dso_local i8* @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
