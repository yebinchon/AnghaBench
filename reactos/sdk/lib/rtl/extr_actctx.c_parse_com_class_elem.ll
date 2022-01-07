; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_com_class_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_com_class_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dll_redirect = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.entity = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_5__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION = common dso_local global i32 0, align 4
@clsidW = common dso_local global i32 0, align 4
@progidW = common dso_local global i32 0, align 4
@tlbidW = common dso_local global i32 0, align 4
@threadingmodelW = common dso_local global i32 0, align 4
@miscstatusW = common dso_local global i32 0, align 4
@miscstatuscontentW = common dso_local global i32 0, align 4
@miscstatusthumbnailW = common dso_local global i32 0, align 4
@miscstatusiconW = common dso_local global i32 0, align 4
@miscstatusdocprintW = common dso_local global i32 0, align 4
@descriptionW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@SERVERREDIRECT_SECTION = common dso_local global i32 0, align 4
@PROGIDREDIRECT_SECTION = common dso_local global i32 0, align 4
@comClassW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown elem %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.dll_redirect*, %struct.actctx_loader*)* @parse_com_class_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_com_class_elem(i32* %0, %struct.dll_redirect* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dll_redirect*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.entity*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dll_redirect* %1, %struct.dll_redirect** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.dll_redirect*, %struct.dll_redirect** %6, align 8
  %20 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %19, i32 0, i32 0
  %21 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION, align 4
  %22 = call %struct.entity* @add_entity(i32* %20, i32 %21)
  store %struct.entity* %22, %struct.entity** %14, align 8
  %23 = icmp ne %struct.entity* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %4, align 8
  br label %234

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %151, %26
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @next_xml_attr(i32* %28, i32* %9, i32* %10, i64* %13, i64* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %152

31:                                               ; preds = %27
  %32 = load i32, i32* @clsidW, align 4
  %33 = call i64 @xmlstr_cmp(i32* %9, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = call i8* @xmlstrdupW(i32* %10)
  %37 = load %struct.entity*, %struct.entity** %14, align 8
  %38 = getelementptr inbounds %struct.entity, %struct.entity* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 9
  store i8* %36, i8** %40, align 8
  %41 = icmp ne i8* %36, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %4, align 8
  br label %234

44:                                               ; preds = %35
  br label %151

45:                                               ; preds = %31
  %46 = load i32, i32* @progidW, align 4
  %47 = call i64 @xmlstr_cmp(i32* %9, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = call i8* @xmlstrdupW(i32* %10)
  %51 = load %struct.entity*, %struct.entity** %14, align 8
  %52 = getelementptr inbounds %struct.entity, %struct.entity* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = icmp ne i8* %50, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %4, align 8
  br label %234

58:                                               ; preds = %49
  br label %150

59:                                               ; preds = %45
  %60 = load i32, i32* @tlbidW, align 4
  %61 = call i64 @xmlstr_cmp(i32* %9, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = call i8* @xmlstrdupW(i32* %10)
  %65 = load %struct.entity*, %struct.entity** %14, align 8
  %66 = getelementptr inbounds %struct.entity, %struct.entity* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 8
  store i8* %64, i8** %68, align 8
  %69 = icmp ne i8* %64, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %4, align 8
  br label %234

72:                                               ; preds = %63
  br label %149

73:                                               ; preds = %59
  %74 = load i32, i32* @threadingmodelW, align 4
  %75 = call i64 @xmlstr_cmp(i32* %9, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = call i32 @parse_com_class_threadingmodel(i32* %10)
  %79 = load %struct.entity*, %struct.entity** %14, align 8
  %80 = getelementptr inbounds %struct.entity, %struct.entity* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  store i32 %78, i32* %82, align 8
  br label %148

83:                                               ; preds = %73
  %84 = load i32, i32* @miscstatusW, align 4
  %85 = call i64 @xmlstr_cmp(i32* %9, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = call i8* @parse_com_class_misc(i32* %10)
  %89 = load %struct.entity*, %struct.entity** %14, align 8
  %90 = getelementptr inbounds %struct.entity, %struct.entity* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 6
  store i8* %88, i8** %92, align 8
  br label %147

93:                                               ; preds = %83
  %94 = load i32, i32* @miscstatuscontentW, align 4
  %95 = call i64 @xmlstr_cmp(i32* %9, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = call i8* @parse_com_class_misc(i32* %10)
  %99 = load %struct.entity*, %struct.entity** %14, align 8
  %100 = getelementptr inbounds %struct.entity, %struct.entity* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  store i8* %98, i8** %102, align 8
  br label %146

103:                                              ; preds = %93
  %104 = load i32, i32* @miscstatusthumbnailW, align 4
  %105 = call i64 @xmlstr_cmp(i32* %9, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = call i8* @parse_com_class_misc(i32* %10)
  %109 = load %struct.entity*, %struct.entity** %14, align 8
  %110 = getelementptr inbounds %struct.entity, %struct.entity* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store i8* %108, i8** %112, align 8
  br label %145

113:                                              ; preds = %103
  %114 = load i32, i32* @miscstatusiconW, align 4
  %115 = call i64 @xmlstr_cmp(i32* %9, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = call i8* @parse_com_class_misc(i32* %10)
  %119 = load %struct.entity*, %struct.entity** %14, align 8
  %120 = getelementptr inbounds %struct.entity, %struct.entity* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i8* %118, i8** %122, align 8
  br label %144

123:                                              ; preds = %113
  %124 = load i32, i32* @miscstatusdocprintW, align 4
  %125 = call i64 @xmlstr_cmp(i32* %9, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = call i8* @parse_com_class_misc(i32* %10)
  %129 = load %struct.entity*, %struct.entity** %14, align 8
  %130 = getelementptr inbounds %struct.entity, %struct.entity* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  store i8* %128, i8** %132, align 8
  br label %143

133:                                              ; preds = %123
  %134 = load i32, i32* @descriptionW, align 4
  %135 = call i64 @xmlstr_cmp(i32* %9, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %142

138:                                              ; preds = %133
  %139 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %139, i32* %16, align 4
  %140 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %140, i32* %15, align 4
  %141 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %15)
  br label %142

142:                                              ; preds = %138, %137
  br label %143

143:                                              ; preds = %142, %127
  br label %144

144:                                              ; preds = %143, %117
  br label %145

145:                                              ; preds = %144, %107
  br label %146

146:                                              ; preds = %145, %97
  br label %147

147:                                              ; preds = %146, %87
  br label %148

148:                                              ; preds = %147, %77
  br label %149

149:                                              ; preds = %148, %72
  br label %150

150:                                              ; preds = %149, %58
  br label %151

151:                                              ; preds = %150, %44
  br label %27

152:                                              ; preds = %27
  %153 = load i64, i64* %13, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i64, i64* @FALSE, align 8
  store i64 %156, i64* %4, align 8
  br label %234

157:                                              ; preds = %152
  %158 = load i32, i32* @SERVERREDIRECT_SECTION, align 4
  %159 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %160 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %158
  store i32 %164, i32* %162, align 4
  %165 = load %struct.entity*, %struct.entity** %14, align 8
  %166 = getelementptr inbounds %struct.entity, %struct.entity* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %157
  %172 = load i32, i32* @PROGIDREDIRECT_SECTION, align 4
  %173 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %174 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %171, %157
  %180 = load i64, i64* %12, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i64, i64* @TRUE, align 8
  store i64 %183, i64* %4, align 8
  br label %234

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %215, %184
  %186 = load i64, i64* %11, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32*, i32** %5, align 8
  %190 = call i64 @next_xml_elem(i32* %189, i32* %8)
  store i64 %190, i64* %11, align 8
  %191 = icmp ne i64 %190, 0
  br label %192

192:                                              ; preds = %188, %185
  %193 = phi i1 [ false, %185 ], [ %191, %188 ]
  br i1 %193, label %194, label %216

194:                                              ; preds = %192
  %195 = load i32, i32* @comClassW, align 4
  %196 = call i64 @xmlstr_cmp_end(i32* %8, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load i32*, i32** %5, align 8
  %200 = call i64 @parse_end_element(i32* %199)
  store i64 %200, i64* %11, align 8
  br label %216

201:                                              ; preds = %194
  %202 = load i32, i32* @progidW, align 4
  %203 = call i64 @xmlstr_cmp(i32* %8, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.entity*, %struct.entity** %14, align 8
  %208 = call i64 @parse_com_class_progid(i32* %206, %struct.entity* %207)
  store i64 %208, i64* %11, align 8
  br label %214

209:                                              ; preds = %201
  %210 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %210, i32* %16, align 4
  %211 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %212 = load i32*, i32** %5, align 8
  %213 = call i64 @parse_unknown_elem(i32* %212, i32* %8)
  store i64 %213, i64* %11, align 8
  br label %214

214:                                              ; preds = %209, %205
  br label %215

215:                                              ; preds = %214
  br label %185

216:                                              ; preds = %198, %192
  %217 = load %struct.entity*, %struct.entity** %14, align 8
  %218 = getelementptr inbounds %struct.entity, %struct.entity* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %216
  %225 = load i32, i32* @PROGIDREDIRECT_SECTION, align 4
  %226 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %227 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %226, i32 0, i32 0
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %225
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %224, %216
  %233 = load i64, i64* %11, align 8
  store i64 %233, i64* %4, align 8
  br label %234

234:                                              ; preds = %232, %182, %155, %70, %56, %42, %24
  %235 = load i64, i64* %4, align 8
  ret i64 %235
}

declare dso_local %struct.entity* @add_entity(i32*, i32) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i8* @xmlstrdupW(i32*) #1

declare dso_local i32 @parse_com_class_threadingmodel(i32*) #1

declare dso_local i8* @parse_com_class_misc(i32*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i64 @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xmlstr_cmp_end(i32*, i32) #1

declare dso_local i64 @parse_end_element(i32*) #1

declare dso_local i64 @parse_com_class_progid(i32*, %struct.entity*) #1

declare dso_local i64 @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
