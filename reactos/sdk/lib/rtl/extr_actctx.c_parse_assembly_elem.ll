; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_assembly_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_assembly_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32 }
%struct.assembly = type { i64, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.assembly_identity = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@manifestVersionW = common dso_local global i8* null, align 8
@parse_assembly_elem.v10W = internal constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"wrong version %wZ\0A\00", align 1
@xmlnsW = common dso_local global i8* null, align 8
@manifestv1W = common dso_local global i8* null, align 8
@manifestv2W = common dso_local global i8* null, align 8
@manifestv3W = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"wrong namespace %wZ\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@APPLICATION_MANIFEST = common dso_local global i64 0, align 8
@noInheritW = common dso_local global i8* null, align 8
@noInheritableW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@ASSEMBLY_MANIFEST = common dso_local global i64 0, align 8
@ASSEMBLY_SHARED_MANIFEST = common dso_local global i64 0, align 8
@assemblyW = common dso_local global i32 0, align 4
@descriptionW = common dso_local global i32 0, align 4
@comInterfaceExternalProxyStubW = common dso_local global i32 0, align 4
@dependencyW = common dso_local global i32 0, align 4
@fileW = common dso_local global i32 0, align 4
@clrClassW = common dso_local global i32 0, align 4
@clrSurrogateW = common dso_local global i32 0, align 4
@trustInfoW = common dso_local global i32 0, align 4
@asmv2W = common dso_local global i32 0, align 4
@assemblyIdentityW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"wrong version for assembly manifest: %u.%u.%u.%u / %u.%u.%u.%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"wrong version for shared assembly manifest\0A\00", align 1
@compatibilityW = common dso_local global i32 0, align 4
@compatibilityNSW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"unknown element %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.actctx_loader*, %struct.assembly*, %struct.assembly_identity*)* @parse_assembly_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_assembly_elem(i32* %0, %struct.actctx_loader* %1, %struct.assembly* %2, %struct.assembly_identity* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca %struct.assembly*, align 8
  %9 = alloca %struct.assembly_identity*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.actctx_loader* %1, %struct.actctx_loader** %7, align 8
  store %struct.assembly* %2, %struct.assembly** %8, align 8
  store %struct.assembly_identity* %3, %struct.assembly_identity** %9, align 8
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** %15, align 8
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %17, align 8
  %22 = load i8*, i8** @FALSE, align 8
  store i8* %22, i8** %18, align 8
  %23 = load i8*, i8** @TRUE, align 8
  store i8* %23, i8** %19, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @DPRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %24)
  br label %26

26:                                               ; preds = %68, %4
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @next_xml_attr(i32* %27, i32* %10, i32* %11, i8** %16, i8** %15)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %31, i32* %13, align 4
  %32 = call i32 @xmlstr2unicode(i32* %11)
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** @manifestVersionW, align 8
  %34 = call i64 @xmlstr_cmp(i32* %10, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = call i64 @xmlstr_cmp(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @parse_assembly_elem.v10W, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  %41 = load i8*, i8** @FALSE, align 8
  store i8* %41, i8** %5, align 8
  br label %405

42:                                               ; preds = %36
  %43 = load i8*, i8** @TRUE, align 8
  store i8* %43, i8** %17, align 8
  br label %68

44:                                               ; preds = %30
  %45 = load i8*, i8** @xmlnsW, align 8
  %46 = call i64 @xmlstr_cmp(i32* %10, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i8*, i8** @manifestv1W, align 8
  %50 = call i64 @xmlstr_cmp(i32* %11, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** @manifestv2W, align 8
  %54 = call i64 @xmlstr_cmp(i32* %11, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** @manifestv3W, align 8
  %58 = call i64 @xmlstr_cmp(i32* %11, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  %62 = load i8*, i8** @FALSE, align 8
  store i8* %62, i8** %5, align 8
  br label %405

63:                                               ; preds = %56, %52, %48
  %64 = load i8*, i8** @TRUE, align 8
  store i8* %64, i8** %18, align 8
  br label %67

65:                                               ; preds = %44
  %66 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %13, i32* %14)
  br label %67

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %42
  br label %26

69:                                               ; preds = %26
  %70 = load i8*, i8** %16, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %15, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %18, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %17, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78, %75, %72, %69
  %82 = load i8*, i8** @FALSE, align 8
  store i8* %82, i8** %5, align 8
  br label %405

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = call i8* @next_xml_elem(i32* %84, i32* %12)
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** @FALSE, align 8
  store i8* %88, i8** %5, align 8
  br label %405

89:                                               ; preds = %83
  %90 = load %struct.assembly*, %struct.assembly** %8, align 8
  %91 = getelementptr inbounds %struct.assembly, %struct.assembly* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @APPLICATION_MANIFEST, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load i8*, i8** @noInheritW, align 8
  %97 = call i64 @xmlstr_cmp(i32* %12, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @parse_noinherit_elem(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = call i8* @next_xml_elem(i32* %104, i32* %12)
  %106 = icmp ne i8* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103, %99
  %108 = load i8*, i8** @FALSE, align 8
  store i8* %108, i8** %5, align 8
  br label %405

109:                                              ; preds = %103
  %110 = load i8*, i8** @TRUE, align 8
  %111 = load %struct.assembly*, %struct.assembly** %8, align 8
  %112 = getelementptr inbounds %struct.assembly, %struct.assembly* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %95, %89
  %114 = load i32, i32* @noInheritableW, align 4
  %115 = load i32, i32* @asmv1W, align 4
  %116 = call i64 @xml_elem_cmp(i32* %12, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @parse_noinheritable_elem(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32*, i32** %6, align 8
  %124 = call i8* @next_xml_elem(i32* %123, i32* %12)
  %125 = icmp ne i8* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %122, %118
  %127 = load i8*, i8** @FALSE, align 8
  store i8* %127, i8** %5, align 8
  br label %405

128:                                              ; preds = %122
  br label %149

129:                                              ; preds = %113
  %130 = load %struct.assembly*, %struct.assembly** %8, align 8
  %131 = getelementptr inbounds %struct.assembly, %struct.assembly* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ASSEMBLY_MANIFEST, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.assembly*, %struct.assembly** %8, align 8
  %137 = getelementptr inbounds %struct.assembly, %struct.assembly* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ASSEMBLY_SHARED_MANIFEST, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135, %129
  %142 = load %struct.assembly*, %struct.assembly** %8, align 8
  %143 = getelementptr inbounds %struct.assembly, %struct.assembly* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i8*, i8** @FALSE, align 8
  store i8* %147, i8** %5, align 8
  br label %405

148:                                              ; preds = %141, %135
  br label %149

149:                                              ; preds = %148, %128
  br label %150

150:                                              ; preds = %402, %149
  %151 = load i8*, i8** %19, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %403

153:                                              ; preds = %150
  %154 = load i32, i32* @assemblyW, align 4
  %155 = load i32, i32* @asmv1W, align 4
  %156 = call i64 @xml_elem_cmp_end(i32* %12, i32 %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32*, i32** %6, align 8
  %160 = call i8* @parse_end_element(i32* %159)
  store i8* %160, i8** %19, align 8
  br label %403

161:                                              ; preds = %153
  %162 = load i32, i32* @descriptionW, align 4
  %163 = load i32, i32* @asmv1W, align 4
  %164 = call i64 @xml_elem_cmp(i32* %12, i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32*, i32** %6, align 8
  %168 = call i8* @parse_description_elem(i32* %167)
  store i8* %168, i8** %19, align 8
  br label %395

169:                                              ; preds = %161
  %170 = load i32, i32* @comInterfaceExternalProxyStubW, align 4
  %171 = load i32, i32* @asmv1W, align 4
  %172 = call i64 @xml_elem_cmp(i32* %12, i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.assembly*, %struct.assembly** %8, align 8
  %177 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %178 = call i8* @parse_com_interface_external_proxy_stub_elem(i32* %175, %struct.assembly* %176, %struct.actctx_loader* %177)
  store i8* %178, i8** %19, align 8
  br label %394

179:                                              ; preds = %169
  %180 = load i32, i32* @dependencyW, align 4
  %181 = load i32, i32* @asmv1W, align 4
  %182 = call i64 @xml_elem_cmp(i32* %12, i32 %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i32*, i32** %6, align 8
  %186 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %187 = call i8* @parse_dependency_elem(i32* %185, %struct.actctx_loader* %186)
  store i8* %187, i8** %19, align 8
  br label %393

188:                                              ; preds = %179
  %189 = load i32, i32* @fileW, align 4
  %190 = load i32, i32* @asmv1W, align 4
  %191 = call i64 @xml_elem_cmp(i32* %12, i32 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i32*, i32** %6, align 8
  %195 = load %struct.assembly*, %struct.assembly** %8, align 8
  %196 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %197 = call i8* @parse_file_elem(i32* %194, %struct.assembly* %195, %struct.actctx_loader* %196)
  store i8* %197, i8** %19, align 8
  br label %392

198:                                              ; preds = %188
  %199 = load i32, i32* @clrClassW, align 4
  %200 = load i32, i32* @asmv1W, align 4
  %201 = call i64 @xml_elem_cmp(i32* %12, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i32*, i32** %6, align 8
  %205 = load %struct.assembly*, %struct.assembly** %8, align 8
  %206 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %207 = call i8* @parse_clr_class_elem(i32* %204, %struct.assembly* %205, %struct.actctx_loader* %206)
  store i8* %207, i8** %19, align 8
  br label %391

208:                                              ; preds = %198
  %209 = load i32, i32* @clrSurrogateW, align 4
  %210 = load i32, i32* @asmv1W, align 4
  %211 = call i64 @xml_elem_cmp(i32* %12, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32*, i32** %6, align 8
  %215 = load %struct.assembly*, %struct.assembly** %8, align 8
  %216 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %217 = call i8* @parse_clr_surrogate_elem(i32* %214, %struct.assembly* %215, %struct.actctx_loader* %216)
  store i8* %217, i8** %19, align 8
  br label %390

218:                                              ; preds = %208
  %219 = load i32, i32* @trustInfoW, align 4
  %220 = load i32, i32* @asmv2W, align 4
  %221 = call i64 @xml_elem_cmp(i32* %12, i32 %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* @trustInfoW, align 4
  %225 = load i32, i32* @asmv1W, align 4
  %226 = call i64 @xml_elem_cmp(i32* %12, i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223, %218
  %229 = load i32*, i32** %6, align 8
  %230 = load %struct.assembly*, %struct.assembly** %8, align 8
  %231 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %232 = call i8* @parse_trust_info_elem(i32* %229, %struct.assembly* %230, %struct.actctx_loader* %231)
  store i8* %232, i8** %19, align 8
  br label %389

233:                                              ; preds = %223
  %234 = load i32, i32* @assemblyIdentityW, align 4
  %235 = load i32, i32* @asmv1W, align 4
  %236 = call i64 @xml_elem_cmp(i32* %12, i32 %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %372

238:                                              ; preds = %233
  %239 = load i32*, i32** %6, align 8
  %240 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %241 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.assembly*, %struct.assembly** %8, align 8
  %244 = getelementptr inbounds %struct.assembly, %struct.assembly* %243, i32 0, i32 1
  %245 = call i32 @parse_assembly_identity_elem(i32* %239, i32 %242, %struct.TYPE_4__* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %238
  %248 = load i8*, i8** @FALSE, align 8
  store i8* %248, i8** %5, align 8
  br label %405

249:                                              ; preds = %238
  %250 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %251 = icmp ne %struct.assembly_identity* %250, null
  br i1 %251, label %252, label %371

252:                                              ; preds = %249
  %253 = load %struct.assembly*, %struct.assembly** %8, align 8
  %254 = getelementptr inbounds %struct.assembly, %struct.assembly* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @ASSEMBLY_MANIFEST, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %305

258:                                              ; preds = %252
  %259 = load %struct.assembly*, %struct.assembly** %8, align 8
  %260 = getelementptr inbounds %struct.assembly, %struct.assembly* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %263 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %262, i32 0, i32 0
  %264 = call i64 @memcmp(%struct.TYPE_5__* %261, %struct.TYPE_6__* %263, i32 24)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %305

266:                                              ; preds = %258
  %267 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %268 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %272 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %276 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %280 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.assembly*, %struct.assembly** %8, align 8
  %284 = getelementptr inbounds %struct.assembly, %struct.assembly* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.assembly*, %struct.assembly** %8, align 8
  %289 = getelementptr inbounds %struct.assembly, %struct.assembly* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.assembly*, %struct.assembly** %8, align 8
  %294 = getelementptr inbounds %struct.assembly, %struct.assembly* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.assembly*, %struct.assembly** %8, align 8
  %299 = getelementptr inbounds %struct.assembly, %struct.assembly* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %270, i32 %274, i64 %278, i64 %282, i32 %287, i32 %292, i64 %297, i64 %302)
  %304 = load i8*, i8** @FALSE, align 8
  store i8* %304, i8** %19, align 8
  br label %370

305:                                              ; preds = %258, %252
  %306 = load %struct.assembly*, %struct.assembly** %8, align 8
  %307 = getelementptr inbounds %struct.assembly, %struct.assembly* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @ASSEMBLY_SHARED_MANIFEST, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %369

311:                                              ; preds = %305
  %312 = load %struct.assembly*, %struct.assembly** %8, align 8
  %313 = getelementptr inbounds %struct.assembly, %struct.assembly* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %318 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %316, %320
  br i1 %321, label %366, label %322

322:                                              ; preds = %311
  %323 = load %struct.assembly*, %struct.assembly** %8, align 8
  %324 = getelementptr inbounds %struct.assembly, %struct.assembly* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %329 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %327, %331
  br i1 %332, label %366, label %333

333:                                              ; preds = %322
  %334 = load %struct.assembly*, %struct.assembly** %8, align 8
  %335 = getelementptr inbounds %struct.assembly, %struct.assembly* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %340 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp slt i64 %338, %342
  br i1 %343, label %366, label %344

344:                                              ; preds = %333
  %345 = load %struct.assembly*, %struct.assembly** %8, align 8
  %346 = getelementptr inbounds %struct.assembly, %struct.assembly* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %351 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp eq i64 %349, %353
  br i1 %354, label %355, label %369

355:                                              ; preds = %344
  %356 = load %struct.assembly*, %struct.assembly** %8, align 8
  %357 = getelementptr inbounds %struct.assembly, %struct.assembly* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %362 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp slt i64 %360, %364
  br i1 %365, label %366, label %369

366:                                              ; preds = %355, %333, %322, %311
  %367 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %368 = load i8*, i8** @FALSE, align 8
  store i8* %368, i8** %19, align 8
  br label %369

369:                                              ; preds = %366, %355, %344, %305
  br label %370

370:                                              ; preds = %369, %266
  br label %371

371:                                              ; preds = %370, %249
  br label %388

372:                                              ; preds = %233
  %373 = load i32, i32* @compatibilityW, align 4
  %374 = load i32, i32* @compatibilityNSW, align 4
  %375 = call i64 @xml_elem_cmp(i32* %12, i32 %373, i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %372
  %378 = load i32*, i32** %6, align 8
  %379 = load %struct.assembly*, %struct.assembly** %8, align 8
  %380 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %381 = call i8* @parse_compatibility_elem(i32* %378, %struct.assembly* %379, %struct.actctx_loader* %380)
  store i8* %381, i8** %19, align 8
  br label %387

382:                                              ; preds = %372
  %383 = call i32 @xmlstr2unicode(i32* %12)
  store i32 %383, i32* %13, align 4
  %384 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %13)
  %385 = load i32*, i32** %6, align 8
  %386 = call i8* @parse_unknown_elem(i32* %385, i32* %12)
  store i8* %386, i8** %19, align 8
  br label %387

387:                                              ; preds = %382, %377
  br label %388

388:                                              ; preds = %387, %371
  br label %389

389:                                              ; preds = %388, %228
  br label %390

390:                                              ; preds = %389, %213
  br label %391

391:                                              ; preds = %390, %203
  br label %392

392:                                              ; preds = %391, %193
  br label %393

393:                                              ; preds = %392, %184
  br label %394

394:                                              ; preds = %393, %174
  br label %395

395:                                              ; preds = %394, %166
  br label %396

396:                                              ; preds = %395
  %397 = load i8*, i8** %19, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load i32*, i32** %6, align 8
  %401 = call i8* @next_xml_elem(i32* %400, i32* %12)
  store i8* %401, i8** %19, align 8
  br label %402

402:                                              ; preds = %399, %396
  br label %150

403:                                              ; preds = %158, %150
  %404 = load i8*, i8** %19, align 8
  store i8* %404, i8** %5, align 8
  br label %405

405:                                              ; preds = %403, %247, %146, %126, %107, %87, %81, %60, %39
  %406 = load i8*, i8** %5, align 8
  ret i8* %406
}

declare dso_local i32 @DPRINT(i8*, i32*) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i8**, i8**) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i8*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i8* @next_xml_elem(i32*, i32*) #1

declare dso_local i32 @parse_noinherit_elem(i32*) #1

declare dso_local i64 @xml_elem_cmp(i32*, i32, i32) #1

declare dso_local i32 @parse_noinheritable_elem(i32*) #1

declare dso_local i64 @xml_elem_cmp_end(i32*, i32, i32) #1

declare dso_local i8* @parse_end_element(i32*) #1

declare dso_local i8* @parse_description_elem(i32*) #1

declare dso_local i8* @parse_com_interface_external_proxy_stub_elem(i32*, %struct.assembly*, %struct.actctx_loader*) #1

declare dso_local i8* @parse_dependency_elem(i32*, %struct.actctx_loader*) #1

declare dso_local i8* @parse_file_elem(i32*, %struct.assembly*, %struct.actctx_loader*) #1

declare dso_local i8* @parse_clr_class_elem(i32*, %struct.assembly*, %struct.actctx_loader*) #1

declare dso_local i8* @parse_clr_surrogate_elem(i32*, %struct.assembly*, %struct.actctx_loader*) #1

declare dso_local i8* @parse_trust_info_elem(i32*, %struct.assembly*, %struct.actctx_loader*) #1

declare dso_local i32 @parse_assembly_identity_elem(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @memcmp(%struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @parse_compatibility_elem(i32*, %struct.assembly*, %struct.actctx_loader*) #1

declare dso_local i8* @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
