; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_typelib_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_typelib_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dll_redirect = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.entity = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION = common dso_local global i32 0, align 4
@tlbidW = common dso_local global i32 0, align 4
@versionW = common dso_local global i32 0, align 4
@helpdirW = common dso_local global i32 0, align 4
@flagsW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@TLIBREDIRECT_SECTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@typelibW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.dll_redirect*, %struct.actctx_loader*)* @parse_typelib_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_typelib_elem(i32* %0, %struct.dll_redirect* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dll_redirect*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.entity*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dll_redirect* %1, %struct.dll_redirect** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.dll_redirect*, %struct.dll_redirect** %6, align 8
  %17 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %16, i32 0, i32 0
  %18 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION, align 4
  %19 = call %struct.entity* @add_entity(i32* %17, i32 %18)
  store %struct.entity* %19, %struct.entity** %12, align 8
  %20 = icmp ne %struct.entity* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %4, align 8
  br label %108

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %85, %23
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @next_xml_attr(i32* %25, i32* %8, i32* %9, i64* %11, i64* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %24
  %29 = load i32, i32* @tlbidW, align 4
  %30 = call i64 @xmlstr_cmp(i32* %8, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = call i8* @xmlstrdupW(i32* %9)
  %34 = load %struct.entity*, %struct.entity** %12, align 8
  %35 = getelementptr inbounds %struct.entity, %struct.entity* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %33, i8** %37, align 8
  %38 = icmp ne i8* %33, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %4, align 8
  br label %108

41:                                               ; preds = %32
  br label %85

42:                                               ; preds = %28
  %43 = load i32, i32* @versionW, align 4
  %44 = call i64 @xmlstr_cmp(i32* %8, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.entity*, %struct.entity** %12, align 8
  %48 = call i32 @parse_typelib_version(i32* %9, %struct.entity* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %4, align 8
  br label %108

52:                                               ; preds = %46
  br label %84

53:                                               ; preds = %42
  %54 = load i32, i32* @helpdirW, align 4
  %55 = call i64 @xmlstr_cmp(i32* %8, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = call i8* @xmlstrdupW(i32* %9)
  %59 = load %struct.entity*, %struct.entity** %12, align 8
  %60 = getelementptr inbounds %struct.entity, %struct.entity* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i8* %58, i8** %62, align 8
  %63 = icmp ne i8* %58, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %4, align 8
  br label %108

66:                                               ; preds = %57
  br label %83

67:                                               ; preds = %53
  %68 = load i32, i32* @flagsW, align 4
  %69 = call i64 @xmlstr_cmp(i32* %8, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.entity*, %struct.entity** %12, align 8
  %73 = call i32 @parse_typelib_flags(i32* %9, %struct.entity* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %4, align 8
  br label %108

77:                                               ; preds = %71
  br label %82

78:                                               ; preds = %67
  %79 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %79, i32* %14, align 4
  %80 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %80, i32* %13, align 4
  %81 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %13)
  br label %82

82:                                               ; preds = %78, %77
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %52
  br label %85

85:                                               ; preds = %84, %41
  br label %24

86:                                               ; preds = %24
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* @FALSE, align 8
  store i64 %90, i64* %4, align 8
  br label %108

91:                                               ; preds = %86
  %92 = load i32, i32* @TLIBREDIRECT_SECTION, align 4
  %93 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %94 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 4
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %4, align 8
  br label %108

103:                                              ; preds = %91
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @typelibW, align 4
  %106 = load i32, i32* @asmv1W, align 4
  %107 = call i64 @parse_expect_end_elem(i32* %104, i32 %105, i32 %106)
  store i64 %107, i64* %4, align 8
  br label %108

108:                                              ; preds = %103, %101, %89, %75, %64, %50, %39, %21
  %109 = load i64, i64* %4, align 8
  ret i64 %109
}

declare dso_local %struct.entity* @add_entity(i32*, i32) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i8* @xmlstrdupW(i32*) #1

declare dso_local i32 @parse_typelib_version(i32*, %struct.entity*) #1

declare dso_local i32 @parse_typelib_flags(i32*, %struct.entity*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, i32*) #1

declare dso_local i64 @parse_expect_end_elem(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
