; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_handle_http_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_handle_http_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%p %u)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@IID_IServiceProvider = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get IServiceProvider.\0A\00", align 1
@E_ABORT = common dso_local global i32 0, align 4
@IID_IHttpSecurity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"OnSecurityProblem returned %08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@SECURITY_FLAG_IGNORE_CERT_DATE_INVALID = common dso_local global i32 0, align 4
@SECURITY_FLAG_IGNORE_CERT_CN_INVALID = common dso_local global i32 0, align 4
@SECURITY_FLAG_IGNORE_UNKNOWN_CA = common dso_local global i32 0, align 4
@RPC_E_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Don't know how to ignore error %d\0A\00", align 1
@SECURITY_FLAG_IGNORE_REVOCATION = common dso_local global i32 0, align 4
@IID_IWindowForBindingUI = common dso_local global i32 0, align 4
@ERROR_INTERNET_INCORRECT_PASSWORD = common dso_local global i32 0, align 4
@IID_IAuthenticate = common dso_local global i32 0, align 4
@FLAGS_ERROR_UI_FLAGS_CHANGE_OPTIONS = common dso_local global i32 0, align 4
@FLAGS_ERROR_UI_FLAGS_GENERATE_DATA = common dso_local global i32 0, align 4
@BINDF_NO_UI = common dso_local global i32 0, align 4
@FLAGS_ERROR_UI_FLAGS_NO_UI = common dso_local global i32 0, align 4
@ERROR_INTERNET_FORCE_RETRY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @handle_http_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_http_error(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, %struct.TYPE_7__*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %22 [
    i32 133, label %20
    i32 134, label %20
    i32 136, label %20
    i32 137, label %20
    i32 135, label %20
    i32 138, label %20
    i32 128, label %20
    i32 132, label %20
    i32 129, label %20
    i32 131, label %20
    i32 130, label %20
    i32 139, label %20
  ]

20:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %9, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = bitcast i32** %6 to i8**
  %30 = call i32 @IInternetProtocolSink_QueryInterface(i32 %28, i32* @IID_IServiceProvider, i8** %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @E_ABORT, align 4
  store i32 %36, i32* %3, align 4
  br label %199

37:                                               ; preds = %24
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %116

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = bitcast i32** %8 to i8**
  %43 = call i32 @IServiceProvider_QueryService(i32* %41, i32* @IID_IHttpSecurity, i32* @IID_IHttpSecurity, i8** %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @SUCCEEDED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %115

47:                                               ; preds = %40
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @IHttpSecurity_OnSecurityProblem(i32* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @IHttpSecurity_Release(i32* %51)
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_7__*
  %56 = call i32 (i8*, %struct.TYPE_7__*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %55)
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @S_FALSE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %114

60:                                               ; preds = %47
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @IServiceProvider_Release(i32* %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @S_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 133
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = load i32, i32* @SECURITY_FLAG_IGNORE_CERT_DATE_INVALID, align 4
  %73 = call i64 @set_security_flag(%struct.TYPE_7__* %71, i32 %72)
  store i64 %73, i64* %14, align 8
  br label %90

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 134
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = load i32, i32* @SECURITY_FLAG_IGNORE_CERT_CN_INVALID, align 4
  %80 = call i64 @set_security_flag(%struct.TYPE_7__* %78, i32 %79)
  store i64 %80, i64* %14, align 8
  br label %89

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 135
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = load i32, i32* @SECURITY_FLAG_IGNORE_UNKNOWN_CA, align 4
  %87 = call i64 @set_security_flag(%struct.TYPE_7__* %85, i32 %86)
  store i64 %87, i64* %14, align 8
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i64, i64* %14, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @RPC_E_RETRY, align 4
  store i32 %94, i32* %3, align 4
  br label %199

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @E_ABORT, align 4
  store i32 %98, i32* %3, align 4
  br label %199

99:                                               ; preds = %60
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @E_ABORT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @E_ABORT, align 4
  store i32 %104, i32* %3, align 4
  br label %199

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @RPC_E_RETRY, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @RPC_E_RETRY, align 4
  store i32 %110, i32* %3, align 4
  br label %199

111:                                              ; preds = %105
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @internet_error_to_hres(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %199

114:                                              ; preds = %47
  br label %115

115:                                              ; preds = %114, %40
  br label %116

116:                                              ; preds = %115, %37
  %117 = load i32, i32* %5, align 4
  switch i32 %117, label %128 [
    i32 129, label %118
  ]

118:                                              ; preds = %116
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @S_FALSE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = load i32, i32* @SECURITY_FLAG_IGNORE_REVOCATION, align 4
  %125 = call i64 @set_security_flag(%struct.TYPE_7__* %123, i32 %124)
  %126 = load i32, i32* @RPC_E_RETRY, align 4
  store i32 %126, i32* %13, align 4
  br label %195

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %116, %127
  %129 = load i32*, i32** %6, align 8
  %130 = bitcast i32** %7 to i8**
  %131 = call i32 @IServiceProvider_QueryService(i32* %129, i32* @IID_IWindowForBindingUI, i32* @IID_IWindowForBindingUI, i8** %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i64 @SUCCEEDED(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32* @IID_IHttpSecurity, i32** %15, align 8
  br label %146

139:                                              ; preds = %135
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @ERROR_INTERNET_INCORRECT_PASSWORD, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32* @IID_IAuthenticate, i32** %15, align 8
  br label %145

144:                                              ; preds = %139
  store i32* @IID_IWindowForBindingUI, i32** %15, align 8
  br label %145

145:                                              ; preds = %144, %143
  br label %146

146:                                              ; preds = %145, %138
  %147 = load i32*, i32** %7, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @IWindowForBindingUI_GetWindow(i32* %147, i32* %148, i32** %11)
  store i32 %149, i32* %13, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @IWindowForBindingUI_Release(i32* %150)
  br label %152

152:                                              ; preds = %146, %128
  %153 = load i32, i32* %13, align 4
  %154 = call i64 @FAILED(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i32* null, i32** %11, align 8
  br label %157

157:                                              ; preds = %156, %152
  %158 = load i32, i32* @FLAGS_ERROR_UI_FLAGS_CHANGE_OPTIONS, align 4
  %159 = load i32, i32* @FLAGS_ERROR_UI_FLAGS_GENERATE_DATA, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %10, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @BINDF_NO_UI, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %157
  %169 = load i32, i32* @FLAGS_ERROR_UI_FLAGS_NO_UI, align 4
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %168, %157
  %173 = load i32*, i32** %11, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @InternetErrorDlg(i32* %173, i32 %177, i32 %178, i32 %179, i32* null)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @ERROR_INTERNET_FORCE_RETRY, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @ERROR_SUCCESS, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184, %172
  %189 = load i32, i32* @RPC_E_RETRY, align 4
  br label %193

190:                                              ; preds = %184
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @internet_error_to_hres(i32 %191)
  br label %193

193:                                              ; preds = %190, %188
  %194 = phi i32 [ %189, %188 ], [ %192, %190 ]
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %193, %122
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @IServiceProvider_Release(i32* %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %195, %111, %109, %103, %95, %93, %34
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*, ...) #1

declare dso_local i32 @IInternetProtocolSink_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @IServiceProvider_QueryService(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IHttpSecurity_OnSecurityProblem(i32*, i32) #1

declare dso_local i32 @IHttpSecurity_Release(i32*) #1

declare dso_local i32 @IServiceProvider_Release(i32*) #1

declare dso_local i64 @set_security_flag(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @internet_error_to_hres(i32) #1

declare dso_local i32 @IWindowForBindingUI_GetWindow(i32*, i32*, i32**) #1

declare dso_local i32 @IWindowForBindingUI_Release(i32*) #1

declare dso_local i32 @InternetErrorDlg(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
