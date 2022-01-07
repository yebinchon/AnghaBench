; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_FormatNativeVds.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_FormatNativeVds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@FileSystemLabel = common dso_local global i32* null, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@dur_mins = common dso_local global i64 0, align 8
@dur_secs = common dso_local global i64 0, align 8
@MSG_220 = common dso_local global i32 0, align 4
@MSG_222 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not read volume name\00", align 1
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_GEN_FAILURE = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@RPC_C_AUTHN_LEVEL_CONNECT = common dso_local global i32 0, align 4
@RPC_C_IMP_LEVEL_IMPERSONATE = common dso_local global i32 0, align 4
@CLSID_VdsLoader = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@CLSCTX_REMOTE_SERVER = common dso_local global i32 0, align 4
@IID_IVdsServiceLoader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not create VDS Loader Instance: %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not load VDS Service: %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"VDS Service is not ready: %s\00", align 1
@VDS_QUERY_SOFTWARE_PROVIDERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Could not query VDS Service Providers: %s\00", align 1
@CHECK_FOR_USER_CANCEL = common dso_local global i32 0, align 4
@IID_IVdsProvider = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not get VDS Provider: %s\00", align 1
@IID_IVdsSwProvider = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Could not get VDS Software Provider: %s\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Could not get VDS Software Provider Packs: %s\00", align 1
@IID_IVdsPack = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"Could not query VDS Software Provider Pack: %s\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Could not query VDS volumes: %s\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@IID_IVdsVolume = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"Could not query VDS Volume Interface: %s\00", align 1
@VDS_S_PROPERTIES_INCOMPLETE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"Could not query VDS Volume Properties: %s\00", align 1
@IID_IVdsVolumeMF3 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"Could not access VDS VolumeMF3 interface: %s\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Could not query VDS VolumeGuidPathnames: %s\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Notice: Volume %S has more than one GUID...\00", align 1
@FS_UDF = common dso_local global i64 0, align 8
@SETTING_USE_UDF_VERSION = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"Using default cluster size\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Using cluster size: %d bytes\00", align 1
@format_percent = common dso_local global float 0.000000e+00, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"%s format was selected\00", align 1
@FP_QUICK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"Quick\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Slow\00", align 1
@FP_COMPRESSION = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"NTFS compression is enabled\00", align 1
@MSG_218 = common dso_local global i32 0, align 4
@OP_CREATE_FS = common dso_local global i32 0, align 4
@OP_FORMAT = common dso_local global i32 0, align 4
@MSG_217 = common dso_local global i32 0, align 4
@VDS_E_OPERATION_PENDING = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [27 x i8] c"Could not format drive: %s\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Format completed.\00", align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8*, i32)* @FormatNativeVds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatNativeVds(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_3__, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %14, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @utf8_to_wchar(i8* %44)
  store i8* %45, i8** %23, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @utf8_to_wchar(i8* %46)
  store i8* %47, i8** %24, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** @FileSystemLabel, align 8
  %50 = load i64, i64* @FS_EXFAT, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i8* %48, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %6
  %56 = load i64, i64* @dur_mins, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @dur_secs, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @MSG_220, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* @dur_mins, align 8
  %65 = load i64, i64* @dur_secs, align 8
  %66 = call i32 (i32, i32, i8*, ...) @PrintInfoDebug(i32 0, i32 %62, i8* %63, i64 %64, i64 %65)
  br label %71

67:                                               ; preds = %58, %6
  %68 = load i32, i32* @MSG_222, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 (i32, i32, i8*, ...) @PrintInfoDebug(i32 0, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i32 @UpdateProgressWithInfoInit(i32* null, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @TRUE, align 4
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i8* @GetLogicalName(i32 %74, i32 %75, i32 %76, i32 %77)
  store i8* %78, i8** %21, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = call i8* @utf8_to_wchar(i8* %79)
  store i8* %80, i8** %22, align 8
  %81 = load i8*, i8** %22, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %86 = load i32, i32* @FACILITY_STORAGE, align 4
  %87 = call i32 @FAC(i32 %86)
  %88 = or i32 %85, %87
  %89 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* @FormatStatus, align 4
  br label %433

91:                                               ; preds = %71
  %92 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %93 = call i32 @CoInitializeEx(i32* null, i32 %92)
  %94 = call i32 @IGNORE_RETVAL(i32 %93)
  %95 = load i32, i32* @RPC_C_AUTHN_LEVEL_CONNECT, align 4
  %96 = load i32, i32* @RPC_C_IMP_LEVEL_IMPERSONATE, align 4
  %97 = call i32 @CoInitializeSecurity(i32* null, i32 -1, i32* null, i32* null, i32 %95, i32 %96, i32* null, i32 0, i32* null)
  %98 = call i32 @IGNORE_RETVAL(i32 %97)
  %99 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %100 = load i32, i32* @CLSCTX_REMOTE_SERVER, align 4
  %101 = or i32 %99, %100
  %102 = bitcast i32** %17 to i8**
  %103 = call i64 @CoCreateInstance(i32* @CLSID_VdsLoader, i32* null, i32 %101, i32* @IID_IVdsServiceLoader, i8** %102)
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %91
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @VDS_SET_ERROR(i64 %108)
  %110 = call i32 (...) @WindowsErrorString()
  %111 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %433

112:                                              ; preds = %91
  %113 = load i32*, i32** %17, align 8
  %114 = call i64 @IVdsServiceLoader_LoadService(i32* %113, i8* bitcast ([1 x i32]* @.str.2 to i8*), i32** %18)
  store i64 %114, i64* %15, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @IVdsServiceLoader_Release(i32* %115)
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @VDS_SET_ERROR(i64 %121)
  %123 = call i32 (...) @WindowsErrorString()
  %124 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %433

125:                                              ; preds = %112
  %126 = load i32*, i32** %18, align 8
  %127 = call i64 @IVdsService_WaitForServiceReady(i32* %126)
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* @S_OK, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @VDS_SET_ERROR(i64 %132)
  %134 = call i32 (...) @WindowsErrorString()
  %135 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  br label %433

136:                                              ; preds = %125
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* @VDS_QUERY_SOFTWARE_PROVIDERS, align 4
  %139 = call i64 @IVdsService_QueryProviders(i32* %137, i32 %138, i32** %19)
  store i64 %139, i64* %15, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* @S_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load i64, i64* %15, align 8
  %145 = call i32 @VDS_SET_ERROR(i64 %144)
  %146 = call i32 (...) @WindowsErrorString()
  %147 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %433

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %431, %148
  %150 = load i32*, i32** %19, align 8
  %151 = call i64 @IEnumVdsObject_Next(i32* %150, i32 1, i32** %20, i32* %16)
  %152 = load i64, i64* @S_OK, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %432

154:                                              ; preds = %149
  %155 = load i32, i32* @CHECK_FOR_USER_CANCEL, align 4
  %156 = load i32*, i32** %20, align 8
  %157 = bitcast i32** %25 to i8**
  %158 = call i64 @IUnknown_QueryInterface(i32* %156, i32* @IID_IVdsProvider, i8** %157)
  store i64 %158, i64* %15, align 8
  %159 = load i32*, i32** %20, align 8
  %160 = call i32 @IUnknown_Release(i32* %159)
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* @S_OK, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @VDS_SET_ERROR(i64 %165)
  %167 = call i32 (...) @WindowsErrorString()
  %168 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  br label %433

169:                                              ; preds = %154
  %170 = load i32*, i32** %25, align 8
  %171 = bitcast i32** %26 to i8**
  %172 = call i64 @IVdsSwProvider_QueryInterface(i32* %170, i32* @IID_IVdsSwProvider, i8** %171)
  store i64 %172, i64* %15, align 8
  %173 = load i32*, i32** %25, align 8
  %174 = call i32 @IVdsProvider_Release(i32* %173)
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* @S_OK, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @VDS_SET_ERROR(i64 %179)
  %181 = call i32 (...) @WindowsErrorString()
  %182 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  br label %433

183:                                              ; preds = %169
  %184 = load i32*, i32** %26, align 8
  %185 = call i64 @IVdsSwProvider_QueryPacks(i32* %184, i32** %27)
  store i64 %185, i64* %15, align 8
  %186 = load i32*, i32** %26, align 8
  %187 = call i32 @IVdsSwProvider_Release(i32* %186)
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* @S_OK, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %183
  %192 = load i64, i64* %15, align 8
  %193 = call i32 @VDS_SET_ERROR(i64 %192)
  %194 = call i32 (...) @WindowsErrorString()
  %195 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  br label %433

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %430, %196
  %198 = load i32*, i32** %27, align 8
  %199 = call i64 @IEnumVdsObject_Next(i32* %198, i32 1, i32** %28, i32* %16)
  %200 = load i64, i64* @S_OK, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %431

202:                                              ; preds = %197
  %203 = load i32, i32* @CHECK_FOR_USER_CANCEL, align 4
  %204 = load i32*, i32** %28, align 8
  %205 = bitcast i32** %29 to i8**
  %206 = call i64 @IUnknown_QueryInterface(i32* %204, i32* @IID_IVdsPack, i8** %205)
  store i64 %206, i64* %15, align 8
  %207 = load i32*, i32** %28, align 8
  %208 = call i32 @IUnknown_Release(i32* %207)
  %209 = load i64, i64* %15, align 8
  %210 = load i64, i64* @S_OK, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %202
  %213 = load i64, i64* %15, align 8
  %214 = call i32 @VDS_SET_ERROR(i64 %213)
  %215 = call i32 (...) @WindowsErrorString()
  %216 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %215)
  br label %433

217:                                              ; preds = %202
  %218 = load i32*, i32** %29, align 8
  %219 = call i64 @IVdsPack_QueryVolumes(i32* %218, i32** %30)
  store i64 %219, i64* %15, align 8
  %220 = load i64, i64* %15, align 8
  %221 = load i64, i64* @S_OK, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load i64, i64* %15, align 8
  %225 = call i32 @VDS_SET_ERROR(i64 %224)
  %226 = call i32 (...) @WindowsErrorString()
  %227 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %226)
  br label %433

228:                                              ; preds = %217
  br label %229

229:                                              ; preds = %313, %288, %277, %258, %228
  %230 = load i32*, i32** %30, align 8
  %231 = call i64 @IEnumVdsObject_Next(i32* %230, i32 1, i32** %31, i32* %16)
  %232 = load i64, i64* @S_OK, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %430

234:                                              ; preds = %229
  %235 = load i64, i64* @E_FAIL, align 8
  store i64 %235, i64* %33, align 8
  store i32 0, i32* %38, align 4
  %236 = load i32, i32* @CHECK_FOR_USER_CANCEL, align 4
  %237 = load i32*, i32** %31, align 8
  %238 = bitcast i32** %39 to i8**
  %239 = call i64 @IUnknown_QueryInterface(i32* %237, i32* @IID_IVdsVolume, i8** %238)
  store i64 %239, i64* %15, align 8
  %240 = load i64, i64* %15, align 8
  %241 = load i64, i64* @S_OK, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %234
  %244 = load i64, i64* %15, align 8
  %245 = call i32 @VDS_SET_ERROR(i64 %244)
  %246 = call i32 (...) @WindowsErrorString()
  %247 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %246)
  br label %433

248:                                              ; preds = %234
  %249 = load i32*, i32** %39, align 8
  %250 = call i64 @IVdsVolume_GetProperties(i32* %249, %struct.TYPE_3__* %34)
  store i64 %250, i64* %15, align 8
  %251 = load i64, i64* %15, align 8
  %252 = load i64, i64* @S_OK, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %265

254:                                              ; preds = %248
  %255 = load i64, i64* %15, align 8
  %256 = load i64, i64* @VDS_S_PROPERTIES_INCOMPLETE, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %254
  %259 = load i64, i64* %15, align 8
  %260 = call i32 @VDS_SET_ERROR(i64 %259)
  %261 = load i32*, i32** %39, align 8
  %262 = call i32 @IVdsVolume_Release(i32* %261)
  %263 = call i32 (...) @WindowsErrorString()
  %264 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %263)
  br label %229

265:                                              ; preds = %254, %248
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @CoTaskMemFree(i32* %267)
  %269 = load i32*, i32** %39, align 8
  %270 = bitcast i32** %41 to i8**
  %271 = call i64 @IVdsVolume_QueryInterface(i32* %269, i32* @IID_IVdsVolumeMF3, i8** %270)
  store i64 %271, i64* %15, align 8
  %272 = load i32*, i32** %39, align 8
  %273 = call i32 @IVdsVolume_Release(i32* %272)
  %274 = load i64, i64* %15, align 8
  %275 = load i64, i64* @S_OK, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %265
  %278 = load i64, i64* %15, align 8
  %279 = call i32 @VDS_SET_ERROR(i64 %278)
  %280 = call i32 (...) @WindowsErrorString()
  %281 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %280)
  br label %229

282:                                              ; preds = %265
  %283 = load i32*, i32** %41, align 8
  %284 = call i64 @IVdsVolumeMF3_QueryVolumeGuidPathnames(i32* %283, i32** %35, i32* %37)
  store i64 %284, i64* %15, align 8
  %285 = load i64, i64* %15, align 8
  %286 = load i64, i64* @S_OK, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %282
  %289 = load i64, i64* %15, align 8
  %290 = call i32 @VDS_SET_ERROR(i64 %289)
  %291 = call i32 (...) @WindowsErrorString()
  %292 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i32 %291)
  br label %229

293:                                              ; preds = %282
  %294 = load i32, i32* %37, align 4
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load i32*, i32** %35, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 %299)
  br label %301

301:                                              ; preds = %296, %293
  %302 = load i8*, i8** %22, align 8
  %303 = load i32*, i32** %35, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = call i64 @wcscmp(i8* %302, i32 %305)
  %307 = icmp eq i64 %306, 0
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %32, align 4
  %309 = load i32*, i32** %35, align 8
  %310 = call i32 @CoTaskMemFree(i32* %309)
  %311 = load i32, i32* %32, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %301
  br label %229

314:                                              ; preds = %301
  %315 = load i32, i32* @TRUE, align 4
  store i32 %315, i32* %14, align 4
  %316 = load i8*, i8** %11, align 8
  %317 = load i32*, i32** @FileSystemLabel, align 8
  %318 = load i64, i64* @FS_UDF, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i64 @strcmp(i8* %316, i32 %320)
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %314
  %324 = load i32, i32* @SETTING_USE_UDF_VERSION, align 4
  %325 = call i32 @ReadSetting32(i32 %324)
  store i32 %325, i32* %38, align 4
  br label %326

326:                                              ; preds = %323, %314
  %327 = load i32, i32* %9, align 4
  %328 = icmp slt i32 %327, 512
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  store i32 0, i32* %9, align 4
  %330 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %334

331:                                              ; preds = %326
  %332 = load i32, i32* %9, align 4
  %333 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %331, %329
  store float 0.000000e+00, float* @format_percent, align 4
  %335 = load i32, i32* %12, align 4
  %336 = load i32, i32* @FP_QUICK, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)
  %341 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %340)
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* @FP_COMPRESSION, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %334
  %347 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %348

348:                                              ; preds = %346, %334
  %349 = load i32*, i32** %41, align 8
  %350 = load i8*, i8** %24, align 8
  %351 = load i32, i32* %38, align 4
  %352 = load i32, i32* %9, align 4
  %353 = load i8*, i8** %23, align 8
  %354 = load i32, i32* %12, align 4
  %355 = call i64 @IVdsVolumeMF3_FormatEx2(i32* %349, i8* %350, i32 %351, i32 %352, i8* %353, i32 %354, i32** %40)
  store i64 %355, i64* %15, align 8
  br label %356

356:                                              ; preds = %407, %348
  %357 = load i64, i64* %15, align 8
  %358 = call i64 @SUCCEEDED(i64 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %409

360:                                              ; preds = %356
  %361 = load i32, i32* @FormatStatus, align 4
  %362 = call i64 @IS_ERROR(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = load i32*, i32** %40, align 8
  %366 = call i32 @IVdsAsync_Cancel(i32* %365)
  br label %409

367:                                              ; preds = %360
  %368 = load i32*, i32** %40, align 8
  %369 = call i64 @IVdsAsync_QueryStatus(i32* %368, i64* %33, i32* %36)
  store i64 %369, i64* %15, align 8
  %370 = load i64, i64* %15, align 8
  %371 = call i64 @SUCCEEDED(i64 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %407

373:                                              ; preds = %367
  %374 = load i32, i32* %12, align 4
  %375 = load i32, i32* @FP_QUICK, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %389

378:                                              ; preds = %373
  %379 = load i32, i32* @MSG_218, align 4
  %380 = load i32, i32* %36, align 4
  %381 = icmp slt i32 %380, 100
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 1, i32 2
  %384 = call i32 @PrintInfo(i32 0, i32 %379, i32 %383, i32 2)
  %385 = load i32, i32* @OP_CREATE_FS, align 4
  %386 = load i32, i32* %36, align 4
  %387 = sitofp i32 %386 to float
  %388 = call i32 @UpdateProgress(i32 %385, float %387)
  br label %394

389:                                              ; preds = %373
  %390 = load i32, i32* @OP_FORMAT, align 4
  %391 = load i32, i32* @MSG_217, align 4
  %392 = load i32, i32* %36, align 4
  %393 = call i32 @UpdateProgressWithInfo(i32 %390, i32 %391, i32 %392, i32 100)
  br label %394

394:                                              ; preds = %389, %378
  %395 = load i64, i64* %33, align 8
  store i64 %395, i64* %15, align 8
  %396 = load i64, i64* %15, align 8
  %397 = load i64, i64* @S_OK, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %400

399:                                              ; preds = %394
  br label %409

400:                                              ; preds = %394
  %401 = load i64, i64* %15, align 8
  %402 = load i64, i64* @VDS_E_OPERATION_PENDING, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = load i64, i64* @S_OK, align 8
  store i64 %405, i64* %15, align 8
  br label %406

406:                                              ; preds = %404, %400
  br label %407

407:                                              ; preds = %406, %367
  %408 = call i32 @Sleep(i32 500)
  br label %356

409:                                              ; preds = %399, %364, %356
  %410 = load i64, i64* %15, align 8
  %411 = call i64 @SUCCEEDED(i64 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %418, label %413

413:                                              ; preds = %409
  %414 = load i64, i64* %15, align 8
  %415 = call i32 @VDS_SET_ERROR(i64 %414)
  %416 = call i32 (...) @WindowsErrorString()
  %417 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 %416)
  br label %433

418:                                              ; preds = %409
  %419 = load i32*, i32** %40, align 8
  %420 = call i32 @IVdsAsync_Release(i32* %419)
  %421 = load i32*, i32** %41, align 8
  %422 = call i32 @IVdsVolumeMF3_Release(i32* %421)
  %423 = load i32, i32* @FormatStatus, align 4
  %424 = call i64 @IS_ERROR(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %429, label %426

426:                                              ; preds = %418
  %427 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %428 = load i32, i32* @TRUE, align 4
  store i32 %428, i32* %13, align 4
  br label %429

429:                                              ; preds = %426, %418
  br label %433

430:                                              ; preds = %229
  br label %197

431:                                              ; preds = %197
  br label %149

432:                                              ; preds = %149
  br label %433

433:                                              ; preds = %432, %429, %413, %243, %223, %212, %191, %178, %164, %143, %131, %120, %107, %83
  %434 = load i32, i32* %14, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %446, label %436

436:                                              ; preds = %433
  %437 = load i32, i32* @FormatStatus, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %436
  %440 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %441 = load i32, i32* @FACILITY_STORAGE, align 4
  %442 = call i32 @FAC(i32 %441)
  %443 = or i32 %440, %442
  %444 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %445 = or i32 %443, %444
  store i32 %445, i32* @FormatStatus, align 4
  br label %446

446:                                              ; preds = %439, %436, %433
  %447 = load i8*, i8** %21, align 8
  %448 = call i32 @safe_free(i8* %447)
  %449 = load i8*, i8** %22, align 8
  %450 = call i32 @safe_free(i8* %449)
  %451 = load i8*, i8** %23, align 8
  %452 = call i32 @safe_free(i8* %451)
  %453 = load i8*, i8** %24, align 8
  %454 = call i32 @safe_free(i8* %453)
  %455 = load i32, i32* %13, align 4
  ret i32 %455
}

declare dso_local i8* @utf8_to_wchar(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @PrintInfoDebug(i32, i32, i8*, ...) #1

declare dso_local i32 @UpdateProgressWithInfoInit(i32*, i32) #1

declare dso_local i8* @GetLogicalName(i32, i32, i32, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @FAC(i32) #1

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @CoInitializeSecurity(i32*, i32, i32*, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @VDS_SET_ERROR(i64) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i64 @IVdsServiceLoader_LoadService(i32*, i8*, i32**) #1

declare dso_local i32 @IVdsServiceLoader_Release(i32*) #1

declare dso_local i64 @IVdsService_WaitForServiceReady(i32*) #1

declare dso_local i64 @IVdsService_QueryProviders(i32*, i32, i32**) #1

declare dso_local i64 @IEnumVdsObject_Next(i32*, i32, i32**, i32*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IVdsSwProvider_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IVdsProvider_Release(i32*) #1

declare dso_local i64 @IVdsSwProvider_QueryPacks(i32*, i32**) #1

declare dso_local i32 @IVdsSwProvider_Release(i32*) #1

declare dso_local i64 @IVdsPack_QueryVolumes(i32*, i32**) #1

declare dso_local i64 @IVdsVolume_GetProperties(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @IVdsVolume_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i64 @IVdsVolume_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IVdsVolumeMF3_QueryVolumeGuidPathnames(i32*, i32**, i32*) #1

declare dso_local i64 @wcscmp(i8*, i32) #1

declare dso_local i32 @ReadSetting32(i32) #1

declare dso_local i64 @IVdsVolumeMF3_FormatEx2(i32*, i8*, i32, i32, i8*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IS_ERROR(i32) #1

declare dso_local i32 @IVdsAsync_Cancel(i32*) #1

declare dso_local i64 @IVdsAsync_QueryStatus(i32*, i64*, i32*) #1

declare dso_local i32 @PrintInfo(i32, i32, i32, i32) #1

declare dso_local i32 @UpdateProgress(i32, float) #1

declare dso_local i32 @UpdateProgressWithInfo(i32, i32, i32, i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @IVdsAsync_Release(i32*) #1

declare dso_local i32 @IVdsVolumeMF3_Release(i32*) #1

declare dso_local i32 @safe_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
