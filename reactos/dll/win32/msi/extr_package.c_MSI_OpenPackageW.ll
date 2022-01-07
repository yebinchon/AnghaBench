; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_OpenPackageW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_OpenPackageW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32*, %struct.TYPE_31__*, i64, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }

@MSI_OpenPackageW.dotmsi = internal constant [5 x i8] c".msi\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %p\0A\00", align 1
@INSTALLMESSAGE_INITIALIZE = common dso_local global i32 0, align 4
@MSIHANDLETYPE_DATABASE = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"MsiOpenPackage not allowed during a custom action!\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@URLIS_URL = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to copy package %s to %s (%u)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"opening package %s\0A\00", align 1
@MSIDBOPEN_TRANSACT = common dso_local global i32 0, align 4
@ERROR_INSTALL_PACKAGE_INVALID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to load summary info\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to parse summary info %u\0A\00", align 1
@szDatabase = common dso_local global i32 0, align 4
@GUID_SIZE = common dso_local global i32 0, align 4
@MSIPATCHSTATE_APPLIED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"found registered patch %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"registered patch failed to apply %u\0A\00", align 1
@gszLogFile = common dso_local global i64 0, align 8
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INSTALLMESSAGE_COMMONDATA = common dso_local global i32 0, align 4
@MSIERR_INFO_LOGGINGSTART = common dso_local global i32 0, align 4
@INSTALLMESSAGE_INFO = common dso_local global i32 0, align 4
@MB_ICONHAND = common dso_local global i32 0, align 4
@INSTALLPROPERTY_PRODUCTNAMEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MSI_OpenPackageW(i8* %0, %struct.TYPE_34__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_34__**, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_34__** %1, %struct.TYPE_34__*** %5, align 8
  store i8* null, i8** %12, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %16, align 8
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %17, align 8
  store i64 0, i64* %18, align 8
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %20, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @debugstr_w(i8* %36)
  %38 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  %39 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37, %struct.TYPE_34__** %38)
  %40 = load i32, i32* @INSTALLMESSAGE_INITIALIZE, align 4
  %41 = call i32 @MSI_ProcessMessage(%struct.TYPE_34__* null, i32 %40, %struct.TYPE_33__* null)
  %42 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %42, align 16
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %48, label %71

48:                                               ; preds = %2
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @atoiW(i8* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MSIHANDLETYPE_DATABASE, align 4
  %54 = call %struct.TYPE_35__* @msihandle2msiinfo(i32 %52, i32 %53)
  store %struct.TYPE_35__* %54, %struct.TYPE_35__** %6, align 8
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %56 = icmp ne %struct.TYPE_35__* %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @msi_get_remote(i32 %58)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %23, align 8
  %61 = load i32*, i32** %23, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  store i64 %64, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

65:                                               ; preds = %57
  %66 = load i32*, i32** %23, align 8
  %67 = call i32 @IWineMsiRemoteDatabase_Release(i32* %66)
  %68 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %69, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

70:                                               ; preds = %48
  br label %150

71:                                               ; preds = %2
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* @URLIS_URL, align 4
  %74 = call i64 @UrlIsW(i8* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @msi_download_file(i8* %77, i8* %33)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @ERROR_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %13, align 8
  store i64 %83, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

84:                                               ; preds = %76
  store i8* %33, i8** %17, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i8* @strdupW(i8* %85)
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %90, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

91:                                               ; preds = %84
  %92 = load i8*, i8** %12, align 8
  %93 = call i8* @strrchrW(i8* %92, i8 signext 47)
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %71
  %101 = load i8*, i8** %17, align 8
  %102 = call i64 @get_local_package(i8* %101, i8* %30)
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @ERROR_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = call i64 @GetFileAttributesW(i8* %30)
  %108 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %137

110:                                              ; preds = %106, %100
  %111 = call i64 @msi_create_empty_local_file(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @MSI_OpenPackageW.dotmsi, i64 0, i64 0))
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* @ERROR_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @msi_free(i8* %116)
  %118 = load i64, i64* %13, align 8
  store i64 %118, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

119:                                              ; preds = %110
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* @FALSE, align 4
  %122 = call i32 @CopyFileW(i8* %120, i8* %30, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = call i64 (...) @GetLastError()
  store i64 %125, i64* %13, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = call i32 @debugstr_w(i8* %126)
  %128 = call i32 @debugstr_w(i8* %30)
  %129 = load i64, i64* %13, align 8
  %130 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128, i64 %129)
  %131 = call i32 @DeleteFileW(i8* %30)
  %132 = load i8*, i8** %12, align 8
  %133 = call i32 @msi_free(i8* %132)
  %134 = load i64, i64* %13, align 8
  store i64 %134, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

135:                                              ; preds = %119
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %135, %106
  %138 = call i32 @debugstr_w(i8* %30)
  %139 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @MSIDBOPEN_TRANSACT, align 4
  %141 = call i64 @MSI_OpenDatabaseW(i8* %30, i32 %140, %struct.TYPE_35__** %6)
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @ERROR_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 @msi_free(i8* %146)
  %148 = load i64, i64* %13, align 8
  store i64 %148, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %70
  %151 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = call %struct.TYPE_34__* @MSI_CreatePackage(%struct.TYPE_35__* %151, i8* %152)
  store %struct.TYPE_34__* %153, %struct.TYPE_34__** %7, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = call i32 @msi_free(i8* %154)
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %156, i32 0, i32 2
  %158 = call i32 @msiobj_release(i32* %157)
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %160 = icmp ne %struct.TYPE_34__* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %150
  %162 = load i64, i64* @ERROR_INSTALL_PACKAGE_INVALID, align 8
  store i64 %162, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

163:                                              ; preds = %150
  %164 = call i8* @strdupW(i8* %30)
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 8
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %20, align 4
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @msi_get_suminfo(i32 %172, i32 0, %struct.TYPE_32__** %19)
  store i64 %173, i64* %13, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* @ERROR_SUCCESS, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %163
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %179 = call i64 @msi_get_db_suminfo(%struct.TYPE_35__* %178, i32 0, %struct.TYPE_32__** %19)
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* @ERROR_SUCCESS, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 4
  %187 = call i32 @msiobj_release(i32* %186)
  %188 = load i64, i64* @ERROR_INSTALL_PACKAGE_INVALID, align 8
  store i64 %188, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

189:                                              ; preds = %177
  br label %190

190:                                              ; preds = %189, %163
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %192 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %193 = call i64 @parse_suminfo(%struct.TYPE_32__* %191, %struct.TYPE_34__* %192)
  store i64 %193, i64* %13, align 8
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 0
  %196 = call i32 @msiobj_release(i32* %195)
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* @ERROR_SUCCESS, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %190
  %201 = load i64, i64* %13, align 8
  %202 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %201)
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 4
  %205 = call i32 @msiobj_release(i32* %204)
  %206 = load i64, i64* %13, align 8
  store i64 %206, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

207:                                              ; preds = %190
  %208 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %209 = call i64 @validate_package(%struct.TYPE_34__* %208)
  store i64 %209, i64* %13, align 8
  %210 = load i64, i64* %13, align 8
  %211 = load i64, i64* @ERROR_SUCCESS, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 4
  %216 = call i32 @msiobj_release(i32* %215)
  %217 = load i64, i64* %13, align 8
  store i64 %217, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

218:                                              ; preds = %207
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %220, align 8
  %222 = load i32, i32* @szDatabase, align 4
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @msi_set_property(%struct.TYPE_31__* %221, i32 %222, i32 %225, i32 -1)
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %228 = call i32 @set_installed_prop(%struct.TYPE_34__* %227)
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %230 = call i32 @msi_set_context(%struct.TYPE_34__* %229)
  br label %231

231:                                              ; preds = %271, %218
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* @GUID_SIZE, align 4
  %234 = zext i32 %233 to i64
  %235 = call i8* @llvm.stacksave()
  store i8* %235, i8** %25, align 8
  %236 = alloca i8, i64 %234, align 16
  store i64 %234, i64* %26, align 8
  %237 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @MSIPATCHSTATE_APPLIED, align 4
  %244 = load i64, i64* %18, align 8
  %245 = call i64 @MsiEnumPatchesExW(i32 %239, i32* null, i32 %242, i32 %243, i64 %244, i8* %236, i32* null, i32* null, i32* null, i32* null)
  store i64 %245, i64* %13, align 8
  %246 = load i64, i64* %13, align 8
  %247 = load i64, i64* @ERROR_SUCCESS, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %232
  store i32 3, i32* %24, align 4
  br label %268

250:                                              ; preds = %232
  %251 = call i32 @debugstr_w(i8* %236)
  %252 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %251)
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %254 = call i64 @msi_apply_registered_patch(%struct.TYPE_34__* %253, i8* %236)
  store i64 %254, i64* %13, align 8
  %255 = load i64, i64* %13, align 8
  %256 = load i64, i64* @ERROR_SUCCESS, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = load i64, i64* %13, align 8
  %260 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %259)
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %261, i32 0, i32 4
  %263 = call i32 @msiobj_release(i32* %262)
  %264 = load i64, i64* %13, align 8
  store i64 %264, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %268

265:                                              ; preds = %250
  %266 = load i64, i64* %18, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %18, align 8
  store i32 0, i32* %24, align 4
  br label %268

268:                                              ; preds = %265, %258, %249
  %269 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load i32, i32* %24, align 4
  switch i32 %270, label %398 [
    i32 0, label %271
    i32 3, label %272
  ]

271:                                              ; preds = %268
  br label %231

272:                                              ; preds = %268
  %273 = load i64, i64* %18, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %277 = call i32 @msi_adjust_privilege_properties(%struct.TYPE_34__* %276)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %280, align 8
  %282 = load i8*, i8** %4, align 8
  %283 = call i64 @msi_set_original_database_property(%struct.TYPE_31__* %281, i8* %282)
  store i64 %283, i64* %13, align 8
  %284 = load i64, i64* %13, align 8
  %285 = load i64, i64* @ERROR_SUCCESS, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %278
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 4
  %290 = call i32 @msiobj_release(i32* %289)
  %291 = load i64, i64* %13, align 8
  store i64 %291, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

292:                                              ; preds = %278
  %293 = load i64, i64* @gszLogFile, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = load i64, i64* @gszLogFile, align 8
  %297 = load i32, i32* @GENERIC_WRITE, align 4
  %298 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %299 = load i32, i32* @OPEN_EXISTING, align 4
  %300 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %301 = call i32 @CreateFileW(i64 %296, i32 %297, i32 %298, i32* null, i32 %299, i32 %300, i32* null)
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %295, %292
  %305 = call %struct.TYPE_33__* @MSI_CreateRecord(i32 3)
  store %struct.TYPE_33__* %305, %struct.TYPE_33__** %9, align 8
  %306 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %307 = icmp ne %struct.TYPE_33__* %306, null
  br i1 %307, label %310, label %308

308:                                              ; preds = %304
  %309 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %309, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

310:                                              ; preds = %304
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %312 = call i32 @MSI_RecordSetStringW(%struct.TYPE_33__* %311, i32 0, i8* null)
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %314 = call i32 @MSI_RecordSetInteger(%struct.TYPE_33__* %313, i32 1, i32 0)
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %310
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  br label %327

326:                                              ; preds = %310
  br label %327

327:                                              ; preds = %326, %320
  %328 = phi i32 [ %325, %320 ], [ 0, %326 ]
  %329 = call i32 @MSI_RecordSetInteger(%struct.TYPE_33__* %315, i32 2, i32 %328)
  %330 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %331 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @msi_get_string_table_codepage(i32 %335)
  %337 = call i32 @MSI_RecordSetInteger(%struct.TYPE_33__* %330, i32 3, i32 %336)
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %339 = load i32, i32* @INSTALLMESSAGE_COMMONDATA, align 4
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %341 = call i32 @MSI_ProcessMessageVerbatim(%struct.TYPE_34__* %338, i32 %339, %struct.TYPE_33__* %340)
  %342 = call %struct.TYPE_33__* @MSI_CreateRecord(i32 0)
  store %struct.TYPE_33__* %342, %struct.TYPE_33__** %10, align 8
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %344 = icmp ne %struct.TYPE_33__* %343, null
  br i1 %344, label %350, label %345

345:                                              ; preds = %327
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %346, i32 0, i32 0
  %348 = call i32 @msiobj_release(i32* %347)
  %349 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %349, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

350:                                              ; preds = %327
  %351 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_31__*, %struct.TYPE_31__** %352, align 8
  %354 = load i32, i32* @MSIERR_INFO_LOGGINGSTART, align 4
  %355 = call i8* @msi_get_error_message(%struct.TYPE_31__* %353, i32 %354)
  store i8* %355, i8** %22, align 8
  %356 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %357 = load i8*, i8** %22, align 8
  %358 = call i32 @MSI_RecordSetStringW(%struct.TYPE_33__* %356, i32 0, i8* %357)
  %359 = load i8*, i8** %22, align 8
  %360 = call i32 @msi_free(i8* %359)
  %361 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %362 = load i32, i32* @INSTALLMESSAGE_INFO, align 4
  %363 = load i32, i32* @MB_ICONHAND, align 4
  %364 = or i32 %362, %363
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %366 = call i32 @MSI_ProcessMessage(%struct.TYPE_34__* %361, i32 %364, %struct.TYPE_33__* %365)
  %367 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %368 = load i32, i32* @INSTALLMESSAGE_COMMONDATA, align 4
  %369 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %370 = call i32 @MSI_ProcessMessage(%struct.TYPE_34__* %367, i32 %368, %struct.TYPE_33__* %369)
  %371 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_31__*, %struct.TYPE_31__** %372, align 8
  %374 = load i32, i32* @INSTALLPROPERTY_PRODUCTNAMEW, align 4
  %375 = call i8* @msi_dup_property(%struct.TYPE_31__* %373, i32 %374)
  store i8* %375, i8** %21, align 8
  %376 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %377 = call i32 @MSI_RecordSetInteger(%struct.TYPE_33__* %376, i32 1, i32 1)
  %378 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %379 = load i8*, i8** %21, align 8
  %380 = call i32 @MSI_RecordSetStringW(%struct.TYPE_33__* %378, i32 2, i8* %379)
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %382 = call i32 @MSI_RecordSetStringW(%struct.TYPE_33__* %381, i32 3, i8* null)
  %383 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %384 = load i32, i32* @INSTALLMESSAGE_COMMONDATA, align 4
  %385 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %386 = call i32 @MSI_ProcessMessage(%struct.TYPE_34__* %383, i32 %384, %struct.TYPE_33__* %385)
  %387 = load i8*, i8** %21, align 8
  %388 = call i32 @msi_free(i8* %387)
  %389 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %389, i32 0, i32 0
  %391 = call i32 @msiobj_release(i32* %390)
  %392 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %392, i32 0, i32 0
  %394 = call i32 @msiobj_release(i32* %393)
  %395 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %396 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  store %struct.TYPE_34__* %395, %struct.TYPE_34__** %396, align 8
  %397 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %397, i64* %3, align 8
  store i32 1, i32* %24, align 4
  br label %398

398:                                              ; preds = %350, %345, %308, %287, %268, %213, %200, %183, %161, %145, %124, %115, %89, %82, %65, %63
  %399 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %399)
  %400 = load i64, i64* %3, align 8
  ret i64 %400
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @MSI_ProcessMessage(%struct.TYPE_34__*, i32, %struct.TYPE_33__*) #2

declare dso_local i32 @atoiW(i8*) #2

declare dso_local %struct.TYPE_35__* @msihandle2msiinfo(i32, i32) #2

declare dso_local i64 @msi_get_remote(i32) #2

declare dso_local i32 @IWineMsiRemoteDatabase_Release(i32*) #2

declare dso_local i32 @WARN(i8*, ...) #2

declare dso_local i64 @UrlIsW(i8*, i32) #2

declare dso_local i64 @msi_download_file(i8*, i8*) #2

declare dso_local i8* @strdupW(i8*) #2

declare dso_local i8* @strrchrW(i8*, i8 signext) #2

declare dso_local i64 @get_local_package(i8*, i8*) #2

declare dso_local i64 @GetFileAttributesW(i8*) #2

declare dso_local i64 @msi_create_empty_local_file(i8*, i8*) #2

declare dso_local i32 @msi_free(i8*) #2

declare dso_local i32 @CopyFileW(i8*, i8*, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @DeleteFileW(i8*) #2

declare dso_local i64 @MSI_OpenDatabaseW(i8*, i32, %struct.TYPE_35__**) #2

declare dso_local %struct.TYPE_34__* @MSI_CreatePackage(%struct.TYPE_35__*, i8*) #2

declare dso_local i32 @msiobj_release(i32*) #2

declare dso_local i64 @msi_get_suminfo(i32, i32, %struct.TYPE_32__**) #2

declare dso_local i64 @msi_get_db_suminfo(%struct.TYPE_35__*, i32, %struct.TYPE_32__**) #2

declare dso_local i64 @parse_suminfo(%struct.TYPE_32__*, %struct.TYPE_34__*) #2

declare dso_local i64 @validate_package(%struct.TYPE_34__*) #2

declare dso_local i32 @msi_set_property(%struct.TYPE_31__*, i32, i32, i32) #2

declare dso_local i32 @set_installed_prop(%struct.TYPE_34__*) #2

declare dso_local i32 @msi_set_context(%struct.TYPE_34__*) #2

declare dso_local i64 @MsiEnumPatchesExW(i32, i32*, i32, i32, i64, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @msi_apply_registered_patch(%struct.TYPE_34__*, i8*) #2

declare dso_local i32 @ERR(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @msi_adjust_privilege_properties(%struct.TYPE_34__*) #2

declare dso_local i64 @msi_set_original_database_property(%struct.TYPE_31__*, i8*) #2

declare dso_local i32 @CreateFileW(i64, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local %struct.TYPE_33__* @MSI_CreateRecord(i32) #2

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_33__*, i32, i8*) #2

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_33__*, i32, i32) #2

declare dso_local i32 @msi_get_string_table_codepage(i32) #2

declare dso_local i32 @MSI_ProcessMessageVerbatim(%struct.TYPE_34__*, i32, %struct.TYPE_33__*) #2

declare dso_local i8* @msi_get_error_message(%struct.TYPE_31__*, i32) #2

declare dso_local i8* @msi_dup_property(%struct.TYPE_31__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
