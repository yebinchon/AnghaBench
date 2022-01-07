; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_clr_surrogate_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_clr_surrogate_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.entity = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES = common dso_local global i32 0, align 4
@g_nameW = common dso_local global i32 0, align 4
@clsidW = common dso_local global i32 0, align 4
@runtimeVersionW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@CLRSURROGATES_SECTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@clrSurrogateW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.assembly*, %struct.actctx_loader*)* @parse_clr_surrogate_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_clr_surrogate_elem(i32* %0, %struct.assembly* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.assembly*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.entity*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.assembly* %1, %struct.assembly** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.assembly*, %struct.assembly** %6, align 8
  %17 = getelementptr inbounds %struct.assembly, %struct.assembly* %16, i32 0, i32 0
  %18 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES, align 4
  %19 = call %struct.entity* @add_entity(i32* %17, i32 %18)
  store %struct.entity* %19, %struct.entity** %14, align 8
  %20 = load %struct.entity*, %struct.entity** %14, align 8
  %21 = icmp ne %struct.entity* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %4, align 8
  br label %100

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %77, %24
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @next_xml_attr(i32* %26, i32* %8, i32* %9, i64* %13, i64* %12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %25
  %30 = load i32, i32* @g_nameW, align 4
  %31 = call i64 @xmlstr_cmp(i32* %8, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = call i8* @xmlstrdupW(i32* %9)
  %35 = load %struct.entity*, %struct.entity** %14, align 8
  %36 = getelementptr inbounds %struct.entity, %struct.entity* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i8* %34, i8** %38, align 8
  %39 = icmp ne i8* %34, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %100

42:                                               ; preds = %33
  br label %77

43:                                               ; preds = %29
  %44 = load i32, i32* @clsidW, align 4
  %45 = call i64 @xmlstr_cmp(i32* %8, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = call i8* @xmlstrdupW(i32* %9)
  %49 = load %struct.entity*, %struct.entity** %14, align 8
  %50 = getelementptr inbounds %struct.entity, %struct.entity* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  %53 = icmp ne i8* %48, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %4, align 8
  br label %100

56:                                               ; preds = %47
  br label %76

57:                                               ; preds = %43
  %58 = load i32, i32* @runtimeVersionW, align 4
  %59 = call i64 @xmlstr_cmp(i32* %8, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = call i8* @xmlstrdupW(i32* %9)
  %63 = load %struct.entity*, %struct.entity** %14, align 8
  %64 = getelementptr inbounds %struct.entity, %struct.entity* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %62, i8** %66, align 8
  %67 = icmp ne i8* %62, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* @FALSE, align 8
  store i64 %69, i64* %4, align 8
  br label %100

70:                                               ; preds = %61
  br label %75

71:                                               ; preds = %57
  %72 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %72, i32* %10, align 4
  %73 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %73, i32* %11, align 4
  %74 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  br label %75

75:                                               ; preds = %71, %70
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %42
  br label %25

78:                                               ; preds = %25
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64, i64* @FALSE, align 8
  store i64 %82, i64* %4, align 8
  br label %100

83:                                               ; preds = %78
  %84 = load i32, i32* @CLRSURROGATES_SECTION, align 4
  %85 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %86 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %4, align 8
  br label %100

95:                                               ; preds = %83
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @clrSurrogateW, align 4
  %98 = load i32, i32* @asmv1W, align 4
  %99 = call i64 @parse_expect_end_elem(i32* %96, i32 %97, i32 %98)
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %95, %93, %81, %68, %54, %40, %22
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local %struct.entity* @add_entity(i32*, i32) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i8* @xmlstrdupW(i32*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, i32*) #1

declare dso_local i64 @parse_expect_end_elem(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
