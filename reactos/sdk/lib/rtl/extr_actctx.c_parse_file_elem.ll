; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_file_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_file_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dll_redirect = type { i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@g_nameW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"name=%wZ\0A\00", align 1
@hashW = common dso_local global i32 0, align 4
@hashalgW = common dso_local global i32 0, align 4
@parse_file_elem.sha1W = internal constant [5 x i8] c"SHA1\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hashalg should be SHA1, got %wZ\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@DLLREDIRECT_SECTION = common dso_local global i32 0, align 4
@fileW = common dso_local global i32 0, align 4
@comClassW = common dso_local global i32 0, align 4
@comInterfaceProxyStubW = common dso_local global i32 0, align 4
@asmv2W = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"asmv2hash (undocumented) not supported\0A\00", align 1
@typelibW = common dso_local global i32 0, align 4
@windowClassW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"unknown elem %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.assembly*, %struct.actctx_loader*)* @parse_file_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_file_elem(i32* %0, %struct.assembly* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.assembly*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.dll_redirect*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.assembly* %1, %struct.assembly** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %15, align 8
  %19 = load %struct.assembly*, %struct.assembly** %6, align 8
  %20 = call %struct.dll_redirect* @add_dll_redirect(%struct.assembly* %19)
  store %struct.dll_redirect* %20, %struct.dll_redirect** %16, align 8
  %21 = icmp ne %struct.dll_redirect* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %4, align 8
  br label %168

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %70, %24
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @next_xml_attr(i32* %26, i32* %8, i32* %9, i64* %14, i64* %13)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %30, i32* %11, align 4
  %31 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @g_nameW, align 4
  %33 = call i64 @xmlstr_cmp(i32* %8, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = call i8* @xmlstrdupW(i32* %9)
  %37 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %38 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = icmp ne i8* %36, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %168

42:                                               ; preds = %35
  %43 = call i32 @DPRINT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %12)
  br label %70

44:                                               ; preds = %29
  %45 = load i32, i32* @hashW, align 4
  %46 = call i64 @xmlstr_cmp(i32* %8, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = call i8* @xmlstrdupW(i32* %9)
  %50 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %51 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = icmp ne i8* %49, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %4, align 8
  br label %168

55:                                               ; preds = %48
  br label %69

56:                                               ; preds = %44
  %57 = load i32, i32* @hashalgW, align 4
  %58 = call i64 @xmlstr_cmp(i32* %8, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = call i32 @xmlstr_cmpi(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_file_elem.sha1W, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  br label %65

65:                                               ; preds = %63, %60
  br label %68

66:                                               ; preds = %56
  %67 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32* %12)
  br label %68

68:                                               ; preds = %66, %65
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %42
  br label %25

71:                                               ; preds = %25
  %72 = load i64, i64* %14, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %76 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74, %71
  %80 = load i64, i64* @FALSE, align 8
  store i64 %80, i64* %4, align 8
  br label %168

81:                                               ; preds = %74
  %82 = load i32, i32* @DLLREDIRECT_SECTION, align 4
  %83 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %84 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i64, i64* @TRUE, align 8
  store i64 %92, i64* %4, align 8
  br label %168

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %165, %93
  %95 = load i64, i64* %15, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32*, i32** %5, align 8
  %99 = call i64 @next_xml_elem(i32* %98, i32* %10)
  store i64 %99, i64* %15, align 8
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i1 [ false, %94 ], [ %100, %97 ]
  br i1 %102, label %103, label %166

103:                                              ; preds = %101
  %104 = load i32, i32* @fileW, align 4
  %105 = call i64 @xmlstr_cmp_end(i32* %10, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = call i64 @parse_end_element(i32* %108)
  store i64 %109, i64* %15, align 8
  br label %166

110:                                              ; preds = %103
  %111 = load i32, i32* @comClassW, align 4
  %112 = call i64 @xmlstr_cmp(i32* %10, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %117 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %118 = call i64 @parse_com_class_elem(i32* %115, %struct.dll_redirect* %116, %struct.actctx_loader* %117)
  store i64 %118, i64* %15, align 8
  br label %164

119:                                              ; preds = %110
  %120 = load i32, i32* @comInterfaceProxyStubW, align 4
  %121 = call i64 @xmlstr_cmp(i32* %10, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %126 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %127 = call i64 @parse_cominterface_proxy_stub_elem(i32* %124, %struct.dll_redirect* %125, %struct.actctx_loader* %126)
  store i64 %127, i64* %15, align 8
  br label %163

128:                                              ; preds = %119
  %129 = load i32, i32* @hashW, align 4
  %130 = load i32, i32* @asmv2W, align 4
  %131 = call i64 @xml_elem_cmp(i32* %10, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32*, i32** %5, align 8
  %136 = call i64 @parse_unknown_elem(i32* %135, i32* %10)
  store i64 %136, i64* %15, align 8
  br label %162

137:                                              ; preds = %128
  %138 = load i32, i32* @typelibW, align 4
  %139 = call i64 @xmlstr_cmp(i32* %10, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %144 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %145 = call i64 @parse_typelib_elem(i32* %142, %struct.dll_redirect* %143, %struct.actctx_loader* %144)
  store i64 %145, i64* %15, align 8
  br label %161

146:                                              ; preds = %137
  %147 = load i32, i32* @windowClassW, align 4
  %148 = call i64 @xmlstr_cmp(i32* %10, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %153 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %154 = call i64 @parse_window_class_elem(i32* %151, %struct.dll_redirect* %152, %struct.actctx_loader* %153)
  store i64 %154, i64* %15, align 8
  br label %160

155:                                              ; preds = %146
  %156 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %156, i32* %11, align 4
  %157 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %11)
  %158 = load i32*, i32** %5, align 8
  %159 = call i64 @parse_unknown_elem(i32* %158, i32* %10)
  store i64 %159, i64* %15, align 8
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %141
  br label %162

162:                                              ; preds = %161, %133
  br label %163

163:                                              ; preds = %162, %123
  br label %164

164:                                              ; preds = %163, %114
  br label %165

165:                                              ; preds = %164
  br label %94

166:                                              ; preds = %107, %101
  %167 = load i64, i64* %15, align 8
  store i64 %167, i64* %4, align 8
  br label %168

168:                                              ; preds = %166, %91, %79, %53, %40, %22
  %169 = load i64, i64* %4, align 8
  ret i64 %169
}

declare dso_local %struct.dll_redirect* @add_dll_redirect(%struct.assembly*) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i8* @xmlstrdupW(i32*) #1

declare dso_local i32 @DPRINT(i8*, i32*) #1

declare dso_local i32 @xmlstr_cmpi(i32*, i8*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i64 @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xmlstr_cmp_end(i32*, i32) #1

declare dso_local i64 @parse_end_element(i32*) #1

declare dso_local i64 @parse_com_class_elem(i32*, %struct.dll_redirect*, %struct.actctx_loader*) #1

declare dso_local i64 @parse_cominterface_proxy_stub_elem(i32*, %struct.dll_redirect*, %struct.actctx_loader*) #1

declare dso_local i64 @xml_elem_cmp(i32*, i32, i32) #1

declare dso_local i64 @parse_unknown_elem(i32*, i32*) #1

declare dso_local i64 @parse_typelib_elem(i32*, %struct.dll_redirect*, %struct.actctx_loader*) #1

declare dso_local i64 @parse_window_class_elem(i32*, %struct.dll_redirect*, %struct.actctx_loader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
