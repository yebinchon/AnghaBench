; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_requested_execution_level_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_requested_execution_level_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i64, i8* }
%struct.actctx_loader = type { i32 }

@parse_requested_execution_level_elem.levelW = internal constant [6 x i8] c"level\00", align 1
@parse_requested_execution_level_elem.asInvokerW = internal constant [10 x i8] c"asInvoker\00", align 1
@parse_requested_execution_level_elem.requireAdministratorW = internal constant [21 x i8] c"requireAdministrator\00", align 16
@parse_requested_execution_level_elem.highestAvailableW = internal constant [17 x i8] c"highestAvailable\00", align 16
@parse_requested_execution_level_elem.uiAccessW = internal constant [9 x i8] c"uiAccess\00", align 1
@parse_requested_execution_level_elem.falseW = internal constant [6 x i8] c"false\00", align 1
@parse_requested_execution_level_elem.trueW = internal constant [5 x i8] c"true\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@ACTCTX_RUN_LEVEL_UNSPECIFIED = common dso_local global i64 0, align 8
@ACTCTX_RUN_LEVEL_AS_INVOKER = common dso_local global i64 0, align 8
@ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE = common dso_local global i64 0, align 8
@ACTCTX_RUN_LEVEL_REQUIRE_ADMIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unknown execution level: %wZ\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown uiAccess value: %wZ\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@requestedExecutionLevelW = common dso_local global i32 0, align 4
@asmv2W = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown element %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.assembly*, %struct.actctx_loader*)* @parse_requested_execution_level_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_requested_execution_level_elem(i32* %0, %struct.assembly* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.assembly*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.assembly* %1, %struct.assembly** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** @TRUE, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.assembly*, %struct.assembly** %6, align 8
  %20 = getelementptr inbounds %struct.assembly, %struct.assembly* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACTCTX_RUN_LEVEL_UNSPECIFIED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** @FALSE, align 8
  store i8* %25, i8** %4, align 8
  br label %123

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %86, %26
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @next_xml_attr(i32* %28, i32* %8, i32* %9, i8** %13, i8** %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  %32 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %32, i32* %14, align 4
  %33 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %33, i32* %15, align 4
  %34 = call i64 @xmlstr_cmp(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @parse_requested_execution_level_elem.levelW, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = call i64 @xmlstr_cmpi(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @parse_requested_execution_level_elem.asInvokerW, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* @ACTCTX_RUN_LEVEL_AS_INVOKER, align 8
  %41 = load %struct.assembly*, %struct.assembly** %6, align 8
  %42 = getelementptr inbounds %struct.assembly, %struct.assembly* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %61

43:                                               ; preds = %36
  %44 = call i64 @xmlstr_cmpi(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @parse_requested_execution_level_elem.highestAvailableW, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE, align 8
  %48 = load %struct.assembly*, %struct.assembly** %6, align 8
  %49 = getelementptr inbounds %struct.assembly, %struct.assembly* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %60

50:                                               ; preds = %43
  %51 = call i64 @xmlstr_cmpi(i32* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @parse_requested_execution_level_elem.requireAdministratorW, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* @ACTCTX_RUN_LEVEL_REQUIRE_ADMIN, align 8
  %55 = load %struct.assembly*, %struct.assembly** %6, align 8
  %56 = getelementptr inbounds %struct.assembly, %struct.assembly* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %59

57:                                               ; preds = %50
  %58 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %15)
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %39
  br label %86

62:                                               ; preds = %31
  %63 = call i64 @xmlstr_cmp(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @parse_requested_execution_level_elem.uiAccessW, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = call i64 @xmlstr_cmpi(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @parse_requested_execution_level_elem.falseW, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** @FALSE, align 8
  %70 = load %struct.assembly*, %struct.assembly** %6, align 8
  %71 = getelementptr inbounds %struct.assembly, %struct.assembly* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %82

72:                                               ; preds = %65
  %73 = call i64 @xmlstr_cmpi(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_requested_execution_level_elem.trueW, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** @TRUE, align 8
  %77 = load %struct.assembly*, %struct.assembly** %6, align 8
  %78 = getelementptr inbounds %struct.assembly, %struct.assembly* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %81

79:                                               ; preds = %72
  %80 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81, %68
  br label %85

83:                                               ; preds = %62
  %84 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32* %15)
  br label %85

85:                                               ; preds = %83, %82
  br label %86

86:                                               ; preds = %85, %61
  br label %27

87:                                               ; preds = %27
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i8*, i8** @FALSE, align 8
  store i8* %91, i8** %4, align 8
  br label %123

92:                                               ; preds = %87
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i8*, i8** @TRUE, align 8
  store i8* %96, i8** %4, align 8
  br label %123

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %120, %97
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @next_xml_elem(i32* %102, i32* %10)
  store i8* %103, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i1 [ false, %98 ], [ %104, %101 ]
  br i1 %106, label %107, label %121

107:                                              ; preds = %105
  %108 = load i32, i32* @requestedExecutionLevelW, align 4
  %109 = load i32, i32* @asmv2W, align 4
  %110 = call i64 @xml_elem_cmp_end(i32* %10, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32*, i32** %5, align 8
  %114 = call i8* @parse_end_element(i32* %113)
  store i8* %114, i8** %12, align 8
  br label %121

115:                                              ; preds = %107
  %116 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %116, i32* %16, align 4
  %117 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %16)
  %118 = load i32*, i32** %5, align 8
  %119 = call i8* @parse_unknown_elem(i32* %118, i32* %10)
  store i8* %119, i8** %12, align 8
  br label %120

120:                                              ; preds = %115
  br label %98

121:                                              ; preds = %112, %105
  %122 = load i8*, i8** %12, align 8
  store i8* %122, i8** %4, align 8
  br label %123

123:                                              ; preds = %121, %95, %90, %24
  %124 = load i8*, i8** %4, align 8
  ret i8* %124
}

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i8**, i8**) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i8*) #1

declare dso_local i64 @xmlstr_cmpi(i32*, i8*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i8* @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xml_elem_cmp_end(i32*, i32, i32) #1

declare dso_local i8* @parse_end_element(i32*) #1

declare dso_local i8* @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
