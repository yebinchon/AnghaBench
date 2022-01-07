; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_INTERNET_LoadProxySettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_INTERNET_LoadProxySettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i8* }

@WININET_cs = common dso_local global i32 0, align 4
@global_proxy = common dso_local global %struct.TYPE_8__* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@szInternetSettings = common dso_local global i32 0, align 4
@szProxyEnable = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@szProxyServer = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i64 0, align 8
@INTERNET_LoadProxySettings.szHttp = internal constant [6 x i8] c"http=\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"http proxy (from registry) = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"No proxy server settings in registry.\0A\00", align 1
@CP_UNIXCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"http proxy (from environment) = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to parse http_proxy value %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Proxy is enabled.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@szProxyOverride = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"http proxy bypass (from registry) = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"No proxy bypass server settings in registry.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"http proxy bypass (from environment) = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Proxy is disabled.\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @INTERNET_LoadProxySettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @INTERNET_LoadProxySettings(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @memset(%struct.TYPE_7__* %14, i32 0, i32 24)
  %16 = call i32 @EnterCriticalSection(i32* @WININET_cs)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @global_proxy, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @global_proxy, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @global_proxy, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @heap_strdupW(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @global_proxy, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @heap_strdupW(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %19, %1
  %38 = call i32 @LeaveCriticalSection(i32* @WININET_cs)
  %39 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %40 = load i32, i32* @szInternetSettings, align 4
  %41 = call i32 @RegOpenKeyW(i32 %39, i32 %40, i32* %4)
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = call i32 @FreeProxyInfo(%struct.TYPE_7__* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %296

47:                                               ; preds = %37
  store i64 8, i64* %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @szProxyEnable, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = call i64 @RegQueryValueExW(i32 %48, i32 %49, i32* null, i64* %5, i32* %51, i64* %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @REG_DWORD, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54, %47
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @szProxyEnable, align 4
  %63 = load i64, i64* @REG_DWORD, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = call i32 @RegSetValueExW(i32 %61, i32 %62, i32 0, i64 %63, i32* %65, i32 8)
  store i32 %66, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = call i32 @FreeProxyInfo(%struct.TYPE_7__* %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @RegCloseKey(i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %296

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %54
  %76 = call i64 @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %76, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %152

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @szProxyServer, align 4
  %86 = call i64 @RegQueryValueExW(i32 %84, i32 %85, i32* null, i64* %5, i32* null, i64* %6)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %143, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %6, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %143

91:                                               ; preds = %88
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @REG_SZ, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %143

95:                                               ; preds = %91
  %96 = load i64, i64* %6, align 8
  %97 = call i8* @heap_alloc(i64 %96)
  store i8* %97, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @RegCloseKey(i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = call i32 @FreeProxyInfo(%struct.TYPE_7__* %102)
  %104 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %104, i32* %2, align 4
  br label %296

105:                                              ; preds = %95
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @szProxyServer, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = call i64 @RegQueryValueExW(i32 %106, i32 %107, i32* null, i64* %5, i32* %109, i64* %6)
  %111 = load i8*, i8** %9, align 8
  %112 = call i8* @strstrW(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @INTERNET_LoadProxySettings.szHttp, i64 0, i64 0))
  store i8* %112, i8** %10, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = call i32 @lstrlenW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @INTERNET_LoadProxySettings.szHttp, i64 0, i64 0))
  %117 = load i8*, i8** %10, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %10, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @lstrcpyW(i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %115, %105
  %124 = load i8*, i8** %9, align 8
  %125 = call i8* @strchrW(i8* %124, i8 signext 59)
  store i8* %125, i8** %10, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i8*, i8** %10, align 8
  store i8 0, i8* %129, align 1
  br label %130

130:                                              ; preds = %128, %123
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = call i32 @FreeProxyInfo(%struct.TYPE_7__* %131)
  %133 = load i8*, i8** %9, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i8* null, i8** %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @debugstr_w(i8* %140)
  %142 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %151

143:                                              ; preds = %91, %88, %83
  %144 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = call i32 @FreeProxyInfo(%struct.TYPE_7__* %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i8* null, i8** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i8* null, i8** %150, align 8
  br label %151

151:                                              ; preds = %143, %130
  br label %203

152:                                              ; preds = %78
  %153 = load i64, i64* %7, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %202

155:                                              ; preds = %152
  %156 = load i32, i32* @CP_UNIXCP, align 4
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @MultiByteToWideChar(i32 %156, i32 0, i64 %157, i32 -1, i8* null, i64 0)
  store i64 %158, i64* %6, align 8
  %159 = load i64, i64* %6, align 8
  %160 = mul i64 %159, 1
  %161 = call i8* @heap_alloc(i64 %160)
  store i8* %161, i8** %11, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @RegCloseKey(i32 %164)
  %166 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %166, i32* %2, align 4
  br label %296

167:                                              ; preds = %155
  %168 = load i32, i32* @CP_UNIXCP, align 4
  %169 = load i64, i64* %7, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i64 @MultiByteToWideChar(i32 %168, i32 0, i64 %169, i32 -1, i8* %170, i64 %171)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = call i32 @FreeProxyInfo(%struct.TYPE_7__* %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = call i64 @parse_proxy_url(%struct.TYPE_7__* %175, i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %167
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @debugstr_w(i8* %182)
  %184 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  store i8* null, i8** %188, align 8
  br label %199

189:                                              ; preds = %167
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @debugstr_w(i8* %190)
  %192 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  store i8* null, i8** %196, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  store i8* null, i8** %198, align 8
  br label %199

199:                                              ; preds = %189, %179
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 @heap_free(i8* %200)
  br label %202

202:                                              ; preds = %199, %152
  br label %203

203:                                              ; preds = %202, %151
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %290

208:                                              ; preds = %203
  %209 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %210 = call i64 @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i64 %210, i64* %7, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %259, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @szProxyOverride, align 4
  %215 = call i64 @RegQueryValueExW(i32 %213, i32 %214, i32* null, i64* %5, i32* null, i64* %6)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %250, label %217

217:                                              ; preds = %212
  %218 = load i64, i64* %6, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %250

220:                                              ; preds = %217
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* @REG_SZ, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %250

224:                                              ; preds = %220
  %225 = load i64, i64* %6, align 8
  %226 = call i8* @heap_alloc(i64 %225)
  store i8* %226, i8** %12, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @RegCloseKey(i32 %229)
  %231 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %231, i32* %2, align 4
  br label %296

232:                                              ; preds = %224
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @szProxyOverride, align 4
  %235 = load i8*, i8** %12, align 8
  %236 = bitcast i8* %235 to i32*
  %237 = call i64 @RegQueryValueExW(i32 %233, i32 %234, i32* null, i64* %5, i32* %236, i64* %6)
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @heap_free(i8* %240)
  %242 = load i8*, i8** %12, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @debugstr_w(i8* %247)
  %249 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %248)
  br label %258

250:                                              ; preds = %220, %217, %212
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @heap_free(i8* %253)
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store i8* null, i8** %256, align 8
  %257 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %258

258:                                              ; preds = %250, %232
  br label %289

259:                                              ; preds = %208
  %260 = load i32, i32* @CP_UNIXCP, align 4
  %261 = load i64, i64* %7, align 8
  %262 = call i64 @MultiByteToWideChar(i32 %260, i32 0, i64 %261, i32 -1, i8* null, i64 0)
  store i64 %262, i64* %6, align 8
  %263 = load i64, i64* %6, align 8
  %264 = mul i64 %263, 1
  %265 = call i8* @heap_alloc(i64 %264)
  store i8* %265, i8** %13, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %259
  %268 = load i32, i32* %4, align 4
  %269 = call i32 @RegCloseKey(i32 %268)
  %270 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %270, i32* %2, align 4
  br label %296

271:                                              ; preds = %259
  %272 = load i32, i32* @CP_UNIXCP, align 4
  %273 = load i64, i64* %7, align 8
  %274 = load i8*, i8** %13, align 8
  %275 = load i64, i64* %6, align 8
  %276 = call i64 @MultiByteToWideChar(i32 %272, i32 0, i64 %273, i32 -1, i8* %274, i64 %275)
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @heap_free(i8* %279)
  %281 = load i8*, i8** %13, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 2
  store i8* %281, i8** %283, align 8
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @debugstr_w(i8* %286)
  %288 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %271, %258
  br label %292

290:                                              ; preds = %203
  %291 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %292

292:                                              ; preds = %290, %289
  %293 = load i32, i32* %4, align 4
  %294 = call i32 @RegCloseKey(i32 %293)
  %295 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %292, %267, %228, %163, %99, %68, %43
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i8* @heap_strdupW(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i32 @FreeProxyInfo(%struct.TYPE_7__*) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i8* @heap_alloc(i64) #1

declare dso_local i8* @strstrW(i8*, i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @MultiByteToWideChar(i32, i32, i64, i32, i8*, i64) #1

declare dso_local i64 @parse_proxy_url(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
