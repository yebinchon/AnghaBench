; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_dependent_assembly_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_dependent_assembly_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32 }
%struct.assembly_identity = type { i8*, i8* }
%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@parse_dependent_assembly_elem.allowDelayedBindingW = internal constant [20 x i8] c"allowDelayedBinding\00", align 16
@parse_dependent_assembly_elem.trueW = internal constant [5 x i8] c"true\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"unknown attr %s=%s\0A\00", align 1
@assemblyIdentityW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@dependentAssemblyW = common dso_local global i32 0, align 4
@bindingRedirectW = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown elem %S\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.actctx_loader*, i8*)* @parse_dependent_assembly_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_dependent_assembly_elem(i32* %0, %struct.actctx_loader* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.actctx_loader*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.assembly_identity, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.actctx_loader* %1, %struct.actctx_loader** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** @TRUE, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %15, align 8
  br label %22

22:                                               ; preds = %36, %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @next_xml_attr(i32* %23, %struct.TYPE_9__* %10, %struct.TYPE_9__* %11, i8** %13, i8** %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = call i8* @xmlstr_cmp(%struct.TYPE_9__* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @parse_dependent_assembly_elem.allowDelayedBindingW, i64 0, i64 0))
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i8* @xmlstr_cmp(%struct.TYPE_9__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_dependent_assembly_elem.trueW, i64 0, i64 0))
  store i8* %30, i8** %15, align 8
  br label %36

31:                                               ; preds = %26
  %32 = call i32 @xmlstr2unicode(%struct.TYPE_9__* %10)
  store i32 %32, i32* %16, align 4
  %33 = call i32 @xmlstr2unicode(%struct.TYPE_9__* %11)
  store i32 %33, i32* %17, align 4
  %34 = ptrtoint i32* %16 to i32
  %35 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34, i32* %17)
  br label %36

36:                                               ; preds = %31, %29
  br label %22

37:                                               ; preds = %22
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %4, align 8
  br label %105

45:                                               ; preds = %40
  %46 = call i32 @memset(%struct.assembly_identity* %8, i32 0, i32 16)
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %8, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %8, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @assemblyIdentityW, align 4
  %53 = load i32, i32* @asmv1W, align 4
  %54 = call i32 @parse_expect_elem(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.actctx_loader*, %struct.actctx_loader** %6, align 8
  %59 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @parse_assembly_identity_elem(i32* %57, i32 %60, %struct.assembly_identity* %8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56, %45
  %64 = load i8*, i8** @FALSE, align 8
  store i8* %64, i8** %4, align 8
  br label %105

65:                                               ; preds = %56
  %66 = load %struct.actctx_loader*, %struct.actctx_loader** %6, align 8
  %67 = call i32 @add_dependent_assembly_id(%struct.actctx_loader* %66, %struct.assembly_identity* %8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** @FALSE, align 8
  store i8* %70, i8** %4, align 8
  br label %105

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %102, %71
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = call i8* @next_xml_elem(i32* %76, %struct.TYPE_9__* %9)
  store i8* %77, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %81, label %103

81:                                               ; preds = %79
  %82 = load i32, i32* @dependentAssemblyW, align 4
  %83 = call i64 @xmlstr_cmp_end(%struct.TYPE_9__* %9, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = call i8* @parse_end_element(i32* %86)
  store i8* %87, i8** %14, align 8
  br label %103

88:                                               ; preds = %81
  %89 = load i8*, i8** @bindingRedirectW, align 8
  %90 = call i8* @xmlstr_cmp(%struct.TYPE_9__* %9, i8* %89)
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32*, i32** %5, align 8
  %94 = call i8* @parse_binding_redirect_elem(i32* %93)
  store i8* %94, i8** %14, align 8
  br label %101

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = call i8* @parse_unknown_elem(i32* %99, %struct.TYPE_9__* %9)
  store i8* %100, i8** %14, align 8
  br label %101

101:                                              ; preds = %95, %92
  br label %102

102:                                              ; preds = %101
  br label %72

103:                                              ; preds = %85, %79
  %104 = load i8*, i8** %14, align 8
  store i8* %104, i8** %4, align 8
  br label %105

105:                                              ; preds = %103, %69, %63, %43
  %106 = load i8*, i8** %4, align 8
  ret i8* %106
}

declare dso_local i64 @next_xml_attr(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i8**, i8**) #1

declare dso_local i8* @xmlstr_cmp(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @xmlstr2unicode(%struct.TYPE_9__*) #1

declare dso_local i32 @DPRINT1(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.assembly_identity*, i32, i32) #1

declare dso_local i32 @parse_expect_elem(i32*, i32, i32) #1

declare dso_local i32 @parse_assembly_identity_elem(i32*, i32, %struct.assembly_identity*) #1

declare dso_local i32 @add_dependent_assembly_id(%struct.actctx_loader*, %struct.assembly_identity*) #1

declare dso_local i8* @next_xml_elem(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @xmlstr_cmp_end(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @parse_end_element(i32*) #1

declare dso_local i8* @parse_binding_redirect_elem(i32*) #1

declare dso_local i8* @parse_unknown_elem(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
