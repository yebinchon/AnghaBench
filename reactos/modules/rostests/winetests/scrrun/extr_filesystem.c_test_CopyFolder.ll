; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_CopyFolder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_CopyFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_CopyFolder.filesystem3_dir = internal constant [17 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 1.150000e+02, float 1.210000e+02, float 1.150000e+02, float 1.160000e+02, float 1.010000e+02, float 1.090000e+02, float 5.100000e+01, float 9.500000e+01, float 1.160000e+02, float 1.010000e+02, float 1.150000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@test_CopyFolder.s1 = internal constant [5 x float] [float 1.150000e+02, float 1.140000e+02, float 9.900000e+01, float 4.900000e+01, float 0.000000e+00], align 16
@test_CopyFolder.s = internal constant [5 x float] [float 1.150000e+02, float 1.140000e+02, float 9.900000e+01, float 4.200000e+01, float 0.000000e+00], align 16
@test_CopyFolder.d = internal constant [4 x float] [float 1.000000e+02, float 1.150000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@test_CopyFolder.empty = internal constant [1 x float] zeroinitializer, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't create temporary directory\0A\00", align 1
@fs3 = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i32 0, align 4
@CTL_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"CopyFile returned %x, expected CTL_E_FILENOTFOUND\0A\00", align 1
@CTL_E_PATHNOTFOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"CopyFolder returned %x, expected CTL_E_PATHNOTFOUND\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"can't create %s file\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"CopyFile returned %x, expected S_OK\0A\00", align 1
@VARIANT_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"DeleteFile returned %x, expected S_OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"can't create %s\0A\00", align 1
@CTL_E_FILEALREADYEXISTS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [58 x i8] c"CopyFolder returned %x, expected CTL_E_FILEALREADYEXISTS\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"CopyFolder returned %x, expected S_OK\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"%s file exists\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"%s directory doesn't exist\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"can't remove %s directory\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"DeleteFolder returned %x, expected S_OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CopyFolder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CopyFolder() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca float, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = call i32 @CreateDirectoryW(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %277

15:                                               ; preds = %0
  %16 = call i32 @create_path(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @test_CopyFolder.s1, i64 0, i64 0), float* %10)
  %17 = call float* @SysAllocString(float* %10)
  store float* %17, float** %3, align 8
  %18 = call i32 @create_path(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), float* getelementptr inbounds ([4 x float], [4 x float]* @test_CopyFolder.d, i64 0, i64 0), float* %10)
  %19 = call float* @SysAllocString(float* %10)
  store float* %19, float** %4, align 8
  %20 = load i32, i32* @fs3, align 4
  %21 = load float*, float** %3, align 8
  %22 = load float*, float** %4, align 8
  %23 = load i32, i32* @VARIANT_TRUE, align 4
  %24 = call i64 @IFileSystem3_CopyFile(i32 %20, float* %21, float* %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @CTL_E_FILENOTFOUND, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @fs3, align 4
  %32 = load float*, float** %3, align 8
  %33 = load float*, float** %4, align 8
  %34 = load i32, i32* @VARIANT_TRUE, align 4
  %35 = call i64 @IFileSystem3_CopyFolder(i32 %31, float* %32, float* %33, i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @CTL_E_PATHNOTFOUND, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load float*, float** %3, align 8
  %43 = call i32 @create_file(float* %42)
  %44 = load float*, float** %3, align 8
  %45 = call i64 @wine_dbgstr_w(float* %44)
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @fs3, align 4
  %48 = load float*, float** %3, align 8
  %49 = load float*, float** %4, align 8
  %50 = load i32, i32* @VARIANT_TRUE, align 4
  %51 = call i64 @IFileSystem3_CopyFile(i32 %47, float* %48, float* %49, i32 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @fs3, align 4
  %59 = load float*, float** %3, align 8
  %60 = load float*, float** %4, align 8
  %61 = load i32, i32* @VARIANT_TRUE, align 4
  %62 = call i64 @IFileSystem3_CopyFolder(i32 %58, float* %59, float* %60, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @CTL_E_PATHNOTFOUND, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @fs3, align 4
  %70 = load float*, float** %3, align 8
  %71 = load i32, i32* @VARIANT_FALSE, align 4
  %72 = call i64 @IFileSystem3_DeleteFile(i32 %69, float* %70, i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = load float*, float** %3, align 8
  %80 = call i32 @CreateDirectoryW(float* %79, i32* null)
  %81 = load float*, float** %3, align 8
  %82 = call i64 @wine_dbgstr_w(float* %81)
  %83 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @fs3, align 4
  %85 = load float*, float** %3, align 8
  %86 = load float*, float** %4, align 8
  %87 = load i32, i32* @VARIANT_TRUE, align 4
  %88 = call i64 @IFileSystem3_CopyFile(i32 %84, float* %85, float* %86, i32 %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @CTL_E_FILENOTFOUND, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @fs3, align 4
  %96 = load float*, float** %3, align 8
  %97 = load float*, float** %4, align 8
  %98 = load i32, i32* @VARIANT_TRUE, align 4
  %99 = call i64 @IFileSystem3_CopyFolder(i32 %95, float* %96, float* %97, i32 %98)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @CTL_E_FILEALREADYEXISTS, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* @fs3, align 4
  %107 = load float*, float** %4, align 8
  %108 = load i32, i32* @VARIANT_TRUE, align 4
  %109 = call i64 @IFileSystem3_DeleteFile(i32 %106, float* %107, i32 %108)
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @S_OK, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %5, align 8
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @fs3, align 4
  %117 = load float*, float** %3, align 8
  %118 = load float*, float** %4, align 8
  %119 = load i32, i32* @VARIANT_TRUE, align 4
  %120 = call i64 @IFileSystem3_CopyFolder(i32 %116, float* %117, float* %118, i32 %119)
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @S_OK, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @fs3, align 4
  %128 = load float*, float** %3, align 8
  %129 = load float*, float** %4, align 8
  %130 = load i32, i32* @VARIANT_TRUE, align 4
  %131 = call i64 @IFileSystem3_CopyFolder(i32 %127, float* %128, float* %129, i32 %130)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %136)
  %138 = call i32 @create_path(float* %10, float* getelementptr inbounds ([5 x float], [5 x float]* @test_CopyFolder.s1, i64 0, i64 0), float* %10)
  %139 = call i64 @GetFileAttributesW(float* %10)
  %140 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i64 @wine_dbgstr_w(float* %10)
  %144 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %143)
  %145 = call i32 @create_path(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), float* getelementptr inbounds ([4 x float], [4 x float]* @test_CopyFolder.d, i64 0, i64 0), float* %10)
  %146 = call i32 @create_path(float* %10, float* getelementptr inbounds ([1 x float], [1 x float]* @test_CopyFolder.empty, i64 0, i64 0), float* %10)
  %147 = load float*, float** %4, align 8
  %148 = call i32 @SysFreeString(float* %147)
  %149 = call float* @SysAllocString(float* %10)
  store float* %149, float** %4, align 8
  %150 = load i32, i32* @fs3, align 4
  %151 = load float*, float** %3, align 8
  %152 = load float*, float** %4, align 8
  %153 = load i32, i32* @VARIANT_TRUE, align 4
  %154 = call i64 @IFileSystem3_CopyFolder(i32 %150, float* %151, float* %152, i32 %153)
  store i64 %154, i64* %5, align 8
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* @S_OK, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %159)
  %161 = call i32 @create_path(float* %10, float* getelementptr inbounds ([5 x float], [5 x float]* @test_CopyFolder.s1, i64 0, i64 0), float* %10)
  %162 = call i64 @GetFileAttributesW(float* %10)
  %163 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %164 = icmp ne i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i64 @wine_dbgstr_w(float* %10)
  %167 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %166)
  %168 = call i32 @RemoveDirectoryW(float* %10)
  %169 = call i64 @wine_dbgstr_w(float* %10)
  %170 = call i32 @ok(i32 %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i64 %169)
  %171 = call i32 @create_path(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), float* getelementptr inbounds ([4 x float], [4 x float]* @test_CopyFolder.d, i64 0, i64 0), float* %10)
  %172 = load float*, float** %4, align 8
  %173 = call i32 @SysFreeString(float* %172)
  %174 = call float* @SysAllocString(float* %10)
  store float* %174, float** %4, align 8
  %175 = call i32 @create_path(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @test_CopyFolder.s, i64 0, i64 0), float* %10)
  %176 = load float*, float** %3, align 8
  %177 = call i32 @SysFreeString(float* %176)
  %178 = call float* @SysAllocString(float* %10)
  store float* %178, float** %3, align 8
  %179 = load i32, i32* @fs3, align 4
  %180 = load float*, float** %3, align 8
  %181 = load float*, float** %4, align 8
  %182 = load i32, i32* @VARIANT_TRUE, align 4
  %183 = call i64 @IFileSystem3_CopyFolder(i32 %179, float* %180, float* %181, i32 %182)
  store i64 %183, i64* %5, align 8
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* @S_OK, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i64, i64* %5, align 8
  %189 = call i32 @ok(i32 %187, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %188)
  %190 = call i32 @create_path(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), float* getelementptr inbounds ([4 x float], [4 x float]* @test_CopyFolder.d, i64 0, i64 0), float* %10)
  %191 = call i32 @create_path(float* %10, float* getelementptr inbounds ([5 x float], [5 x float]* @test_CopyFolder.s1, i64 0, i64 0), float* %10)
  %192 = call i64 @GetFileAttributesW(float* %10)
  %193 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %194 = icmp ne i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i64 @wine_dbgstr_w(float* %10)
  %197 = call i32 @ok(i32 %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %196)
  %198 = load i32, i32* @fs3, align 4
  %199 = load float*, float** %4, align 8
  %200 = load i32, i32* @VARIANT_FALSE, align 4
  %201 = call i64 @IFileSystem3_DeleteFolder(i32 %198, float* %199, i32 %200)
  store i64 %201, i64* %5, align 8
  %202 = load i64, i64* %5, align 8
  %203 = load i64, i64* @S_OK, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i64, i64* %5, align 8
  %207 = call i32 @ok(i32 %205, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i64 %206)
  %208 = load i32, i32* @fs3, align 4
  %209 = load float*, float** %3, align 8
  %210 = load float*, float** %4, align 8
  %211 = load i32, i32* @VARIANT_TRUE, align 4
  %212 = call i64 @IFileSystem3_CopyFolder(i32 %208, float* %209, float* %210, i32 %211)
  store i64 %212, i64* %5, align 8
  %213 = load i64, i64* %5, align 8
  %214 = load i64, i64* @CTL_E_PATHNOTFOUND, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i64, i64* %5, align 8
  %218 = call i32 @ok(i32 %216, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %217)
  %219 = call i32 @create_path(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @test_CopyFolder.s1, i64 0, i64 0), float* %10)
  %220 = load float*, float** %3, align 8
  %221 = call i32 @SysFreeString(float* %220)
  %222 = call float* @SysAllocString(float* %10)
  store float* %222, float** %3, align 8
  %223 = call i32 @create_path(float* %10, float* getelementptr inbounds ([5 x float], [5 x float]* @test_CopyFolder.s1, i64 0, i64 0), float* %10)
  %224 = call i32 @create_file(float* %10)
  %225 = call i64 @wine_dbgstr_w(float* %10)
  %226 = call i32 @ok(i32 %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %225)
  %227 = load i32, i32* @fs3, align 4
  %228 = load float*, float** %3, align 8
  %229 = load float*, float** %4, align 8
  %230 = load i32, i32* @VARIANT_FALSE, align 4
  %231 = call i64 @IFileSystem3_CopyFolder(i32 %227, float* %228, float* %229, i32 %230)
  store i64 %231, i64* %5, align 8
  %232 = load i64, i64* %5, align 8
  %233 = load i64, i64* @S_OK, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = load i64, i64* %5, align 8
  %237 = call i32 @ok(i32 %235, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %236)
  %238 = load i32, i32* @fs3, align 4
  %239 = load float*, float** %3, align 8
  %240 = load float*, float** %4, align 8
  %241 = load i32, i32* @VARIANT_FALSE, align 4
  %242 = call i64 @IFileSystem3_CopyFolder(i32 %238, float* %239, float* %240, i32 %241)
  store i64 %242, i64* %5, align 8
  %243 = load i64, i64* %5, align 8
  %244 = load i64, i64* @CTL_E_FILEALREADYEXISTS, align 8
  %245 = icmp eq i64 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i64, i64* %5, align 8
  %248 = call i32 @ok(i32 %246, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i64 %247)
  %249 = load i32, i32* @fs3, align 4
  %250 = load float*, float** %3, align 8
  %251 = load float*, float** %4, align 8
  %252 = load i32, i32* @VARIANT_TRUE, align 4
  %253 = call i64 @IFileSystem3_CopyFolder(i32 %249, float* %250, float* %251, i32 %252)
  store i64 %253, i64* %5, align 8
  %254 = load i64, i64* %5, align 8
  %255 = load i64, i64* @S_OK, align 8
  %256 = icmp eq i64 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i64, i64* %5, align 8
  %259 = call i32 @ok(i32 %257, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %258)
  %260 = load float*, float** %3, align 8
  %261 = call i32 @SysFreeString(float* %260)
  %262 = load float*, float** %4, align 8
  %263 = call i32 @SysFreeString(float* %262)
  %264 = call float* @SysAllocString(float* getelementptr inbounds ([17 x float], [17 x float]* @test_CopyFolder.filesystem3_dir, i64 0, i64 0))
  store float* %264, float** %3, align 8
  %265 = load i32, i32* @fs3, align 4
  %266 = load float*, float** %3, align 8
  %267 = load i32, i32* @VARIANT_FALSE, align 4
  %268 = call i64 @IFileSystem3_DeleteFolder(i32 %265, float* %266, i32 %267)
  store i64 %268, i64* %5, align 8
  %269 = load i64, i64* %5, align 8
  %270 = load i64, i64* @S_OK, align 8
  %271 = icmp eq i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = load i64, i64* %5, align 8
  %274 = call i32 @ok(i32 %272, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i64 %273)
  %275 = load float*, float** %3, align 8
  %276 = call i32 @SysFreeString(float* %275)
  store i32 0, i32* %6, align 4
  br label %277

277:                                              ; preds = %15, %13
  %278 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %278)
  %279 = load i32, i32* %6, align 4
  switch i32 %279, label %281 [
    i32 0, label %280
    i32 1, label %280
  ]

280:                                              ; preds = %277, %277
  ret void

281:                                              ; preds = %277
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CreateDirectoryW(float*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @create_path(float*, float*, float*) #2

declare dso_local float* @SysAllocString(float*) #2

declare dso_local i64 @IFileSystem3_CopyFile(i32, float*, float*, i32) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @IFileSystem3_CopyFolder(i32, float*, float*, i32) #2

declare dso_local i32 @create_file(float*) #2

declare dso_local i64 @wine_dbgstr_w(float*) #2

declare dso_local i64 @IFileSystem3_DeleteFile(i32, float*, i32) #2

declare dso_local i64 @GetFileAttributesW(float*) #2

declare dso_local i32 @SysFreeString(float*) #2

declare dso_local i32 @RemoveDirectoryW(float*) #2

declare dso_local i64 @IFileSystem3_DeleteFolder(i32, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
