; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_script.c_call_script.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_script.c_call_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }

@ERROR_INSTALL_FAILURE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@msidbCustomActionTypeJScript = common dso_local global i32 0, align 4
@msidbCustomActionTypeVBScript = common dso_local global i32 0, align 4
@szJScript = common dso_local global i32 0, align 4
@szVBScript = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown script type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not find CLSID for Windows Script\0A\00", align 1
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IActiveScript = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Could not instantiate class for Windows Script\0A\00", align 1
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@szSession = common dso_local global i32 0, align 4
@SCRIPTITEM_GLOBALMEMBERS = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@SCRIPTSTATE_CONNECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Calling function %s\0A\00", align 1
@IID_NULL = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@VT_I4 = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_script(i32 %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %15, align 8
  %21 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load i32, i32* @ERROR_INSTALL_FAILURE, align 4
  store i32 %22, i32* %20, align 4
  %23 = call i32 @CoInitialize(i32* null)
  %24 = call i64 @create_activescriptsite(%struct.TYPE_5__** %14)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %190

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = bitcast i32** %31 to i8**
  %33 = call i64 @create_msiserver(i32* null, i8** %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %190

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = call i64 @create_session(i32 %39, i32* %42, i32** %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %190

50:                                               ; preds = %38
  %51 = load i32, i32* @msidbCustomActionTypeJScript, align 4
  %52 = load i32, i32* @msidbCustomActionTypeVBScript, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @msidbCustomActionTypeJScript, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @szJScript, align 4
  %61 = call i64 @CLSIDFromProgID(i32 %60, i32* %18)
  store i64 %61, i64* %11, align 8
  br label %73

62:                                               ; preds = %50
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @msidbCustomActionTypeVBScript, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @szVBScript, align 4
  %68 = call i64 @CLSIDFromProgID(i32 %67, i32* %18)
  store i64 %68, i64* %11, align 8
  br label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %190

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @FAILED(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %190

79:                                               ; preds = %73
  %80 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %81 = bitcast i32** %12 to i8**
  %82 = call i64 @CoCreateInstance(i32* %18, i32* null, i32 %80, i32* @IID_IActiveScript, i8** %81)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @FAILED(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %190

88:                                               ; preds = %79
  %89 = load i32*, i32** %12, align 8
  %90 = bitcast i32** %13 to i8**
  %91 = call i64 @IActiveScript_QueryInterface(i32* %89, i32* @IID_IActiveScriptParse, i8** %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i64 @FAILED(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %190

96:                                               ; preds = %88
  %97 = load i32*, i32** %12, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = call i64 @IActiveScript_SetScriptSite(i32* %97, i32* %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @FAILED(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %190

105:                                              ; preds = %96
  %106 = load i32*, i32** %13, align 8
  %107 = call i64 @IActiveScriptParse_InitNew(i32* %106)
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i64 @FAILED(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %190

112:                                              ; preds = %105
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* @szSession, align 4
  %115 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %116 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %117 = or i32 %115, %116
  %118 = call i64 @IActiveScript_AddNamedItem(i32* %113, i32 %114, i32 %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @FAILED(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %190

123:                                              ; preds = %112
  %124 = load i32*, i32** %13, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = call i64 @IActiveScriptParse_ParseScriptText(i32* %124, i64* %125, i32* null, i32* null, i32* null, i32 0, i32 0, i64 0, i32* null, i32* null)
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @FAILED(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %190

131:                                              ; preds = %123
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* @SCRIPTSTATE_CONNECTED, align 4
  %134 = call i64 @IActiveScript_SetScriptState(i32* %132, i32 %133)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i64 @FAILED(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %190

139:                                              ; preds = %131
  %140 = load i64*, i64** %9, align 8
  %141 = icmp ne i64* %140, null
  br i1 %141, label %142, label %187

142:                                              ; preds = %139
  %143 = load i64*, i64** %9, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %187

147:                                              ; preds = %142
  %148 = load i64*, i64** %9, align 8
  %149 = call i32 @debugstr_w(i64* %148)
  %150 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %12, align 8
  %152 = call i64 @IActiveScript_GetScriptDispatch(i32* %151, i32* null, i32** %15)
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i64 @FAILED(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %190

157:                                              ; preds = %147
  %158 = load i32*, i32** %15, align 8
  %159 = bitcast i64** %9 to i32**
  %160 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %161 = call i64 @IDispatch_GetIDsOfNames(i32* %158, i32* @IID_NULL, i32** %159, i32 1, i32 %160, i32* %17)
  store i64 %161, i64* %11, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i64 @FAILED(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %190

166:                                              ; preds = %157
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %170 = load i32, i32* @DISPATCH_METHOD, align 4
  %171 = call i64 @IDispatch_Invoke(i32* %167, i32 %168, i32* @IID_NULL, i32 %169, i32 %170, %struct.TYPE_6__* %16, i32* %19, i32* null, i32* null)
  store i64 %171, i64* %11, align 8
  %172 = load i64, i64* %11, align 8
  %173 = call i64 @FAILED(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %190

176:                                              ; preds = %166
  %177 = load i32, i32* @VT_I4, align 4
  %178 = call i64 @VariantChangeType(i32* %19, i32* %19, i32 0, i32 %177)
  store i64 %178, i64* %11, align 8
  %179 = load i64, i64* %11, align 8
  %180 = call i64 @FAILED(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %190

183:                                              ; preds = %176
  %184 = call i32 @V_I4(i32* %19)
  %185 = call i32 @map_return_value(i32 %184)
  store i32 %185, i32* %20, align 4
  %186 = call i32 @VariantClear(i32* %19)
  br label %189

187:                                              ; preds = %142, %139
  %188 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %188, i32* %20, align 4
  br label %189

189:                                              ; preds = %187, %183
  br label %190

190:                                              ; preds = %189, %182, %175, %165, %156, %138, %130, %122, %111, %104, %95, %86, %77, %69, %49, %37, %28
  %191 = load i32*, i32** %15, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @IDispatch_Release(i32* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32*, i32** %12, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @IActiveScript_Release(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32*, i32** %13, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32*, i32** %13, align 8
  %207 = call i32 @IActiveScriptParse_Release(i32* %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %210 = icmp ne %struct.TYPE_5__* %209, null
  br i1 %210, label %211, label %235

211:                                              ; preds = %208
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @IDispatch_Release(i32* %219)
  br label %221

221:                                              ; preds = %216, %211
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @IDispatch_Release(i32* %229)
  br label %231

231:                                              ; preds = %226, %221
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = call i32 @IActiveScriptSite_Release(i32* %233)
  br label %235

235:                                              ; preds = %231, %208
  %236 = call i32 (...) @CoUninitialize()
  %237 = load i32, i32* %20, align 4
  ret i32 %237
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CoInitialize(i32*) #2

declare dso_local i64 @create_activescriptsite(%struct.TYPE_5__**) #2

declare dso_local i64 @create_msiserver(i32*, i8**) #2

declare dso_local i64 @create_session(i32, i32*, i32**) #2

declare dso_local i64 @CLSIDFromProgID(i32, i32*) #2

declare dso_local i32 @ERR(i8*, ...) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #2

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #2

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #2

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i64*, i32*, i32*, i32*, i32, i32, i64, i32*, i32*) #2

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i64*) #2

declare dso_local i64 @IActiveScript_GetScriptDispatch(i32*, i32*, i32**) #2

declare dso_local i64 @IDispatch_GetIDsOfNames(i32*, i32*, i32**, i32, i32, i32*) #2

declare dso_local i64 @IDispatch_Invoke(i32*, i32, i32*, i32, i32, %struct.TYPE_6__*, i32*, i32*, i32*) #2

declare dso_local i64 @VariantChangeType(i32*, i32*, i32, i32) #2

declare dso_local i32 @map_return_value(i32) #2

declare dso_local i32 @V_I4(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @IDispatch_Release(i32*) #2

declare dso_local i32 @IActiveScript_Release(i32*) #2

declare dso_local i32 @IActiveScriptParse_Release(i32*) #2

declare dso_local i32 @IActiveScriptSite_Release(i32*) #2

declare dso_local i32 @CoUninitialize(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
