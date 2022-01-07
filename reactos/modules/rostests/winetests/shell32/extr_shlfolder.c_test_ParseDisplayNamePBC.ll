; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ParseDisplayNamePBC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ParseDisplayNamePBC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__const.test_ParseDisplayNamePBC.wFileSystemBindData = private unnamed_addr constant [22 x float] [float 7.000000e+01, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 3.200000e+01, float 8.300000e+01, float 1.210000e+02, float 1.150000e+02, float 1.160000e+02, float 1.010000e+02, float 1.090000e+02, float 3.200000e+01, float 6.600000e+01, float 1.050000e+02, float 1.100000e+02, float 1.000000e+02, float 3.200000e+01, float 6.800000e+01, float 9.700000e+01, float 1.160000e+02, float 9.700000e+01, float 0.000000e+00], align 16
@__const.test_ParseDisplayNamePBC.adirW = private unnamed_addr constant [11 x float] [float 6.700000e+01, float 5.800000e+01, float 9.200000e+01, float 1.020000e+02, float 1.150000e+02, float 9.800000e+01, float 1.000000e+02, float 1.000000e+02, float 1.050000e+02, float 1.140000e+02, float 0.000000e+00], align 16
@__const.test_ParseDisplayNamePBC.afileW = private unnamed_addr constant [20 x float] [float 6.700000e+01, float 5.800000e+01, float 9.200000e+01, float 1.020000e+02, float 1.150000e+02, float 9.800000e+01, float 1.000000e+02, float 1.000000e+02, float 1.050000e+02, float 1.140000e+02, float 9.200000e+01, float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 4.600000e+01, float 1.160000e+02, float 1.200000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@__const.test_ParseDisplayNamePBC.afile2W = private unnamed_addr constant [22 x float] [float 6.700000e+01, float 5.800000e+01, float 9.200000e+01, float 1.020000e+02, float 1.150000e+02, float 9.800000e+01, float 1.000000e+02, float 1.000000e+02, float 1.050000e+02, float 1.140000e+02, float 9.200000e+01, float 1.150000e+02, float 9.200000e+01, float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 4.600000e+01, float 1.160000e+02, float 1.200000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Most W-calls are not implemented\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"SHGetDesktopFolder failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to get IShellFolder, can't run tests\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"ParseDisplayName failed with wrong error: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CreateBindCtx failed: 0x%08x\0A\00", align 1
@fsbd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"RegisterObjectParam failed: 0x%08x\0A\00", align 1
@fsbd_GetFindData_fail = common dso_local global i32 0, align 4
@fsbdVtbl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"ParseDisplayName failed: 0x%08x\0A\00", align 1
@fsbd_GetFindData_nul = common dso_local global i32 0, align 4
@fsbd_GetFindData_junk = common dso_local global i32 0, align 4
@fsbd_GetFindData_invalid = common dso_local global i32 0, align 4
@fsbd_GetFindData_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ParseDisplayNamePBC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ParseDisplayNamePBC() #0 {
  %1 = alloca [22 x float], align 16
  %2 = alloca [11 x float], align 16
  %3 = alloca [20 x float], align 16
  %4 = alloca [22 x float], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = bitcast [22 x float]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([22 x float]* @__const.test_ParseDisplayNamePBC.wFileSystemBindData to i8*), i64 88, i1 false)
  %11 = bitcast [11 x float]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([11 x float]* @__const.test_ParseDisplayNamePBC.adirW to i8*), i64 44, i1 false)
  %12 = bitcast [20 x float]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([20 x float]* @__const.test_ParseDisplayNamePBC.afileW to i8*), i64 80, i1 false)
  %13 = bitcast [22 x float]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([22 x float]* @__const.test_ParseDisplayNamePBC.afile2W to i8*), i64 88, i1 false)
  %14 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %15 = call i64 @HRESULT_FROM_WIN32(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %18 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %19 = call i32 @lstrcmpiW(float* %17, float* %18)
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %0
  %24 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %421

25:                                               ; preds = %0
  %26 = call i64 @SHGetDesktopFolder(i32** %6)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 @win_skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %421

38:                                               ; preds = %25
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %41 = call i64 @IShellFolder_ParseDisplayName(i32* %39, i32* null, i32* null, float* %40, i32* null, i32** %9, i32* null)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %50 = call i64 @IShellFolder_ParseDisplayName(i32* %48, i32* null, i32* null, float* %49, i32* null, i32** %9, i32* null)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %59 = call i64 @IShellFolder_ParseDisplayName(i32* %57, i32* null, i32* null, float* %58, i32* null, i32** %9, i32* null)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = call i64 @CreateBindCtx(i32 0, i32** %7)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %76 = call i64 @IShellFolder_ParseDisplayName(i32* %73, i32* null, i32* %74, float* %75, i32* null, i32** %9, i32* null)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %86 = call i64 @IShellFolder_ParseDisplayName(i32* %83, i32* null, i32* %84, float* %85, i32* null, i32** %9, i32* null)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %96 = call i64 @IShellFolder_ParseDisplayName(i32* %93, i32* null, i32* %94, float* %95, i32* null, i32** %9, i32* null)
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds [22 x float], [22 x float]* %1, i64 0, i64 0
  %105 = call i64 @IBindCtx_RegisterObjectParam(i32* %103, float* %104, i32* @fsbd)
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %110)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %9, align 8
  %112 = load i32, i32* @fsbd_GetFindData_fail, align 4
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fsbdVtbl, i32 0, i32 0), align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %116 = call i64 @IShellFolder_ParseDisplayName(i32* %113, i32* null, i32* %114, float* %115, i32* null, i32** %9, i32* null)
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %121)
  %123 = load i64, i64* %8, align 8
  %124 = call i64 @SUCCEEDED(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %38
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %129 = call i32 @verify_pidl(i32* %127, float* %128)
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @ILFree(i32* %130)
  br label %132

132:                                              ; preds = %126, %38
  %133 = load i32*, i32** %6, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %136 = call i64 @IShellFolder_ParseDisplayName(i32* %133, i32* null, i32* %134, float* %135, i32* null, i32** %9, i32* null)
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* @S_OK, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %141)
  %143 = load i64, i64* %8, align 8
  %144 = call i64 @SUCCEEDED(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %132
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %149 = call i32 @verify_pidl(i32* %147, float* %148)
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @ILFree(i32* %150)
  br label %152

152:                                              ; preds = %146, %132
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %156 = call i64 @IShellFolder_ParseDisplayName(i32* %153, i32* null, i32* %154, float* %155, i32* null, i32** %9, i32* null)
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @S_OK, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %161)
  %163 = load i64, i64* %8, align 8
  %164 = call i64 @SUCCEEDED(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %152
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %169 = call i32 @verify_pidl(i32* %167, float* %168)
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @ILFree(i32* %170)
  br label %172

172:                                              ; preds = %166, %152
  store i32* inttoptr (i64 3735928559 to i32*), i32** %9, align 8
  %173 = load i32, i32* @fsbd_GetFindData_nul, align 4
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fsbdVtbl, i32 0, i32 0), align 4
  %174 = load i32*, i32** %6, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %177 = call i64 @IShellFolder_ParseDisplayName(i32* %174, i32* null, i32* %175, float* %176, i32* null, i32** %9, i32* null)
  store i64 %177, i64* %8, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @S_OK, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %8, align 8
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %182)
  %184 = load i64, i64* %8, align 8
  %185 = call i64 @SUCCEEDED(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %172
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %190 = call i32 @verify_pidl(i32* %188, float* %189)
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @ILFree(i32* %191)
  br label %193

193:                                              ; preds = %187, %172
  %194 = load i32*, i32** %6, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %197 = call i64 @IShellFolder_ParseDisplayName(i32* %194, i32* null, i32* %195, float* %196, i32* null, i32** %9, i32* null)
  store i64 %197, i64* %8, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* @S_OK, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i64, i64* %8, align 8
  %203 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %202)
  %204 = load i64, i64* %8, align 8
  %205 = call i64 @SUCCEEDED(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %193
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %210 = call i32 @verify_pidl(i32* %208, float* %209)
  %211 = load i32*, i32** %9, align 8
  %212 = call i32 @ILFree(i32* %211)
  br label %213

213:                                              ; preds = %207, %193
  %214 = load i32*, i32** %6, align 8
  %215 = load i32*, i32** %7, align 8
  %216 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %217 = call i64 @IShellFolder_ParseDisplayName(i32* %214, i32* null, i32* %215, float* %216, i32* null, i32** %9, i32* null)
  store i64 %217, i64* %8, align 8
  %218 = load i64, i64* %8, align 8
  %219 = load i64, i64* @S_OK, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %8, align 8
  %223 = call i32 @ok(i32 %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %222)
  %224 = load i64, i64* %8, align 8
  %225 = call i64 @SUCCEEDED(i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %213
  %228 = load i32*, i32** %9, align 8
  %229 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %230 = call i32 @verify_pidl(i32* %228, float* %229)
  %231 = load i32*, i32** %9, align 8
  %232 = call i32 @ILFree(i32* %231)
  br label %233

233:                                              ; preds = %227, %213
  store i32* inttoptr (i64 3735928559 to i32*), i32** %9, align 8
  %234 = load i32, i32* @fsbd_GetFindData_junk, align 4
  store i32 %234, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fsbdVtbl, i32 0, i32 0), align 4
  %235 = load i32*, i32** %6, align 8
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %238 = call i64 @IShellFolder_ParseDisplayName(i32* %235, i32* null, i32* %236, float* %237, i32* null, i32** %9, i32* null)
  store i64 %238, i64* %8, align 8
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* @S_OK, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i64, i64* %8, align 8
  %244 = call i32 @ok(i32 %242, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %243)
  %245 = load i64, i64* %8, align 8
  %246 = call i64 @SUCCEEDED(i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %233
  %249 = load i32*, i32** %9, align 8
  %250 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %251 = call i32 @verify_pidl(i32* %249, float* %250)
  %252 = load i32*, i32** %9, align 8
  %253 = call i32 @ILFree(i32* %252)
  br label %254

254:                                              ; preds = %248, %233
  %255 = load i32*, i32** %6, align 8
  %256 = load i32*, i32** %7, align 8
  %257 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %258 = call i64 @IShellFolder_ParseDisplayName(i32* %255, i32* null, i32* %256, float* %257, i32* null, i32** %9, i32* null)
  store i64 %258, i64* %8, align 8
  %259 = load i64, i64* %8, align 8
  %260 = load i64, i64* @S_OK, align 8
  %261 = icmp eq i64 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i64, i64* %8, align 8
  %264 = call i32 @ok(i32 %262, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %263)
  %265 = load i64, i64* %8, align 8
  %266 = call i64 @SUCCEEDED(i64 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %254
  %269 = load i32*, i32** %9, align 8
  %270 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %271 = call i32 @verify_pidl(i32* %269, float* %270)
  %272 = load i32*, i32** %9, align 8
  %273 = call i32 @ILFree(i32* %272)
  br label %274

274:                                              ; preds = %268, %254
  %275 = load i32*, i32** %6, align 8
  %276 = load i32*, i32** %7, align 8
  %277 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %278 = call i64 @IShellFolder_ParseDisplayName(i32* %275, i32* null, i32* %276, float* %277, i32* null, i32** %9, i32* null)
  store i64 %278, i64* %8, align 8
  %279 = load i64, i64* %8, align 8
  %280 = load i64, i64* @S_OK, align 8
  %281 = icmp eq i64 %279, %280
  %282 = zext i1 %281 to i32
  %283 = load i64, i64* %8, align 8
  %284 = call i32 @ok(i32 %282, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %283)
  %285 = load i64, i64* %8, align 8
  %286 = call i64 @SUCCEEDED(i64 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %274
  %289 = load i32*, i32** %9, align 8
  %290 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %291 = call i32 @verify_pidl(i32* %289, float* %290)
  %292 = load i32*, i32** %9, align 8
  %293 = call i32 @ILFree(i32* %292)
  br label %294

294:                                              ; preds = %288, %274
  store i32* inttoptr (i64 3735928559 to i32*), i32** %9, align 8
  %295 = load i32, i32* @fsbd_GetFindData_invalid, align 4
  store i32 %295, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fsbdVtbl, i32 0, i32 0), align 4
  %296 = load i32*, i32** %6, align 8
  %297 = load i32*, i32** %7, align 8
  %298 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %299 = call i64 @IShellFolder_ParseDisplayName(i32* %296, i32* null, i32* %297, float* %298, i32* null, i32** %9, i32* null)
  store i64 %299, i64* %8, align 8
  %300 = load i64, i64* %8, align 8
  %301 = load i64, i64* @S_OK, align 8
  %302 = icmp eq i64 %300, %301
  %303 = zext i1 %302 to i32
  %304 = load i64, i64* %8, align 8
  %305 = call i32 @ok(i32 %303, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %304)
  %306 = load i64, i64* %8, align 8
  %307 = call i64 @SUCCEEDED(i64 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %294
  %310 = load i32*, i32** %9, align 8
  %311 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %312 = call i32 @verify_pidl(i32* %310, float* %311)
  %313 = load i32*, i32** %9, align 8
  %314 = call i32 @ILFree(i32* %313)
  br label %315

315:                                              ; preds = %309, %294
  %316 = load i32*, i32** %6, align 8
  %317 = load i32*, i32** %7, align 8
  %318 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %319 = call i64 @IShellFolder_ParseDisplayName(i32* %316, i32* null, i32* %317, float* %318, i32* null, i32** %9, i32* null)
  store i64 %319, i64* %8, align 8
  %320 = load i64, i64* %8, align 8
  %321 = load i64, i64* @S_OK, align 8
  %322 = icmp eq i64 %320, %321
  %323 = zext i1 %322 to i32
  %324 = load i64, i64* %8, align 8
  %325 = call i32 @ok(i32 %323, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %324)
  %326 = load i64, i64* %8, align 8
  %327 = call i64 @SUCCEEDED(i64 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %315
  %330 = load i32*, i32** %9, align 8
  %331 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %332 = call i32 @verify_pidl(i32* %330, float* %331)
  %333 = load i32*, i32** %9, align 8
  %334 = call i32 @ILFree(i32* %333)
  br label %335

335:                                              ; preds = %329, %315
  %336 = load i32*, i32** %6, align 8
  %337 = load i32*, i32** %7, align 8
  %338 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %339 = call i64 @IShellFolder_ParseDisplayName(i32* %336, i32* null, i32* %337, float* %338, i32* null, i32** %9, i32* null)
  store i64 %339, i64* %8, align 8
  %340 = load i64, i64* %8, align 8
  %341 = load i64, i64* @S_OK, align 8
  %342 = icmp eq i64 %340, %341
  %343 = zext i1 %342 to i32
  %344 = load i64, i64* %8, align 8
  %345 = call i32 @ok(i32 %343, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %344)
  %346 = load i64, i64* %8, align 8
  %347 = call i64 @SUCCEEDED(i64 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %335
  %350 = load i32*, i32** %9, align 8
  %351 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %352 = call i32 @verify_pidl(i32* %350, float* %351)
  %353 = load i32*, i32** %9, align 8
  %354 = call i32 @ILFree(i32* %353)
  br label %355

355:                                              ; preds = %349, %335
  store i32* inttoptr (i64 3735928559 to i32*), i32** %9, align 8
  %356 = load i32, i32* @fsbd_GetFindData_valid, align 4
  store i32 %356, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fsbdVtbl, i32 0, i32 0), align 4
  %357 = load i32*, i32** %6, align 8
  %358 = load i32*, i32** %7, align 8
  %359 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %360 = call i64 @IShellFolder_ParseDisplayName(i32* %357, i32* null, i32* %358, float* %359, i32* null, i32** %9, i32* null)
  store i64 %360, i64* %8, align 8
  %361 = load i64, i64* %8, align 8
  %362 = load i64, i64* @S_OK, align 8
  %363 = icmp eq i64 %361, %362
  %364 = zext i1 %363 to i32
  %365 = load i64, i64* %8, align 8
  %366 = call i32 @ok(i32 %364, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %365)
  %367 = load i64, i64* %8, align 8
  %368 = call i64 @SUCCEEDED(i64 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %355
  %371 = load i32*, i32** %9, align 8
  %372 = getelementptr inbounds [11 x float], [11 x float]* %2, i64 0, i64 0
  %373 = call i32 @verify_pidl(i32* %371, float* %372)
  %374 = load i32*, i32** %9, align 8
  %375 = call i32 @ILFree(i32* %374)
  br label %376

376:                                              ; preds = %370, %355
  %377 = load i32*, i32** %6, align 8
  %378 = load i32*, i32** %7, align 8
  %379 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %380 = call i64 @IShellFolder_ParseDisplayName(i32* %377, i32* null, i32* %378, float* %379, i32* null, i32** %9, i32* null)
  store i64 %380, i64* %8, align 8
  %381 = load i64, i64* %8, align 8
  %382 = load i64, i64* @S_OK, align 8
  %383 = icmp eq i64 %381, %382
  %384 = zext i1 %383 to i32
  %385 = load i64, i64* %8, align 8
  %386 = call i32 @ok(i32 %384, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %385)
  %387 = load i64, i64* %8, align 8
  %388 = call i64 @SUCCEEDED(i64 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %376
  %391 = load i32*, i32** %9, align 8
  %392 = getelementptr inbounds [20 x float], [20 x float]* %3, i64 0, i64 0
  %393 = call i32 @verify_pidl(i32* %391, float* %392)
  %394 = load i32*, i32** %9, align 8
  %395 = call i32 @ILFree(i32* %394)
  br label %396

396:                                              ; preds = %390, %376
  %397 = load i32*, i32** %6, align 8
  %398 = load i32*, i32** %7, align 8
  %399 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %400 = call i64 @IShellFolder_ParseDisplayName(i32* %397, i32* null, i32* %398, float* %399, i32* null, i32** %9, i32* null)
  store i64 %400, i64* %8, align 8
  %401 = load i64, i64* %8, align 8
  %402 = load i64, i64* @S_OK, align 8
  %403 = icmp eq i64 %401, %402
  %404 = zext i1 %403 to i32
  %405 = load i64, i64* %8, align 8
  %406 = call i32 @ok(i32 %404, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %405)
  %407 = load i64, i64* %8, align 8
  %408 = call i64 @SUCCEEDED(i64 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %416

410:                                              ; preds = %396
  %411 = load i32*, i32** %9, align 8
  %412 = getelementptr inbounds [22 x float], [22 x float]* %4, i64 0, i64 0
  %413 = call i32 @verify_pidl(i32* %411, float* %412)
  %414 = load i32*, i32** %9, align 8
  %415 = call i32 @ILFree(i32* %414)
  br label %416

416:                                              ; preds = %410, %396
  %417 = load i32*, i32** %7, align 8
  %418 = call i32 @IBindCtx_Release(i32* %417)
  %419 = load i32*, i32** %6, align 8
  %420 = call i32 @IShellFolder_Release(i32* %419)
  br label %421

421:                                              ; preds = %416, %36, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @lstrcmpiW(float*, float*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i64 @SHGetDesktopFolder(i32**) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @IShellFolder_ParseDisplayName(i32*, i32*, i32*, float*, i32*, i32**, i32*) #2

declare dso_local i64 @CreateBindCtx(i32, i32**) #2

declare dso_local i64 @IBindCtx_RegisterObjectParam(i32*, float*, i32*) #2

declare dso_local i64 @SUCCEEDED(i64) #2

declare dso_local i32 @verify_pidl(i32*, float*) #2

declare dso_local i32 @ILFree(i32*) #2

declare dso_local i32 @IBindCtx_Release(i32*) #2

declare dso_local i32 @IShellFolder_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
