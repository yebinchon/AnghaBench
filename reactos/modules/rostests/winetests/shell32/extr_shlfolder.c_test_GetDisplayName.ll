; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_GetDisplayName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_GetDisplayName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@test_GetDisplayName.szFileName = internal constant [13 x i8] c"winetest.foo\00", align 1
@test_GetDisplayName.wszFileName = internal constant [13 x i8] c"winetest.foo\00", align 1
@test_GetDisplayName.wszDirName = internal constant [9 x i8] c"winetest\00", align 1
@__const.test_GetDisplayName.wszAbsoluteFilename = private unnamed_addr constant [12 x i8] c"C:\\winetest\00", align 1
@CSIDL_PERSONAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SHGetSpecialFolderPathA failed! Last error: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\\winetest\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to create the '%s' directory\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"CreateFileA failed! Last error: %u\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"SHGetDesktopFolder failed! hr = %08x\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Desktop->ParseDisplayName failed! hr = %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Expected pidl length of at least 76, got %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Filename should be stored as ansi-string at this position!\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"Filename should be stored as wchar-string at this position!\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"hr = %08x\0A\00", align 1
@IID_IShellFolder = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"SHBindToParent failed! hr = %08x\0A\00", align 1
@SHGDN_NORMAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"SetNameOf failed! hr = %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"pidl returned from SetNameOf should be simple!\0A\00", align 1
@SHGDN_FORPARSING = common dso_local global i32 0, align 4
@ERROR_CANCELLED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"SetNameOf succeeded! hr = %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"SHGetPathFromIDListW failed! Last error: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"SHGetPathFromIDListW returns incorrect path!\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [45 x i8] c"SHBindToParent(NULL) should fail! hr = %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"SHBindToParent(empty PIDL) should succeed! hr = %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"The last element of an empty PIDL should be the PIDL itself!\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"SHBindToParent doesn't return the last id of the pidl param!\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Personal->GetDisplayNameOf failed! hr = %08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"StrRetToBufW failed! hr = %08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"GetDisplayNameOf returns incorrect path!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDisplayName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDisplayName() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca [12 x i8], align 1
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca i32, align 4
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %4, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %5, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %8, align 8
  %34 = bitcast %struct.TYPE_23__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 8, i1 false)
  %35 = bitcast %struct.TYPE_23__* %14 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %16, align 8
  %36 = bitcast [12 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_GetDisplayName.wszAbsoluteFilename, i32 0, i32 0), i64 12, i1 false)
  %37 = load i32, i32* @CSIDL_PERSONAL, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @SHGetSpecialFolderPathA(i32* null, i8* %33, i32 %37, i32 %38)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %0
  store i32 1, i32* %20, align 4
  br label %402

46:                                               ; preds = %0
  %47 = call i32 @lstrcatA(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @CreateDirectoryA(i8* %33, i32* null)
  %49 = call i32 @GetFileAttributesA(i8* %33)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53, %46
  %59 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 1, i32* %20, align 4
  br label %402

60:                                               ; preds = %53
  %61 = call i32 @lstrcpyA(i8* %30, i8* %33)
  %62 = call i32 @lstrcatA(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @lstrcatA(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetDisplayName.szFileName, i64 0, i64 0))
  %64 = load i32, i32* @GENERIC_WRITE, align 4
  %65 = load i32, i32* @CREATE_ALWAYS, align 4
  %66 = call i64 @CreateFileA(i8* %30, i32 %64, i32 0, i32* null, i32 %65, i32 0, i32* null)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  store i32 1, i32* %20, align 4
  br label %402

77:                                               ; preds = %60
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @CloseHandle(i64 %78)
  %80 = call i32 @SHGetDesktopFolder(i32* %11)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @S_OK, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %2, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @S_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  store i32 1, i32* %20, align 4
  br label %402

91:                                               ; preds = %77
  %92 = load i32, i32* @CP_ACP, align 4
  %93 = load i32, i32* @MAX_PATH, align 4
  %94 = call i32 @MultiByteToWideChar(i32 %92, i32 0, i8* %30, i32 -1, i8* %24, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @IShellFolder_ParseDisplayName(i32 %95, i32* null, i32* null, i8* %24, i32* null, %struct.TYPE_24__** %15, i32* null)
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @S_OK, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %2, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @S_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %91
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @IShellFolder_Release(i32 %107)
  store i32 1, i32* %20, align 4
  br label %402

109:                                              ; preds = %91
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %111 = call %struct.TYPE_24__* @ILFindLastID(%struct.TYPE_24__* %110)
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %17, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %115, 76
  %117 = zext i1 %116 to i32
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %126, 28
  br i1 %127, label %128, label %140

128:                                              ; preds = %109
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 12
  %134 = bitcast i32* %133 to i8*
  %135 = call i32 @lstrcmpA(i8* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetDisplayName.szFileName, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  br label %140

140:                                              ; preds = %128, %109
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %144, 76
  br i1 %145, label %146, label %207

146:                                              ; preds = %140
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 46
  %152 = bitcast i32* %151 to i8*
  %153 = call i32 @lstrcmpW(i8* %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetDisplayName.wszFileName, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %203

155:                                              ; preds = %146
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sge i32 %159, 94
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 64
  %167 = bitcast i32* %166 to i8*
  %168 = call i32 @lstrcmpW(i8* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetDisplayName.wszFileName, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %203

170:                                              ; preds = %161, %155
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sge i32 %174, 98
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 68
  %182 = bitcast i32* %181 to i8*
  %183 = call i32 @lstrcmpW(i8* %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetDisplayName.wszFileName, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %176, %170
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sge i32 %189, 102
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 72
  %197 = bitcast i32* %196 to i8*
  %198 = call i32 @lstrcmpW(i8* %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetDisplayName.wszFileName, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %191, %185
  %202 = phi i1 [ false, %185 ], [ %200, %191 ]
  br label %203

203:                                              ; preds = %201, %176, %161, %146
  %204 = phi i1 [ true, %176 ], [ true, %161 ], [ true, %146 ], [ %202, %201 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  br label %207

207:                                              ; preds = %203, %140
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %210 = call i32 @IShellFolder_BindToObject(i32 %208, %struct.TYPE_24__* %209, i32* null, i32* @IID_IUnknown, i32** %13)
  store i32 %210, i32* %2, align 4
  %211 = load i32, i32* %2, align 4
  %212 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %213 = call i32 @HRESULT_FROM_WIN32(i32 %212)
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %2, align 4
  %217 = load i32, i32* @E_NOTIMPL, align 4
  %218 = icmp eq i32 %216, %217
  br label %219

219:                                              ; preds = %215, %207
  %220 = phi i1 [ true, %207 ], [ %218, %215 ]
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %2, align 4
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %2, align 4
  %225 = load i32, i32* @S_OK, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load i32*, i32** %13, align 8
  %229 = call i32 @IUnknown_Release(i32* %228)
  br label %230

230:                                              ; preds = %227, %219
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %232 = bitcast i32* %12 to i8**
  %233 = call i32 @SHBindToParent(%struct.TYPE_24__* %231, i32* @IID_IShellFolder, i8** %232, %struct.TYPE_24__** %17)
  store i32 %233, i32* %2, align 4
  %234 = load i32, i32* %2, align 4
  %235 = load i32, i32* @S_OK, align 4
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* %2, align 4
  %239 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %242 = load i32, i32* @SHGDN_NORMAL, align 4
  %243 = call i32 @IShellFolder_SetNameOf(i32 %240, i32* null, %struct.TYPE_24__* %241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetDisplayName.wszDirName, i64 0, i64 0), i32 %242, %struct.TYPE_24__** %19)
  store i32 %243, i32* %2, align 4
  %244 = load i32, i32* %2, align 4
  %245 = load i32, i32* @S_OK, align 4
  %246 = icmp eq i32 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* %2, align 4
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %248)
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %251 = bitcast %struct.TYPE_24__* %250 to i32*
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %251, i64 %256
  %258 = bitcast i32* %257 to %struct.TYPE_25__*
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  %263 = zext i1 %262 to i32
  %264 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %265 = load i32, i32* %12, align 4
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %267 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %268 = load i32, i32* @SHGDN_FORPARSING, align 4
  %269 = call i32 @IShellFolder_SetNameOf(i32 %265, i32* null, %struct.TYPE_24__* %266, i8* %267, i32 %268, %struct.TYPE_24__** null)
  store i32 %269, i32* %2, align 4
  %270 = load i32, i32* %2, align 4
  %271 = load i32, i32* @ERROR_CANCELLED, align 4
  %272 = call i32 @HRESULT_FROM_WIN32(i32 %271)
  %273 = icmp eq i32 %270, %272
  %274 = zext i1 %273 to i32
  %275 = load i32, i32* %2, align 4
  %276 = call i32 (i32, i8*, ...) @ok(i32 %274, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %275)
  %277 = load i32, i32* %12, align 4
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %279 = load i32, i32* @SHGDN_FORPARSING, align 4
  %280 = call i32 @IShellFolder_SetNameOf(i32 %277, i32* null, %struct.TYPE_24__* %278, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetDisplayName.wszFileName, i64 0, i64 0), i32 %279, %struct.TYPE_24__** null)
  store i32 %280, i32* %2, align 4
  %281 = load i32, i32* %2, align 4
  %282 = load i32, i32* @S_OK, align 4
  %283 = icmp eq i32 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %2, align 4
  %286 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %285)
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %288 = call i32 @ILFree(%struct.TYPE_24__* %287)
  %289 = load i32, i32* %12, align 4
  %290 = call i32 @IShellFolder_Release(i32 %289)
  %291 = call i32 @DeleteFileA(i8* %30)
  %292 = call i32 @RemoveDirectoryA(i8* %33)
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %294 = call i32 @SHGetPathFromIDListW(%struct.TYPE_24__* %293, i8* %27)
  store i32 %294, i32* %1, align 4
  %295 = load i32, i32* %1, align 4
  %296 = call i32 (...) @GetLastError()
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 %296)
  %298 = call i32 @lstrcmpiW(i8* %24, i8* %27)
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i32
  %302 = call i32 (i32, i8*, ...) @ok(i32 %301, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  %303 = bitcast i32* %12 to i8**
  %304 = call i32 @SHBindToParent(%struct.TYPE_24__* null, i32* @IID_IShellFolder, i8** %303, %struct.TYPE_24__** %17)
  store i32 %304, i32* %2, align 4
  %305 = load i32, i32* %2, align 4
  %306 = load i32, i32* @E_INVALIDARG, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %315, label %308

308:                                              ; preds = %230
  %309 = load i32, i32* %2, align 4
  %310 = load i32, i32* @E_OUTOFMEMORY, align 4
  %311 = icmp eq i32 %309, %310
  %312 = zext i1 %311 to i32
  %313 = call i64 @broken(i32 %312)
  %314 = icmp ne i64 %313, 0
  br label %315

315:                                              ; preds = %308, %230
  %316 = phi i1 [ true, %230 ], [ %314, %308 ]
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %2, align 4
  %319 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %318)
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %321 = bitcast i32* %12 to i8**
  %322 = call i32 @SHBindToParent(%struct.TYPE_24__* %320, i32* @IID_IShellFolder, i8** %321, %struct.TYPE_24__** %17)
  store i32 %322, i32* %2, align 4
  %323 = load i32, i32* %2, align 4
  %324 = load i32, i32* @S_OK, align 4
  %325 = icmp eq i32 %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* %2, align 4
  %328 = call i32 (i32, i8*, ...) @ok(i32 %326, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i32 %327)
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %331 = icmp eq %struct.TYPE_24__* %329, %330
  %332 = zext i1 %331 to i32
  %333 = call i32 (i32, i8*, ...) @ok(i32 %332, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i64 0, i64 0))
  %334 = load i32, i32* %2, align 4
  %335 = load i32, i32* @S_OK, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %315
  %338 = load i32, i32* %12, align 4
  %339 = call i32 @IShellFolder_Release(i32 %338)
  br label %340

340:                                              ; preds = %337, %315
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %342 = bitcast i32* %12 to i8**
  %343 = call i32 @SHBindToParent(%struct.TYPE_24__* %341, i32* @IID_IShellFolder, i8** %342, %struct.TYPE_24__** %17)
  store i32 %343, i32* %2, align 4
  %344 = load i32, i32* %2, align 4
  %345 = load i32, i32* @S_OK, align 4
  %346 = icmp eq i32 %344, %345
  %347 = zext i1 %346 to i32
  %348 = load i32, i32* %2, align 4
  %349 = call i32 (i32, i8*, ...) @ok(i32 %347, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* %2, align 4
  %351 = load i32, i32* @S_OK, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %340
  %354 = load i32, i32* %11, align 4
  %355 = call i32 @IShellFolder_Release(i32 %354)
  store i32 1, i32* %20, align 4
  br label %402

356:                                              ; preds = %340
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %358 = call %struct.TYPE_24__* @ILFindLastID(%struct.TYPE_24__* %357)
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %360 = icmp eq %struct.TYPE_24__* %358, %359
  %361 = zext i1 %360 to i32
  %362 = call i32 (i32, i8*, ...) @ok(i32 %361, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0))
  %363 = load i32, i32* %12, align 4
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %365 = load i32, i32* @SHGDN_FORPARSING, align 4
  %366 = call i32 @IShellFolder_GetDisplayNameOf(i32 %363, %struct.TYPE_24__* %364, i32 %365, i32* %10)
  store i32 %366, i32* %2, align 4
  %367 = load i32, i32* %2, align 4
  %368 = load i32, i32* @S_OK, align 4
  %369 = icmp eq i32 %367, %368
  %370 = zext i1 %369 to i32
  %371 = load i32, i32* %2, align 4
  %372 = call i32 (i32, i8*, ...) @ok(i32 %370, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* %2, align 4
  %374 = load i32, i32* @S_OK, align 4
  %375 = icmp ne i32 %373, %374
  br i1 %375, label %376, label %381

376:                                              ; preds = %356
  %377 = load i32, i32* %11, align 4
  %378 = call i32 @IShellFolder_Release(i32 %377)
  %379 = load i32, i32* %12, align 4
  %380 = call i32 @IShellFolder_Release(i32 %379)
  store i32 1, i32* %20, align 4
  br label %402

381:                                              ; preds = %356
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %383 = load i32, i32* @MAX_PATH, align 4
  %384 = call i32 @StrRetToBufW(i32* %10, %struct.TYPE_24__* %382, i8* %27, i32 %383)
  store i32 %384, i32* %2, align 4
  %385 = load i32, i32* %2, align 4
  %386 = load i32, i32* @S_OK, align 4
  %387 = icmp eq i32 %385, %386
  %388 = zext i1 %387 to i32
  %389 = load i32, i32* %2, align 4
  %390 = call i32 (i32, i8*, ...) @ok(i32 %388, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 %389)
  %391 = call i32 @lstrcmpiW(i8* %24, i8* %27)
  %392 = icmp ne i32 %391, 0
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  %395 = call i32 (i32, i8*, ...) @ok(i32 %394, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0))
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %397 = call i32 @ILFree(%struct.TYPE_24__* %396)
  %398 = load i32, i32* %11, align 4
  %399 = call i32 @IShellFolder_Release(i32 %398)
  %400 = load i32, i32* %12, align 4
  %401 = call i32 @IShellFolder_Release(i32 %400)
  store i32 0, i32* %20, align 4
  br label %402

402:                                              ; preds = %381, %376, %353, %106, %90, %76, %58, %45
  %403 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %403)
  %404 = load i32, i32* %20, align 4
  switch i32 %404, label %406 [
    i32 0, label %405
    i32 1, label %405
  ]

405:                                              ; preds = %402, %402
  ret void

406:                                              ; preds = %402
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SHGetSpecialFolderPathA(i32*, i8*, i32, i32) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @lstrcatA(i8*, i8*) #3

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #3

declare dso_local i32 @GetFileAttributesA(i8*) #3

declare dso_local i32 @lstrcpyA(i8*, i8*) #3

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @SHGetDesktopFolder(i32*) #3

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #3

declare dso_local i32 @IShellFolder_ParseDisplayName(i32, i32*, i32*, i8*, i32*, %struct.TYPE_24__**, i32*) #3

declare dso_local i32 @IShellFolder_Release(i32) #3

declare dso_local %struct.TYPE_24__* @ILFindLastID(%struct.TYPE_24__*) #3

declare dso_local i32 @lstrcmpA(i8*, i8*) #3

declare dso_local i32 @lstrcmpW(i8*, i8*) #3

declare dso_local i32 @IShellFolder_BindToObject(i32, %struct.TYPE_24__*, i32*, i32*, i32**) #3

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #3

declare dso_local i32 @IUnknown_Release(i32*) #3

declare dso_local i32 @SHBindToParent(%struct.TYPE_24__*, i32*, i8**, %struct.TYPE_24__**) #3

declare dso_local i32 @IShellFolder_SetNameOf(i32, i32*, %struct.TYPE_24__*, i8*, i32, %struct.TYPE_24__**) #3

declare dso_local i32 @ILFree(%struct.TYPE_24__*) #3

declare dso_local i32 @DeleteFileA(i8*) #3

declare dso_local i32 @RemoveDirectoryA(i8*) #3

declare dso_local i32 @SHGetPathFromIDListW(%struct.TYPE_24__*, i8*) #3

declare dso_local i32 @lstrcmpiW(i8*, i8*) #3

declare dso_local i64 @broken(i32) #3

declare dso_local i32 @IShellFolder_GetDisplayNameOf(i32, %struct.TYPE_24__*, i32, i32*) #3

declare dso_local i32 @StrRetToBufW(i32*, %struct.TYPE_24__*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
