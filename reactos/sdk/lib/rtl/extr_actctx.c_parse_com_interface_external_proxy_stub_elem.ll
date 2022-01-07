; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_com_interface_external_proxy_stub_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_com_interface_external_proxy_stub_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.entity = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32, i8*, i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION = common dso_local global i32 0, align 4
@iidW = common dso_local global i32 0, align 4
@g_nameW = common dso_local global i32 0, align 4
@baseInterfaceW = common dso_local global i32 0, align 4
@BaseIface = common dso_local global i32 0, align 4
@nummethodsW = common dso_local global i32 0, align 4
@NumMethods = common dso_local global i32 0, align 4
@proxyStubClsid32W = common dso_local global i32 0, align 4
@tlbidW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@IFACEREDIRECT_SECTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@comInterfaceExternalProxyStubW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.assembly*, %struct.actctx_loader*)* @parse_com_interface_external_proxy_stub_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_com_interface_external_proxy_stub_elem(i32* %0, %struct.assembly* %1, %struct.actctx_loader* %2) #0 {
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
  %18 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION, align 4
  %19 = call %struct.entity* @add_entity(i32* %17, i32 %18)
  store %struct.entity* %19, %struct.entity** %14, align 8
  %20 = load %struct.entity*, %struct.entity** %14, align 8
  %21 = icmp ne %struct.entity* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %4, align 8
  br label %156

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %133, %24
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @next_xml_attr(i32* %26, i32* %8, i32* %9, i64* %13, i64* %12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %134

29:                                               ; preds = %25
  %30 = load i32, i32* @iidW, align 4
  %31 = call i64 @xmlstr_cmp(i32* %8, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = call i8* @xmlstrdupW(i32* %9)
  %35 = load %struct.entity*, %struct.entity** %14, align 8
  %36 = getelementptr inbounds %struct.entity, %struct.entity* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i8* %34, i8** %38, align 8
  %39 = icmp ne i8* %34, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %156

42:                                               ; preds = %33
  br label %133

43:                                               ; preds = %29
  %44 = load i32, i32* @g_nameW, align 4
  %45 = call i64 @xmlstr_cmp(i32* %8, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = call i8* @xmlstrdupW(i32* %9)
  %49 = load %struct.entity*, %struct.entity** %14, align 8
  %50 = getelementptr inbounds %struct.entity, %struct.entity* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i8* %48, i8** %52, align 8
  %53 = icmp ne i8* %48, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %4, align 8
  br label %156

56:                                               ; preds = %47
  br label %132

57:                                               ; preds = %43
  %58 = load i32, i32* @baseInterfaceW, align 4
  %59 = call i64 @xmlstr_cmp(i32* %8, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = call i8* @xmlstrdupW(i32* %9)
  %63 = load %struct.entity*, %struct.entity** %14, align 8
  %64 = getelementptr inbounds %struct.entity, %struct.entity* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i8* %62, i8** %66, align 8
  %67 = icmp ne i8* %62, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* @FALSE, align 8
  store i64 %69, i64* %4, align 8
  br label %156

70:                                               ; preds = %61
  %71 = load i32, i32* @BaseIface, align 4
  %72 = load %struct.entity*, %struct.entity** %14, align 8
  %73 = getelementptr inbounds %struct.entity, %struct.entity* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 8
  br label %131

78:                                               ; preds = %57
  %79 = load i32, i32* @nummethodsW, align 4
  %80 = call i64 @xmlstr_cmp(i32* %8, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.entity*, %struct.entity** %14, align 8
  %84 = call i32 @parse_nummethods(i32* %9, %struct.entity* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* @FALSE, align 8
  store i64 %87, i64* %4, align 8
  br label %156

88:                                               ; preds = %82
  %89 = load i32, i32* @NumMethods, align 4
  %90 = load %struct.entity*, %struct.entity** %14, align 8
  %91 = getelementptr inbounds %struct.entity, %struct.entity* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 8
  br label %130

96:                                               ; preds = %78
  %97 = load i32, i32* @proxyStubClsid32W, align 4
  %98 = call i64 @xmlstr_cmp(i32* %8, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = call i8* @xmlstrdupW(i32* %9)
  %102 = load %struct.entity*, %struct.entity** %14, align 8
  %103 = getelementptr inbounds %struct.entity, %struct.entity* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i8* %101, i8** %105, align 8
  %106 = icmp ne i8* %101, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = load i64, i64* @FALSE, align 8
  store i64 %108, i64* %4, align 8
  br label %156

109:                                              ; preds = %100
  br label %129

110:                                              ; preds = %96
  %111 = load i32, i32* @tlbidW, align 4
  %112 = call i64 @xmlstr_cmp(i32* %8, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = call i8* @xmlstrdupW(i32* %9)
  %116 = load %struct.entity*, %struct.entity** %14, align 8
  %117 = getelementptr inbounds %struct.entity, %struct.entity* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i8* %115, i8** %119, align 8
  %120 = icmp ne i8* %115, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = load i64, i64* @FALSE, align 8
  store i64 %122, i64* %4, align 8
  br label %156

123:                                              ; preds = %114
  br label %128

124:                                              ; preds = %110
  %125 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %125, i32* %10, align 4
  %126 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %126, i32* %11, align 4
  %127 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  br label %128

128:                                              ; preds = %124, %123
  br label %129

129:                                              ; preds = %128, %109
  br label %130

130:                                              ; preds = %129, %88
  br label %131

131:                                              ; preds = %130, %70
  br label %132

132:                                              ; preds = %131, %56
  br label %133

133:                                              ; preds = %132, %42
  br label %25

134:                                              ; preds = %25
  %135 = load i64, i64* %13, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i64, i64* @FALSE, align 8
  store i64 %138, i64* %4, align 8
  br label %156

139:                                              ; preds = %134
  %140 = load i32, i32* @IFACEREDIRECT_SECTION, align 4
  %141 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %142 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %140
  store i32 %146, i32* %144, align 4
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load i64, i64* @TRUE, align 8
  store i64 %150, i64* %4, align 8
  br label %156

151:                                              ; preds = %139
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* @comInterfaceExternalProxyStubW, align 4
  %154 = load i32, i32* @asmv1W, align 4
  %155 = call i64 @parse_expect_end_elem(i32* %152, i32 %153, i32 %154)
  store i64 %155, i64* %4, align 8
  br label %156

156:                                              ; preds = %151, %149, %137, %121, %107, %86, %68, %54, %40, %22
  %157 = load i64, i64* %4, align 8
  ret i64 %157
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
