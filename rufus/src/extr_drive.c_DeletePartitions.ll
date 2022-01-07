; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_DeletePartitions.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_DeletePartitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 92, i32 92, i32 63, i32 92, i32 80, i32 104, i32 121, i32 115, i32 105, i32 99, i32 97, i32 108, i32 68, i32 114, i32 105, i32 118, i32 101, i32 37, i32 108, i32 117, i32 0], align 4
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
@IID_IVdsProvider = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not get VDS Provider: %s\00", align 1
@IID_IVdsSwProvider = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Could not get VDS Software Provider: %s\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Could not get VDS Software Provider Packs: %s\00", align 1
@IID_IVdsPack = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"Could not query VDS Software Provider Pack: %s\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Could not query VDS disks: %s\00", align 1
@IID_IVdsDisk = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"Could not query VDS Disk Interface: %s\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Could not query VDS Disk Properties: %s\00", align 1
@IID_IVdsAdvancedDisk = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [49 x i8] c"Could not access VDS Advanced Disk interface: %s\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Deleting ALL partition(s) from disk '%S':\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\E2\97\8F Partition %d (offset: %lld, size: %s)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"Could not delete partitions: %s\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"No partition to delete on disk '%S'\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@FormatStatus = common dso_local global i32 0, align 4
@VDS_E_OPERATION_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DeletePartitions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [24 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @CheckDriveIndex(i32 %25)
  %27 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %29 = call i32 @ARRAYSIZE(i32* %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @wnsprintf(i32* %27, i32 %29, i8* bitcast ([21 x i32]* @.str to i8*), i32 %30)
  %32 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %33 = call i32 @CoInitializeEx(i32* null, i32 %32)
  %34 = call i32 @IGNORE_RETVAL(i32 %33)
  %35 = load i32, i32* @RPC_C_AUTHN_LEVEL_CONNECT, align 4
  %36 = load i32, i32* @RPC_C_IMP_LEVEL_IMPERSONATE, align 4
  %37 = call i32 @CoInitializeSecurity(i32* null, i32 -1, i32* null, i32* null, i32 %35, i32 %36, i32* null, i32 0, i32* null)
  %38 = call i32 @IGNORE_RETVAL(i32 %37)
  %39 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %40 = load i32, i32* @CLSCTX_REMOTE_SERVER, align 4
  %41 = or i32 %39, %40
  %42 = bitcast i32** %7 to i8**
  %43 = call i64 @CoCreateInstance(i32* @CLSID_VdsLoader, i32* null, i32 %41, i32* @IID_IVdsServiceLoader, i8** %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @VDS_SET_ERROR(i64 %48)
  %50 = call i32 (...) @WindowsErrorString()
  %51 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %289

52:                                               ; preds = %1
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @IVdsServiceLoader_LoadService(i32* %53, i8* bitcast ([1 x i32]* @.str.2 to i8*), i32** %8)
  store i64 %54, i64* %4, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @IVdsServiceLoader_Release(i32* %55)
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @VDS_SET_ERROR(i64 %61)
  %63 = call i32 (...) @WindowsErrorString()
  %64 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %289

65:                                               ; preds = %52
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @IVdsService_WaitForServiceReady(i32* %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @VDS_SET_ERROR(i64 %72)
  %74 = call i32 (...) @WindowsErrorString()
  %75 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %289

76:                                               ; preds = %65
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @VDS_QUERY_SOFTWARE_PROVIDERS, align 4
  %79 = call i64 @IVdsService_QueryProviders(i32* %77, i32 %78, i32** %9)
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @VDS_SET_ERROR(i64 %84)
  %86 = call i32 (...) @WindowsErrorString()
  %87 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %289

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %287, %88
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @IEnumVdsObject_Next(i32* %90, i32 1, i32** %10, i32* %5)
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %288

94:                                               ; preds = %89
  %95 = load i32*, i32** %10, align 8
  %96 = bitcast i32** %11 to i8**
  %97 = call i64 @IUnknown_QueryInterface(i32* %95, i32* @IID_IVdsProvider, i8** %96)
  store i64 %97, i64* %4, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @IUnknown_Release(i32* %98)
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @VDS_SET_ERROR(i64 %104)
  %106 = call i32 (...) @WindowsErrorString()
  %107 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  br label %289

108:                                              ; preds = %94
  %109 = load i32*, i32** %11, align 8
  %110 = bitcast i32** %12 to i8**
  %111 = call i64 @IVdsSwProvider_QueryInterface(i32* %109, i32* @IID_IVdsSwProvider, i8** %110)
  store i64 %111, i64* %4, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @IVdsProvider_Release(i32* %112)
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @VDS_SET_ERROR(i64 %118)
  %120 = call i32 (...) @WindowsErrorString()
  %121 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  br label %289

122:                                              ; preds = %108
  %123 = load i32*, i32** %12, align 8
  %124 = call i64 @IVdsSwProvider_QueryPacks(i32* %123, i32** %13)
  store i64 %124, i64* %4, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @IVdsSwProvider_Release(i32* %125)
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @S_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i64, i64* %4, align 8
  %132 = call i32 @VDS_SET_ERROR(i64 %131)
  %133 = call i32 (...) @WindowsErrorString()
  %134 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  br label %289

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %286, %135
  %137 = load i32*, i32** %13, align 8
  %138 = call i64 @IEnumVdsObject_Next(i32* %137, i32 1, i32** %14, i32* %5)
  %139 = load i64, i64* @S_OK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %287

141:                                              ; preds = %136
  %142 = load i32*, i32** %14, align 8
  %143 = bitcast i32** %15 to i8**
  %144 = call i64 @IUnknown_QueryInterface(i32* %142, i32* @IID_IVdsPack, i8** %143)
  store i64 %144, i64* %4, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @IUnknown_Release(i32* %145)
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* @S_OK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load i64, i64* %4, align 8
  %152 = call i32 @VDS_SET_ERROR(i64 %151)
  %153 = call i32 (...) @WindowsErrorString()
  %154 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %153)
  br label %289

155:                                              ; preds = %141
  %156 = load i32*, i32** %15, align 8
  %157 = call i64 @IVdsPack_QueryDisks(i32* %156, i32** %16)
  store i64 %157, i64* %4, align 8
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* @S_OK, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @VDS_SET_ERROR(i64 %162)
  %164 = call i32 (...) @WindowsErrorString()
  %165 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %164)
  br label %289

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %201, %166
  %168 = load i32*, i32** %16, align 8
  %169 = call i64 @IEnumVdsObject_Next(i32* %168, i32 1, i32** %17, i32* %5)
  %170 = load i64, i64* @S_OK, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %286

172:                                              ; preds = %167
  %173 = load i32*, i32** %17, align 8
  %174 = bitcast i32** %22 to i8**
  %175 = call i64 @IUnknown_QueryInterface(i32* %173, i32* @IID_IVdsDisk, i8** %174)
  store i64 %175, i64* %4, align 8
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* @S_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i64, i64* %4, align 8
  %181 = call i32 @VDS_SET_ERROR(i64 %180)
  %182 = call i32 (...) @WindowsErrorString()
  %183 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %182)
  br label %289

184:                                              ; preds = %172
  %185 = load i32*, i32** %22, align 8
  %186 = call i64 @IVdsDisk_GetProperties(i32* %185, %struct.TYPE_7__* %18)
  store i64 %186, i64* %4, align 8
  %187 = load i64, i64* %4, align 8
  %188 = load i64, i64* @S_OK, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load i64, i64* %4, align 8
  %192 = call i32 @VDS_SET_ERROR(i64 %191)
  %193 = call i32 (...) @WindowsErrorString()
  %194 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %193)
  br label %289

195:                                              ; preds = %184
  %196 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @_wcsicmp(i32* %196, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load i32*, i32** %22, align 8
  %203 = call i32 @IVdsDisk_Release(i32* %202)
  br label %167

204:                                              ; preds = %195
  %205 = load i32*, i32** %22, align 8
  %206 = bitcast i32** %23 to i8**
  %207 = call i64 @IVdsDisk_QueryInterface(i32* %205, i32* @IID_IVdsAdvancedDisk, i8** %206)
  store i64 %207, i64* %4, align 8
  %208 = load i32*, i32** %22, align 8
  %209 = call i32 @IVdsDisk_Release(i32* %208)
  %210 = load i64, i64* %4, align 8
  %211 = load i64, i64* @S_OK, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %204
  %214 = load i64, i64* %4, align 8
  %215 = call i32 @VDS_SET_ERROR(i64 %214)
  %216 = call i32 (...) @WindowsErrorString()
  %217 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %216)
  br label %289

218:                                              ; preds = %204
  %219 = load i32*, i32** %23, align 8
  %220 = call i64 @IVdsAdvancedDisk_QueryPartitions(i32* %219, %struct.TYPE_6__** %19, i64* %21)
  store i64 %220, i64* %4, align 8
  %221 = load i64, i64* %4, align 8
  %222 = load i64, i64* @S_OK, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %276

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %226)
  store i64 0, i64* %20, align 8
  br label %228

228:                                              ; preds = %271, %224
  %229 = load i64, i64* %20, align 8
  %230 = load i64, i64* %21, align 8
  %231 = icmp ult i64 %229, %230
  br i1 %231, label %232, label %274

232:                                              ; preds = %228
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %234 = load i64, i64* %20, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %239 = load i64, i64* %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %244 = load i64, i64* %20, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @FALSE, align 4
  %249 = load i32, i32* @FALSE, align 4
  %250 = call i32 @SizeToHumanReadable(i32 %247, i32 %248, i32 %249)
  %251 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %237, i32 %242, i32 %250)
  %252 = load i32*, i32** %23, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %254 = load i64, i64* %20, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @TRUE, align 4
  %259 = load i32, i32* @TRUE, align 4
  %260 = call i64 @IVdsAdvancedDisk_DeletePartition(i32* %252, i32 %257, i32 %258, i32 %259)
  store i64 %260, i64* %4, align 8
  %261 = load i64, i64* %4, align 8
  %262 = load i64, i64* @S_OK, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %232
  %265 = load i32, i32* @FALSE, align 4
  store i32 %265, i32* %3, align 4
  %266 = load i64, i64* %4, align 8
  %267 = call i32 @VDS_SET_ERROR(i64 %266)
  %268 = call i32 (...) @WindowsErrorString()
  %269 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %264, %232
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %20, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %20, align 8
  br label %228

274:                                              ; preds = %228
  %275 = load i32, i32* @TRUE, align 4
  store i32 %275, i32* %3, align 4
  br label %281

276:                                              ; preds = %218
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 %278)
  %280 = load i32, i32* @TRUE, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %276, %274
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %283 = call i32 @CoTaskMemFree(%struct.TYPE_6__* %282)
  %284 = load i32*, i32** %23, align 8
  %285 = call i32 @IVdsAdvancedDisk_Release(i32* %284)
  br label %289

286:                                              ; preds = %167
  br label %136

287:                                              ; preds = %136
  br label %89

288:                                              ; preds = %89
  br label %289

289:                                              ; preds = %288, %281, %213, %190, %179, %161, %150, %130, %117, %103, %83, %71, %60, %47
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @CheckDriveIndex(i32) #1

declare dso_local i32 @wnsprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @CoInitializeSecurity(i32*, i32, i32*, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @VDS_SET_ERROR(i64) #1

declare dso_local i32 @uprintf(i8*, i32, ...) #1

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

declare dso_local i64 @IVdsPack_QueryDisks(i32*, i32**) #1

declare dso_local i64 @IVdsDisk_GetProperties(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @_wcsicmp(i32*, i32) #1

declare dso_local i32 @IVdsDisk_Release(i32*) #1

declare dso_local i64 @IVdsDisk_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IVdsAdvancedDisk_QueryPartitions(i32*, %struct.TYPE_6__**, i64*) #1

declare dso_local i32 @SizeToHumanReadable(i32, i32, i32) #1

declare dso_local i64 @IVdsAdvancedDisk_DeletePartition(i32*, i32, i32, i32) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_6__*) #1

declare dso_local i32 @IVdsAdvancedDisk_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
