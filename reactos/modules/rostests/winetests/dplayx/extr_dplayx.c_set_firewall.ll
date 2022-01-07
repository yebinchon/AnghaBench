; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_set_firewall.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_set_firewall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_firewall.dplaysvrW = internal constant [13 x i8] c"dplaysvr.exe\00", align 1
@set_firewall.separator = internal constant [2 x i8] c"\\\00", align 1
@set_firewall.clientW = internal constant [13 x i8] c"dplay_client\00", align 1
@set_firewall.serverW = internal constant [13 x i8] c"dplay_server\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@CLSID_NetFwMgr = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_INetFwMgr = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@CLSID_NetFwAuthorizedApplication = common dso_local global i32 0, align 4
@IID_INetFwAuthorizedApplication = common dso_local global i32 0, align 4
@APP_ADD = common dso_local global i32 0, align 4
@APP_REMOVE = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @set_firewall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_firewall(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i32 @SysAllocStringLen(i32* null, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = call i32 @GetModuleFileNameW(i32* null, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @SysFreeString(i32 %27)
  %29 = load i64, i64* @E_FAIL, align 8
  store i64 %29, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %256

30:                                               ; preds = %1
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = call i32 @GetSystemDirectoryW(i8* %21, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @SysFreeString(i32 %35)
  %37 = load i64, i64* @E_FAIL, align 8
  store i64 %37, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %256

38:                                               ; preds = %30
  %39 = call i32 @lstrcatW(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @set_firewall.separator, i64 0, i64 0))
  %40 = call i32 @lstrcatW(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @set_firewall.dplaysvrW, i64 0, i64 0))
  %41 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %42 = call i64 @CoInitializeEx(i32 0, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %44 = bitcast i32** %6 to i8**
  %45 = call i64 @CoCreateInstance(i32* @CLSID_NetFwMgr, i32* null, i32 %43, i32* @IID_INetFwMgr, i8** %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %216

56:                                               ; preds = %38
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @INetFwMgr_get_LocalPolicy(i32* %57, i32** %7)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %216

69:                                               ; preds = %56
  %70 = load i32*, i32** %7, align 8
  %71 = call i64 @INetFwPolicy_get_CurrentProfile(i32* %70, i32** %8)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %216

76:                                               ; preds = %69
  %77 = load i32*, i32** %8, align 8
  %78 = call i64 @INetFwProfile_get_AuthorizedApplications(i32* %77, i32** %10)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %83)
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %216

89:                                               ; preds = %76
  %90 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %91 = bitcast i32** %9 to i8**
  %92 = call i64 @CoCreateInstance(i32* @CLSID_NetFwAuthorizedApplication, i32* null, i32 %90, i32* @IID_INetFwAuthorizedApplication, i8** %91)
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @S_OK, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %97)
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %216

103:                                              ; preds = %89
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i64 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32* %104, i32 %105)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %216

111:                                              ; preds = %103
  %112 = call i32 @SysAllocString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @set_firewall.clientW, i64 0, i64 0))
  store i32 %112, i32* %11, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @INetFwAuthorizedApplication_put_Name(i32* %113, i32 %114)
  store i64 %115, i64* %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @SysFreeString(i32 %116)
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %122)
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  br label %216

128:                                              ; preds = %111
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @APP_ADD, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32*, i32** %10, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i64 @INetFwAuthorizedApplications_Add(i32* %133, i32* %134)
  store i64 %135, i64* %4, align 8
  br label %147

136:                                              ; preds = %128
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @APP_REMOVE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i64 @INetFwAuthorizedApplications_Remove(i32* %141, i32 %142)
  store i64 %143, i64* %4, align 8
  br label %146

144:                                              ; preds = %136
  %145 = load i64, i64* @E_INVALIDARG, align 8
  store i64 %145, i64* %4, align 8
  br label %146

146:                                              ; preds = %144, %140
  br label %147

147:                                              ; preds = %146, %132
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* @S_OK, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %216

152:                                              ; preds = %147
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @INetFwAuthorizedApplication_Release(i32* %153)
  %155 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %156 = bitcast i32** %9 to i8**
  %157 = call i64 @CoCreateInstance(i32* @CLSID_NetFwAuthorizedApplication, i32* null, i32 %155, i32* @IID_INetFwAuthorizedApplication, i8** %156)
  store i64 %157, i64* %4, align 8
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* @S_OK, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @ok(i32 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %162)
  %164 = load i64, i64* %4, align 8
  %165 = load i64, i64* @S_OK, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %152
  br label %216

168:                                              ; preds = %152
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @SysFreeString(i32 %169)
  %171 = call i32 @SysAllocString(i8* %21)
  store i32 %171, i32* %12, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %12, align 4
  %174 = call i64 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32* %172, i32 %173)
  store i64 %174, i64* %4, align 8
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* @S_OK, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %216

179:                                              ; preds = %168
  %180 = call i32 @SysAllocString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @set_firewall.serverW, i64 0, i64 0))
  store i32 %180, i32* %11, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i64 @INetFwAuthorizedApplication_put_Name(i32* %181, i32 %182)
  store i64 %183, i64* %4, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @SysFreeString(i32 %184)
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* @S_OK, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i64, i64* %4, align 8
  %191 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %190)
  %192 = load i64, i64* %4, align 8
  %193 = load i64, i64* @S_OK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %179
  br label %216

196:                                              ; preds = %179
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @APP_ADD, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load i32*, i32** %10, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = call i64 @INetFwAuthorizedApplications_Add(i32* %201, i32* %202)
  store i64 %203, i64* %4, align 8
  br label %215

204:                                              ; preds = %196
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @APP_REMOVE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i32*, i32** %10, align 8
  %210 = load i32, i32* %12, align 4
  %211 = call i64 @INetFwAuthorizedApplications_Remove(i32* %209, i32 %210)
  store i64 %211, i64* %4, align 8
  br label %214

212:                                              ; preds = %204
  %213 = load i64, i64* @E_INVALIDARG, align 8
  store i64 %213, i64* %4, align 8
  br label %214

214:                                              ; preds = %212, %208
  br label %215

215:                                              ; preds = %214, %200
  br label %216

216:                                              ; preds = %215, %195, %178, %167, %151, %127, %110, %102, %88, %75, %68, %55
  %217 = load i32*, i32** %9, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32*, i32** %9, align 8
  %221 = call i32 @INetFwAuthorizedApplication_Release(i32* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32*, i32** %10, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32*, i32** %10, align 8
  %227 = call i32 @INetFwAuthorizedApplications_Release(i32* %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32*, i32** %7, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @INetFwPolicy_Release(i32* %232)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i32*, i32** %8, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 @INetFwProfile_Release(i32* %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32*, i32** %6, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32*, i32** %6, align 8
  %245 = call i32 @INetFwMgr_Release(i32* %244)
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i64, i64* %5, align 8
  %248 = call i64 @SUCCEEDED(i64 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = call i32 (...) @CoUninitialize()
  br label %252

252:                                              ; preds = %250, %246
  %253 = load i32, i32* %12, align 4
  %254 = call i32 @SysFreeString(i32 %253)
  %255 = load i64, i64* %4, align 8
  store i64 %255, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %256

256:                                              ; preds = %252, %34, %26
  %257 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %257)
  %258 = load i64, i64* %2, align 8
  ret i64 %258
}

declare dso_local i32 @SysAllocStringLen(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetModuleFileNameW(i32*, i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i64 @CoInitializeEx(i32, i32) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @INetFwMgr_get_LocalPolicy(i32*, i32**) #1

declare dso_local i64 @INetFwPolicy_get_CurrentProfile(i32*, i32**) #1

declare dso_local i64 @INetFwProfile_get_AuthorizedApplications(i32*, i32**) #1

declare dso_local i64 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32*, i32) #1

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i64 @INetFwAuthorizedApplication_put_Name(i32*, i32) #1

declare dso_local i64 @INetFwAuthorizedApplications_Add(i32*, i32*) #1

declare dso_local i64 @INetFwAuthorizedApplications_Remove(i32*, i32) #1

declare dso_local i32 @INetFwAuthorizedApplication_Release(i32*) #1

declare dso_local i32 @INetFwAuthorizedApplications_Release(i32*) #1

declare dso_local i32 @INetFwPolicy_Release(i32*) #1

declare dso_local i32 @INetFwProfile_Release(i32*) #1

declare dso_local i32 @INetFwMgr_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @CoUninitialize(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
