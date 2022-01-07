; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_cominterface_proxy_stub_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_cominterface_proxy_stub_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dll_redirect = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.entity = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i8*, i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION = common dso_local global i32 0, align 4
@iidW = common dso_local global i32 0, align 4
@g_nameW = common dso_local global i32 0, align 4
@baseInterfaceW = common dso_local global i32 0, align 4
@BaseIface = common dso_local global i32 0, align 4
@nummethodsW = common dso_local global i32 0, align 4
@NumMethods = common dso_local global i32 0, align 4
@tlbidW = common dso_local global i32 0, align 4
@proxyStubClsid32W = common dso_local global i32 0, align 4
@threadingmodelW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@IFACEREDIRECT_SECTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@comInterfaceProxyStubW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.dll_redirect*, %struct.actctx_loader*)* @parse_cominterface_proxy_stub_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_cominterface_proxy_stub_elem(i32* %0, %struct.dll_redirect* %1, %struct.actctx_loader* %2) #0 {
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
  %18 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION, align 4
  %19 = call %struct.entity* @add_entity(i32* %17, i32 %18)
  store %struct.entity* %19, %struct.entity** %12, align 8
  %20 = icmp ne %struct.entity* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %4, align 8
  br label %150

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %127, %23
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @next_xml_attr(i32* %25, i32* %8, i32* %9, i64* %11, i64* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %128

28:                                               ; preds = %24
  %29 = load i32, i32* @iidW, align 4
  %30 = call i64 @xmlstr_cmp(i32* %8, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = call i8* @xmlstrdupW(i32* %9)
  %34 = load %struct.entity*, %struct.entity** %12, align 8
  %35 = getelementptr inbounds %struct.entity, %struct.entity* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i8* %33, i8** %37, align 8
  %38 = icmp ne i8* %33, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %4, align 8
  br label %150

41:                                               ; preds = %32
  br label %127

42:                                               ; preds = %28
  %43 = load i32, i32* @g_nameW, align 4
  %44 = call i64 @xmlstr_cmp(i32* %8, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = call i8* @xmlstrdupW(i32* %9)
  %48 = load %struct.entity*, %struct.entity** %12, align 8
  %49 = getelementptr inbounds %struct.entity, %struct.entity* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i8* %47, i8** %51, align 8
  %52 = icmp ne i8* %47, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %4, align 8
  br label %150

55:                                               ; preds = %46
  br label %126

56:                                               ; preds = %42
  %57 = load i32, i32* @baseInterfaceW, align 4
  %58 = call i64 @xmlstr_cmp(i32* %8, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = call i8* @xmlstrdupW(i32* %9)
  %62 = load %struct.entity*, %struct.entity** %12, align 8
  %63 = getelementptr inbounds %struct.entity, %struct.entity* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i8* %61, i8** %65, align 8
  %66 = icmp ne i8* %61, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %4, align 8
  br label %150

69:                                               ; preds = %60
  %70 = load i32, i32* @BaseIface, align 4
  %71 = load %struct.entity*, %struct.entity** %12, align 8
  %72 = getelementptr inbounds %struct.entity, %struct.entity* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 8
  br label %125

77:                                               ; preds = %56
  %78 = load i32, i32* @nummethodsW, align 4
  %79 = call i64 @xmlstr_cmp(i32* %8, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.entity*, %struct.entity** %12, align 8
  %83 = call i32 @parse_nummethods(i32* %9, %struct.entity* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %4, align 8
  br label %150

87:                                               ; preds = %81
  %88 = load i32, i32* @NumMethods, align 4
  %89 = load %struct.entity*, %struct.entity** %12, align 8
  %90 = getelementptr inbounds %struct.entity, %struct.entity* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 8
  br label %124

95:                                               ; preds = %77
  %96 = load i32, i32* @tlbidW, align 4
  %97 = call i64 @xmlstr_cmp(i32* %8, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = call i8* @xmlstrdupW(i32* %9)
  %101 = load %struct.entity*, %struct.entity** %12, align 8
  %102 = getelementptr inbounds %struct.entity, %struct.entity* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i8* %100, i8** %104, align 8
  %105 = icmp ne i8* %100, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %99
  %107 = load i64, i64* @FALSE, align 8
  store i64 %107, i64* %4, align 8
  br label %150

108:                                              ; preds = %99
  br label %123

109:                                              ; preds = %95
  %110 = load i32, i32* @proxyStubClsid32W, align 4
  %111 = call i64 @xmlstr_cmp(i32* %8, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @threadingmodelW, align 4
  %115 = call i64 @xmlstr_cmp(i32* %8, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %109
  br label %122

118:                                              ; preds = %113
  %119 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %119, i32* %14, align 4
  %120 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %120, i32* %13, align 4
  %121 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %13)
  br label %122

122:                                              ; preds = %118, %117
  br label %123

123:                                              ; preds = %122, %108
  br label %124

124:                                              ; preds = %123, %87
  br label %125

125:                                              ; preds = %124, %69
  br label %126

126:                                              ; preds = %125, %55
  br label %127

127:                                              ; preds = %126, %41
  br label %24

128:                                              ; preds = %24
  %129 = load i64, i64* %11, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %4, align 8
  br label %150

133:                                              ; preds = %128
  %134 = load i32, i32* @IFACEREDIRECT_SECTION, align 4
  %135 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %136 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 4
  %141 = load i64, i64* %10, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i64, i64* @TRUE, align 8
  store i64 %144, i64* %4, align 8
  br label %150

145:                                              ; preds = %133
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* @comInterfaceProxyStubW, align 4
  %148 = load i32, i32* @asmv1W, align 4
  %149 = call i64 @parse_expect_end_elem(i32* %146, i32 %147, i32 %148)
  store i64 %149, i64* %4, align 8
  br label %150

150:                                              ; preds = %145, %143, %131, %106, %85, %67, %53, %39, %21
  %151 = load i64, i64* %4, align 8
  ret i64 %151
}

declare dso_local %struct.entity* @add_entity(i32*, i32) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i8* @xmlstrdupW(i32*) #1

declare dso_local i32 @parse_nummethods(i32*, %struct.entity*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, i32*) #1

declare dso_local i64 @parse_expect_end_elem(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
