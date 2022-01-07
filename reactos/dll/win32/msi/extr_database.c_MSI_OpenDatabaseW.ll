; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_MSI_OpenDatabaseW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_MSI_OpenDatabaseW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i8*, i64, i32*, i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@MSIDBOPEN_PATCHFILE = common dso_local global i64 0, align 8
@MSIDBOPEN_CREATEDIRECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Database is a patch\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ERROR_OPEN_FAILED = common dso_local global i32 0, align 4
@MSIDBOPEN_TRANSACT = common dso_local global i64 0, align 8
@MSIDBOPEN_READONLY = common dso_local global i64 0, align 8
@STGM_DIRECT = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i64 0, align 8
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@CLSID_MsiPatch = common dso_local global i32 0, align 4
@CLSID_MsiDatabase = common dso_local global i32 0, align 4
@MSIDBOPEN_DIRECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"unknown flag %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"open failed r = %08x for %s\0A\00", align 1
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to stat storage\0A\00", align 1
@CLSID_MsiTransform = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"storage GUID is not a MSI database GUID %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"storage GUID is not the MSI patch GUID %s\0A\00", align 1
@MSIHANDLETYPE_DATABASE = common dso_local global i32 0, align 4
@MSI_CloseDatabase = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to allocate a handle\0A\00", align 1
@szBackSlash = common dso_local global i64 0, align 8
@MSI_INITIAL_MEDIA_TRANSFORM_OFFSET = common dso_local global i32 0, align 4
@MSI_INITIAL_MEDIA_TRANSFORM_DISKID = common dso_local global i32 0, align 4
@msi = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSI_OpenDatabaseW(i64 %0, i64 %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %20 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @debugstr_w(i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @debugstr_w(i64 %29)
  %31 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %33 = icmp ne %struct.TYPE_7__** %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %307

36:                                               ; preds = %3
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @MSIDBOPEN_PATCHFILE, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64, i64* @MSIDBOPEN_CREATEDIRECT, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* @MSIDBOPEN_PATCHFILE, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %16, align 8
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @IS_INTMSIDBOPEN(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @FALSE, align 8
  %58 = call i32 @CopyFileW(i64 %55, i64 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ERROR_OPEN_FAILED, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %307

62:                                               ; preds = %54
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* @MSIDBOPEN_TRANSACT, align 8
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %62, %48
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @MSIDBOPEN_READONLY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* @STGM_DIRECT, align 4
  %73 = load i32, i32* @STGM_READ, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @STGM_SHARE_DENY_WRITE, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @StgOpenStorage(i64 %71, i32* null, i32 %76, i32* null, i32 0, i32** %8)
  store i32 %77, i32* %9, align 4
  br label %162

78:                                               ; preds = %66
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @MSIDBOPEN_CREATE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load i64, i64* %5, align 8
  %84 = load i32, i32* @STGM_CREATE, align 4
  %85 = load i32, i32* @STGM_TRANSACTED, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @STGM_READWRITE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @StgCreateDocfile(i64 %83, i32 %90, i32 0, i32** %8)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @SUCCEEDED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %82
  %96 = load i32*, i32** %8, align 8
  %97 = load i64, i64* %16, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32* @CLSID_MsiPatch, i32* @CLSID_MsiDatabase
  %101 = call i32 @db_initialize(i32* %96, i32* %100)
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %95, %82
  %103 = load i64, i64* @TRUE, align 8
  store i64 %103, i64* %15, align 8
  br label %161

104:                                              ; preds = %78
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @MSIDBOPEN_CREATEDIRECT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %104
  %109 = load i64, i64* %5, align 8
  %110 = load i32, i32* @STGM_CREATE, align 4
  %111 = load i32, i32* @STGM_DIRECT, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @STGM_READWRITE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @StgCreateDocfile(i64 %109, i32 %116, i32 0, i32** %8)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @SUCCEEDED(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %108
  %122 = load i32*, i32** %8, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32* @CLSID_MsiPatch, i32* @CLSID_MsiDatabase
  %127 = call i32 @db_initialize(i32* %122, i32* %126)
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %121, %108
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %15, align 8
  br label %160

130:                                              ; preds = %104
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* @MSIDBOPEN_TRANSACT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i64, i64* %5, align 8
  %136 = load i32, i32* @STGM_TRANSACTED, align 4
  %137 = load i32, i32* @STGM_READWRITE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @STGM_SHARE_DENY_WRITE, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @StgOpenStorage(i64 %135, i32* null, i32 %140, i32* null, i32 0, i32** %8)
  store i32 %141, i32* %9, align 4
  br label %159

142:                                              ; preds = %130
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @MSIDBOPEN_DIRECT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = load i64, i64* %5, align 8
  %148 = load i32, i32* @STGM_DIRECT, align 4
  %149 = load i32, i32* @STGM_READWRITE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @StgOpenStorage(i64 %147, i32* null, i32 %152, i32* null, i32 0, i32** %8)
  store i32 %153, i32* %9, align 4
  br label %158

154:                                              ; preds = %142
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %155)
  %157 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %157, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %307

158:                                              ; preds = %146
  br label %159

159:                                              ; preds = %158, %134
  br label %160

160:                                              ; preds = %159, %128
  br label %161

161:                                              ; preds = %160, %102
  br label %162

162:                                              ; preds = %161, %70
  %163 = load i32, i32* %9, align 4
  %164 = call i64 @FAILED(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i32*, i32** %8, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %166, %162
  %170 = load i32, i32* %9, align 4
  %171 = load i64, i64* %5, align 8
  %172 = call i32 @debugstr_w(i64 %171)
  %173 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %172)
  %174 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %174, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %307

175:                                              ; preds = %166
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* @STATFLAG_NONAME, align 4
  %178 = call i32 @IStorage_Stat(i32* %176, %struct.TYPE_6__* %14, i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i64 @FAILED(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %292

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %186 = call i32 @IsEqualGUID(i32* %185, i32* @CLSID_MsiDatabase)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %190 = call i32 @IsEqualGUID(i32* %189, i32* @CLSID_MsiPatch)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %194 = call i32 @IsEqualGUID(i32* %193, i32* @CLSID_MsiTransform)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %198 = call i64 @debugstr_guid(i32* %197)
  %199 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %198)
  br label %292

200:                                              ; preds = %192, %188, %184
  %201 = load i64, i64* %16, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %205 = call i32 @IsEqualGUID(i32* %204, i32* @CLSID_MsiPatch)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %209 = call i64 @debugstr_guid(i32* %208)
  %210 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %209)
  %211 = load i32, i32* @ERROR_OPEN_FAILED, align 4
  store i32 %211, i32* %11, align 4
  br label %292

212:                                              ; preds = %203, %200
  %213 = load i32, i32* @MSIHANDLETYPE_DATABASE, align 4
  %214 = load i32, i32* @MSI_CloseDatabase, align 4
  %215 = call %struct.TYPE_7__* @alloc_msiobject(i32 %213, i32 64, i32 %214)
  store %struct.TYPE_7__* %215, %struct.TYPE_7__** %10, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %217 = icmp ne %struct.TYPE_7__* %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %212
  %219 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %292

220:                                              ; preds = %212
  %221 = load i64, i64* %13, align 8
  %222 = call i32 @strchrW(i64 %221, i8 signext 92)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %220
  %225 = load i32, i32* @MAX_PATH, align 4
  %226 = call i32 @GetCurrentDirectoryW(i32 %225, i32* %26)
  %227 = load i64, i64* @szBackSlash, align 8
  %228 = call i32 @lstrcatW(i32* %26, i64 %227)
  %229 = load i64, i64* %13, align 8
  %230 = call i32 @lstrcatW(i32* %26, i64 %229)
  br label %234

231:                                              ; preds = %220
  %232 = load i64, i64* %13, align 8
  %233 = call i32 @lstrcpyW(i32* %26, i64 %232)
  br label %234

234:                                              ; preds = %231, %224
  %235 = ptrtoint i32* %26 to i64
  %236 = call i8* @strdupW(i64 %235)
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 10
  store i8* %236, i8** %238, align 8
  %239 = load i32, i32* @MSI_INITIAL_MEDIA_TRANSFORM_OFFSET, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 9
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @MSI_INITIAL_MEDIA_TRANSFORM_DISKID, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 8
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @msi, align 4
  %246 = call i64 @TRACE_ON(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %234
  %249 = load i32*, i32** %8, align 8
  %250 = call i32 @enum_stream_names(i32* %249)
  br label %251

251:                                              ; preds = %248, %234
  %252 = load i32*, i32** %8, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 7
  store i32* %252, i32** %254, align 8
  %255 = load i64, i64* %12, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 6
  store i64 %255, i64* %257, align 8
  %258 = load i64, i64* %15, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %251
  %261 = load i64, i64* %5, align 8
  %262 = call i8* @strdupW(i64 %261)
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 5
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %260, %251
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 4
  %268 = call i32 @list_init(i32* %267)
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 3
  %271 = call i32 @list_init(i32* %270)
  %272 = load i32*, i32** %8, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 2
  %275 = call i32 @msi_load_string_table(i32* %272, i32* %274)
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %265
  br label %292

283:                                              ; preds = %265
  %284 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %284, i32* %11, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = call i32 @msiobj_addref(i32* %286)
  %288 = load i32*, i32** %8, align 8
  %289 = call i32 @IStorage_AddRef(i32* %288)
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %291 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %290, %struct.TYPE_7__** %291, align 8
  br label %292

292:                                              ; preds = %283, %282, %218, %207, %196, %182
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %294 = icmp ne %struct.TYPE_7__* %293, null
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = call i32 @msiobj_release(i32* %297)
  br label %299

299:                                              ; preds = %295, %292
  %300 = load i32*, i32** %8, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i32*, i32** %8, align 8
  %304 = call i32 @IStorage_Release(i32* %303)
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i32, i32* %11, align 4
  store i32 %306, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %307

307:                                              ; preds = %305, %169, %154, %60, %34
  %308 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %308)
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_w(i64) #2

declare dso_local i32 @IS_INTMSIDBOPEN(i64) #2

declare dso_local i32 @CopyFileW(i64, i64, i64) #2

declare dso_local i32 @StgOpenStorage(i64, i32*, i32, i32*, i32, i32**) #2

declare dso_local i32 @StgCreateDocfile(i64, i32, i32, i32**) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @db_initialize(i32*, i32*) #2

declare dso_local i32 @ERR(i8*, i64) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @WARN(i8*, i32, i32) #2

declare dso_local i32 @IStorage_Stat(i32*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @FIXME(i8*) #2

declare dso_local i32 @IsEqualGUID(i32*, i32*) #2

declare dso_local i64 @debugstr_guid(i32*) #2

declare dso_local %struct.TYPE_7__* @alloc_msiobject(i32, i32, i32) #2

declare dso_local i32 @strchrW(i64, i8 signext) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @lstrcatW(i32*, i64) #2

declare dso_local i32 @lstrcpyW(i32*, i64) #2

declare dso_local i8* @strdupW(i64) #2

declare dso_local i64 @TRACE_ON(i32) #2

declare dso_local i32 @enum_stream_names(i32*) #2

declare dso_local i32 @list_init(i32*) #2

declare dso_local i32 @msi_load_string_table(i32*, i32*) #2

declare dso_local i32 @msiobj_addref(i32*) #2

declare dso_local i32 @IStorage_AddRef(i32*) #2

declare dso_local i32 @msiobj_release(i32*) #2

declare dso_local i32 @IStorage_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
