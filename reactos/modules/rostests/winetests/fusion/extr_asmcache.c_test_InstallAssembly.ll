; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_test_InstallAssembly.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_test_InstallAssembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_InstallAssembly.empty = internal constant [1 x float] zeroinitializer, align 4
@test_InstallAssembly.noext = internal constant [5 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 0.000000e+00], align 16
@test_InstallAssembly.badext = internal constant [9 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 4.600000e+01, float 9.800000e+01, float 9.700000e+01, float 1.000000e+02, float 0.000000e+00], align 16
@test_InstallAssembly.dllext = internal constant [9 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 4.600000e+01, float 1.000000e+02, float 1.080000e+02, float 1.080000e+02, float 0.000000e+00], align 16
@test_InstallAssembly.exeext = internal constant [9 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 4.600000e+01, float 1.010000e+02, float 1.200000e+02, float 1.010000e+02, float 0.000000e+00], align 16
@test_InstallAssembly.testdll = internal constant [9 x float] [float 1.160000e+02, float 1.010000e+02, float 1.150000e+02, float 1.160000e+02, float 4.600000e+01, float 1.000000e+02, float 1.080000e+02, float 1.080000e+02, float 0.000000e+00], align 16
@test_InstallAssembly.winedll = internal constant [9 x float] [float 1.190000e+02, float 1.050000e+02, float 1.100000e+02, float 1.010000e+02, float 4.600000e+01, float 1.000000e+02, float 1.080000e+02, float 1.080000e+02, float 0.000000e+00], align 16
@test_InstallAssembly.wine = internal constant [5 x float] [float 1.190000e+02, float 1.050000e+02, float 1.100000e+02, float 1.010000e+02, float 0.000000e+00], align 16
@.str = private unnamed_addr constant [9 x i8] c"test.dll\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"wine.dll\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Expected HRESULT_FROM_WIN32(ERROR_INVALID_NAME), got %08x\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %08x\0A\00", align 1
@COR_E_ASSEMBLYEXPECTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Expected COR_E_ASSEMBLYEXPECTED, got %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"\\assembly\\GAC_MSIL\\wine\\\\1.0.0.0__2d03617b1c31e2f5\\wine.dll\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Expected assembly to exist\0A\00", align 1
@IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [67 x i8] c"Expected IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Expected assembly not to exist\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Expected S_FALSE, got %08x\0A\00", align 1
@IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [75 x i8] c"Expected IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InstallAssembly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InstallAssembly() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = call i32 @create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 100)
  %12 = call i32 @create_assembly(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @pCreateAssemblyCache(i32** %1, i32 0)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @IAssemblyCache_InstallAssembly(i32* %20, i32 0, float* null, i32* null)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @E_INVALIDARG, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @IAssemblyCache_InstallAssembly(i32* %28, i32 0, float* getelementptr inbounds ([1 x float], [1 x float]* @test_InstallAssembly.empty, i64 0, i64 0), i32* null)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @E_INVALIDARG, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @IAssemblyCache_InstallAssembly(i32* %36, i32 0, float* getelementptr inbounds ([5 x float], [5 x float]* @test_InstallAssembly.noext, i64 0, i64 0), i32* null)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %40 = call i32 @HRESULT_FROM_WIN32(i32 %39)
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %2, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @IAssemblyCache_InstallAssembly(i32* %45, i32 0, float* getelementptr inbounds ([9 x float], [9 x float]* @test_InstallAssembly.badext, i64 0, i64 0), i32* null)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %49 = call i32 @HRESULT_FROM_WIN32(i32 %48)
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @IAssemblyCache_InstallAssembly(i32* %54, i32 0, float* getelementptr inbounds ([9 x float], [9 x float]* @test_InstallAssembly.dllext, i64 0, i64 0), i32* null)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %58 = call i32 @HRESULT_FROM_WIN32(i32 %57)
  %59 = icmp eq i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @IAssemblyCache_InstallAssembly(i32* %63, i32 0, float* getelementptr inbounds ([9 x float], [9 x float]* @test_InstallAssembly.exeext, i64 0, i64 0), i32* null)
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %67 = call i32 @HRESULT_FROM_WIN32(i32 %66)
  %68 = icmp eq i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @IAssemblyCache_InstallAssembly(i32* %72, i32 0, float* getelementptr inbounds ([9 x float], [9 x float]* @test_InstallAssembly.testdll, i64 0, i64 0), i32* null)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @COR_E_ASSEMBLYEXPECTED, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %2, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @IAssemblyCache_InstallAssembly(i32* %80, i32 0, float* getelementptr inbounds ([9 x float], [9 x float]* @test_InstallAssembly.winedll, i64 0, i64 0), i32* null)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @S_OK, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %2, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @MAX_PATH, align 4
  %89 = call i32 @GetWindowsDirectoryA(i8* %10, i32 %88)
  %90 = call i32 @strcat(i8* %10, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %91 = call i64 @GetFileAttributesA(i8* %10)
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %94 = icmp ne i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 251714477, i32* %3, align 4
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @IAssemblyCache_UninstallAssembly(i32* %97, i32 0, float* getelementptr inbounds ([5 x float], [5 x float]* @test_InstallAssembly.wine, i64 0, i64 0), i32* null, i32* %3)
  store i32 %98, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @S_OK, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %2, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %109)
  %111 = call i64 @GetFileAttributesA(i8* %10)
  store i64 %111, i64* %4, align 8
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  store i32 251714477, i32* %3, align 4
  %117 = load i32*, i32** %1, align 8
  %118 = call i32 @IAssemblyCache_UninstallAssembly(i32* %117, i32 0, float* getelementptr inbounds ([5 x float], [5 x float]* @test_InstallAssembly.wine, i64 0, i64 0), i32* null, i32* %3)
  store i32 %118, i32* %2, align 4
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @S_FALSE, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %2, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0), i32 %129)
  %131 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %132 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @IAssemblyCache_Release(i32* %133)
  %135 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %135)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_file(i8*, i32) #2

declare dso_local i32 @create_assembly(i8*) #2

declare dso_local i32 @pCreateAssemblyCache(i32**, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @IAssemblyCache_InstallAssembly(i32*, i32, float*, i32*) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @GetFileAttributesA(i8*) #2

declare dso_local i32 @IAssemblyCache_UninstallAssembly(i32*, i32, float*, i32*, i32*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @IAssemblyCache_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
