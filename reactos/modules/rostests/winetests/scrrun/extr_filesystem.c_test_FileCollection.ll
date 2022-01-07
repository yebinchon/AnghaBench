; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_FileCollection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_FileCollection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_FileCollection.fooW = internal constant [5 x i8] c"\\foo\00", align 1
@test_FileCollection.aW = internal constant [3 x i8] c"\\a\00", align 1
@test_FileCollection.bW = internal constant [3 x i8] c"\\b\00", align 1
@test_FileCollection.cW = internal constant [3 x i8] c"\\c\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@fs3 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_POINTER = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_FLAG_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@CLSID_Files = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@IID_IEnumVARIANT = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%d: got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%d: got %d\0A\00", align 1
@VT_DISPATCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"%d: got type %d\0A\00", align 1
@IID_IFile = common dso_local global i32 0, align 4
@CLSID_File = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"unexpected file %s was found\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"each file should be found 1 time instead of %d/%d/%d\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"got type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FileCollection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FileCollection() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %1, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %2, align 8
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %3, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %33 = call i32 @get_temp_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_FileCollection.fooW, i64 0, i64 0), i8* %29)
  %34 = call i32 @CreateDirectoryW(i8* %29, i32* null)
  %35 = call i32* @SysAllocString(i8* %29)
  store i32* %35, i32** %19, align 8
  %36 = load i32, i32* @fs3, align 4
  %37 = load i32*, i32** %19, align 8
  %38 = call i32 @IFileSystem3_GetFolder(i32 %36, i32* %37, i32** %4)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %18, align 4
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %19, align 8
  %46 = call i32 @SysFreeString(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @IFolder_get_Files(i32* %47, i32** null)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* @E_POINTER, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %18, align 4
  %54 = call i32 (i32, i8*, i32, ...) @ok(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 @lstrcpyW(i8* %32, i8* %29)
  %56 = call i32 @lstrcatW(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_FileCollection.aW, i64 0, i64 0))
  %57 = load i32, i32* @GENERIC_READ, align 4
  %58 = load i32, i32* @GENERIC_WRITE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CREATE_ALWAYS, align 4
  %61 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %62 = call i32 @CreateFileW(i8* %32, i32 %59, i32 0, i32* null, i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %20, align 4
  %63 = call i32 @lstrcpyW(i8* %32, i8* %29)
  %64 = call i32 @lstrcatW(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_FileCollection.bW, i64 0, i64 0))
  %65 = load i32, i32* @GENERIC_READ, align 4
  %66 = load i32, i32* @GENERIC_WRITE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CREATE_ALWAYS, align 4
  %69 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %70 = call i32 @CreateFileW(i8* %32, i32 %67, i32 0, i32* null, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %21, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @IFolder_get_Files(i32* %71, i32** %5)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @S_OK, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %18, align 4
  %78 = call i32 (i32, i8*, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @test_provideclassinfo(i32* %79, i32* @CLSID_Files)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @IFolder_Release(i32* %81)
  store i32 0, i32* %9, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @IFileCollection_get_Count(i32* %83, i32* %9)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @S_OK, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %18, align 4
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 2
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i32, i8*, i32, ...) @ok(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = call i32 @lstrcpyW(i8* %32, i8* %29)
  %97 = call i32 @lstrcatW(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_FileCollection.cW, i64 0, i64 0))
  %98 = load i32, i32* @GENERIC_READ, align 4
  %99 = load i32, i32* @GENERIC_WRITE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @CREATE_ALWAYS, align 4
  %102 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %103 = call i32 @CreateFileW(i8* %32, i32 %100, i32 0, i32* null, i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %22, align 4
  store i32 0, i32* %9, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @IFileCollection_get_Count(i32* %104, i32* %9)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @S_OK, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %18, align 4
  %111 = call i32 (i32, i8*, i32, ...) @ok(i32 %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 3
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @IFileCollection_get__NewEnum(i32* %117, i32** null)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @E_POINTER, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %18, align 4
  %124 = call i32 (i32, i8*, i32, ...) @ok(i32 %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = bitcast i32** %13 to i8**
  %127 = call i32 @IFileCollection_QueryInterface(i32* %125, i32* @IID_IEnumVARIANT, i8** %126)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @E_NOINTERFACE, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %18, align 4
  %133 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @GET_REFCOUNT(i32* %134)
  store i32 %135, i32* %10, align 4
  store i32* null, i32** %13, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @IFileCollection_get__NewEnum(i32* %136, i32** %13)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* @S_OK, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %18, align 4
  %143 = call i32 (i32, i8*, i32, ...) @ok(i32 %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @GET_REFCOUNT(i32* %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  %149 = icmp eq i32 %146, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %152)
  store i32* null, i32** %14, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @IFileCollection_get__NewEnum(i32* %154, i32** %14)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* @S_OK, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %18, align 4
  %161 = call i32 (i32, i8*, i32, ...) @ok(i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %13, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = icmp ne i32* %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i32*, i32** %14, align 8
  %167 = ptrtoint i32* %166 to i32
  %168 = load i32*, i32** %13, align 8
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %167, i32* %168)
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 @IUnknown_Release(i32* %170)
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @GET_REFCOUNT(i32* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32*, i32** %13, align 8
  %175 = bitcast i32** %7 to i8**
  %176 = call i32 @IUnknown_QueryInterface(i32* %174, i32* @IID_IEnumVARIANT, i8** %175)
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* @S_OK, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %18, align 4
  %182 = call i32 (i32, i8*, i32, ...) @ok(i32 %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %181)
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @GET_REFCOUNT(i32* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (i32, i8*, i32, ...) @ok(i32 %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @IEnumVARIANT_Clone(i32* %192, i32** %8)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* @S_OK, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %18, align 4
  %199 = call i32 (i32, i8*, i32, ...) @ok(i32 %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %198)
  %200 = load i32*, i32** %8, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = icmp ne i32* %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32*, i32** %7, align 8
  %205 = ptrtoint i32* %204 to i32
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 (i32, i8*, i32, ...) @ok(i32 %203, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %205, i32* %206)
  %208 = load i32*, i32** %8, align 8
  %209 = call i32 @IEnumVARIANT_Release(i32* %208)
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 @IEnumVARIANT_Reset(i32* %210)
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* @S_OK, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %18, align 4
  %217 = call i32 (i32, i8*, i32, ...) @ok(i32 %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %216)
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %296, %0
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, 3
  br i1 %220, label %221, label %299

221:                                              ; preds = %218
  %222 = call i32 @VariantInit(i32* %16)
  store i32 0, i32* %15, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = call i32 @IEnumVARIANT_Next(i32* %223, i32 1, i32* %16, i32* %15)
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* @S_OK, align 4
  %227 = icmp eq i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %18, align 4
  %231 = call i32 (i32, i8*, i32, ...) @ok(i32 %228, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load i32, i32* %15, align 4
  %233 = icmp eq i32 %232, 1
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %15, align 4
  %237 = call i32 (i32, i8*, i32, ...) @ok(i32 %234, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %235, i32 %236)
  %238 = call i32 @V_VT(i32* %16)
  %239 = load i32, i32* @VT_DISPATCH, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @V_VT(i32* %16)
  %244 = call i32 (i32, i8*, i32, ...) @ok(i32 %241, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %242, i32 %243)
  %245 = call i32 @V_DISPATCH(i32* %16)
  %246 = bitcast i32** %6 to i8**
  %247 = call i32 @IDispatch_QueryInterface(i32 %245, i32* @IID_IFile, i8** %246)
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* @S_OK, align 4
  %250 = icmp eq i32 %248, %249
  %251 = zext i1 %250 to i32
  %252 = load i32, i32* %18, align 4
  %253 = call i32 (i32, i8*, i32, ...) @ok(i32 %251, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %252)
  %254 = load i32*, i32** %6, align 8
  %255 = call i32 @test_provideclassinfo(i32* %254, i32* @CLSID_File)
  store i32* null, i32** %19, align 8
  %256 = load i32*, i32** %6, align 8
  %257 = call i32 @IFile_get_Name(i32* %256, i32** %19)
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* @S_OK, align 4
  %260 = icmp eq i32 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %18, align 4
  %263 = call i32 (i32, i8*, i32, ...) @ok(i32 %261, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %262)
  %264 = load i32*, i32** %19, align 8
  %265 = call i32 @lstrcmpW(i32* %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_FileCollection.aW, i64 0, i64 1))
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %221
  %268 = load i32, i32* %23, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %23, align 4
  br label %290

270:                                              ; preds = %221
  %271 = load i32*, i32** %19, align 8
  %272 = call i32 @lstrcmpW(i32* %271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_FileCollection.bW, i64 0, i64 1))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %24, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %24, align 4
  br label %289

277:                                              ; preds = %270
  %278 = load i32*, i32** %19, align 8
  %279 = call i32 @lstrcmpW(i32* %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_FileCollection.cW, i64 0, i64 1))
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %25, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %25, align 4
  br label %288

284:                                              ; preds = %277
  %285 = load i32*, i32** %19, align 8
  %286 = call i32 @wine_dbgstr_w(i32* %285)
  %287 = call i32 (i32, i8*, i32, ...) @ok(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %284, %281
  br label %289

289:                                              ; preds = %288, %274
  br label %290

290:                                              ; preds = %289, %267
  %291 = load i32*, i32** %19, align 8
  %292 = call i32 @SysFreeString(i32* %291)
  %293 = load i32*, i32** %6, align 8
  %294 = call i32 @IFile_Release(i32* %293)
  %295 = call i32 @VariantClear(i32* %16)
  br label %296

296:                                              ; preds = %290
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %12, align 4
  br label %218

299:                                              ; preds = %218
  %300 = load i32, i32* %23, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load i32, i32* %24, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i32, i32* %25, align 4
  %307 = icmp eq i32 %306, 1
  br label %308

308:                                              ; preds = %305, %302, %299
  %309 = phi i1 [ false, %302 ], [ false, %299 ], [ %307, %305 ]
  %310 = zext i1 %309 to i32
  %311 = load i32, i32* %23, align 4
  %312 = load i32, i32* %24, align 4
  %313 = load i32, i32* %25, align 4
  %314 = call i32 (i32, i8*, i32, ...) @ok(i32 %310, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %311, i32 %312, i32 %313)
  %315 = call i32 @VariantInit(i32* %16)
  store i32 -1, i32* %15, align 4
  %316 = load i32*, i32** %7, align 8
  %317 = call i32 @IEnumVARIANT_Next(i32* %316, i32 1, i32* %16, i32* %15)
  store i32 %317, i32* %18, align 4
  %318 = load i32, i32* %18, align 4
  %319 = load i32, i32* @S_FALSE, align 4
  %320 = icmp eq i32 %318, %319
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* %18, align 4
  %323 = call i32 (i32, i8*, i32, ...) @ok(i32 %321, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %322)
  %324 = load i32, i32* %15, align 4
  %325 = icmp eq i32 %324, 0
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* %15, align 4
  %328 = call i32 (i32, i8*, i32, ...) @ok(i32 %326, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %327)
  %329 = load i32*, i32** %7, align 8
  %330 = call i32 @IEnumVARIANT_Reset(i32* %329)
  store i32 %330, i32* %18, align 4
  %331 = load i32, i32* %18, align 4
  %332 = load i32, i32* @S_OK, align 4
  %333 = icmp eq i32 %331, %332
  %334 = zext i1 %333 to i32
  %335 = load i32, i32* %18, align 4
  %336 = call i32 (i32, i8*, i32, ...) @ok(i32 %334, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %335)
  %337 = load i32*, i32** %7, align 8
  %338 = call i32 @IEnumVARIANT_Skip(i32* %337, i32 2)
  store i32 %338, i32* %18, align 4
  %339 = load i32, i32* %18, align 4
  %340 = load i32, i32* @S_OK, align 4
  %341 = icmp eq i32 %339, %340
  %342 = zext i1 %341 to i32
  %343 = load i32, i32* %18, align 4
  %344 = call i32 (i32, i8*, i32, ...) @ok(i32 %342, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %343)
  %345 = load i32*, i32** %7, align 8
  %346 = call i32 @IEnumVARIANT_Skip(i32* %345, i32 0)
  store i32 %346, i32* %18, align 4
  %347 = load i32, i32* %18, align 4
  %348 = load i32, i32* @S_OK, align 4
  %349 = icmp eq i32 %347, %348
  %350 = zext i1 %349 to i32
  %351 = load i32, i32* %18, align 4
  %352 = call i32 (i32, i8*, i32, ...) @ok(i32 %350, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %351)
  %353 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %354 = call i32 @VariantInit(i32* %353)
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %356 = call i32 @VariantInit(i32* %355)
  store i32 -1, i32* %15, align 4
  %357 = load i32*, i32** %7, align 8
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %359 = call i32 @IEnumVARIANT_Next(i32* %357, i32 0, i32* %358, i32* %15)
  store i32 %359, i32* %18, align 4
  %360 = load i32, i32* %18, align 4
  %361 = load i32, i32* @S_OK, align 4
  %362 = icmp eq i32 %360, %361
  %363 = zext i1 %362 to i32
  %364 = load i32, i32* %18, align 4
  %365 = call i32 (i32, i8*, i32, ...) @ok(i32 %363, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %364)
  %366 = load i32, i32* %15, align 4
  %367 = icmp eq i32 %366, 0
  %368 = zext i1 %367 to i32
  %369 = load i32, i32* %15, align 4
  %370 = call i32 (i32, i8*, i32, ...) @ok(i32 %368, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %369)
  store i32 -1, i32* %15, align 4
  %371 = load i32*, i32** %7, align 8
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %373 = call i32 @IEnumVARIANT_Next(i32* %371, i32 2, i32* %372, i32* %15)
  store i32 %373, i32* %18, align 4
  %374 = load i32, i32* %18, align 4
  %375 = load i32, i32* @S_FALSE, align 4
  %376 = icmp eq i32 %374, %375
  %377 = zext i1 %376 to i32
  %378 = load i32, i32* %18, align 4
  %379 = call i32 (i32, i8*, i32, ...) @ok(i32 %377, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %378)
  %380 = load i32, i32* %15, align 4
  %381 = icmp eq i32 %380, 1
  %382 = zext i1 %381 to i32
  %383 = load i32, i32* %15, align 4
  %384 = call i32 (i32, i8*, i32, ...) @ok(i32 %382, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %383)
  %385 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %386 = call i32 @V_VT(i32* %385)
  %387 = load i32, i32* @VT_DISPATCH, align 4
  %388 = icmp eq i32 %386, %387
  %389 = zext i1 %388 to i32
  %390 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %391 = call i32 @V_VT(i32* %390)
  %392 = call i32 (i32, i8*, i32, ...) @ok(i32 %389, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %391)
  %393 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %394 = call i32 @VariantClear(i32* %393)
  %395 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %396 = call i32 @VariantClear(i32* %395)
  %397 = load i32*, i32** %7, align 8
  %398 = call i32 @IEnumVARIANT_Release(i32* %397)
  %399 = load i32*, i32** %13, align 8
  %400 = call i32 @IUnknown_Release(i32* %399)
  %401 = load i32, i32* %20, align 4
  %402 = call i32 @CloseHandle(i32 %401)
  %403 = load i32, i32* %21, align 4
  %404 = call i32 @CloseHandle(i32 %403)
  %405 = load i32, i32* %22, align 4
  %406 = call i32 @CloseHandle(i32 %405)
  %407 = call i32 @RemoveDirectoryW(i8* %29)
  %408 = load i32*, i32** %5, align 8
  %409 = call i32 @IFileCollection_Release(i32* %408)
  %410 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %410)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_temp_path(i8*, i8*) #2

declare dso_local i32 @CreateDirectoryW(i8*, i32*) #2

declare dso_local i32* @SysAllocString(i8*) #2

declare dso_local i32 @IFileSystem3_GetFolder(i32, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @SysFreeString(i32*) #2

declare dso_local i32 @IFolder_get_Files(i32*, i32**) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @test_provideclassinfo(i32*, i32*) #2

declare dso_local i32 @IFolder_Release(i32*) #2

declare dso_local i32 @IFileCollection_get_Count(i32*, i32*) #2

declare dso_local i32 @IFileCollection_get__NewEnum(i32*, i32**) #2

declare dso_local i32 @IFileCollection_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @GET_REFCOUNT(i32*) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IEnumVARIANT_Clone(i32*, i32**) #2

declare dso_local i32 @IEnumVARIANT_Release(i32*) #2

declare dso_local i32 @IEnumVARIANT_Reset(i32*) #2

declare dso_local i32 @VariantInit(i32*) #2

declare dso_local i32 @IEnumVARIANT_Next(i32*, i32, i32*, i32*) #2

declare dso_local i32 @V_VT(i32*) #2

declare dso_local i32 @IDispatch_QueryInterface(i32, i32*, i8**) #2

declare dso_local i32 @V_DISPATCH(i32*) #2

declare dso_local i32 @IFile_get_Name(i32*, i32**) #2

declare dso_local i32 @lstrcmpW(i32*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

declare dso_local i32 @IFile_Release(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @IEnumVARIANT_Skip(i32*, i32) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @RemoveDirectoryW(i8*) #2

declare dso_local i32 @IFileCollection_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
