; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_driver_install.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_driver_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_driver_install.inf = internal global i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [314 x i8] c"[Version]\0ASignature=\22$Chicago$\22\0A[DestinationDirs]\0AWinetest.DriverFiles=12\0A[DefaultInstall]\0ACopyFiles=Winetest.DriverFiles\0A[DefaultInstall.Services]\0AAddService=Winetest,,Winetest.Service\0A[Winetest.Service]\0AServiceBinary=%12%\\winetest.sys\0AServiceType=1\0AStartType=4\0AErrorControl=1\0A[Winetest.DriverFiles]\0Awinetest.sys\00", align 1
@GENERIC_ALL = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Not enough rights to install the service\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\\system32\\drivers\\winetest.sys\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"winetest.sys\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@inffile = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@CURR_DIR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"DefaultInstall\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"Expected driver to exist\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Winetest\00", align 1
@DELETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Service was not created\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Service could not be deleted : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_driver_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_driver_install() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = load i32, i32* @GENERIC_ALL, align 4
  %23 = call i32* @OpenSCManagerA(i32* null, i32* null, i32 %22)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %0
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %81

32:                                               ; preds = %26, %0
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @CloseServiceHandle(i32* %33)
  %35 = load i32, i32* @MAX_PATH, align 4
  %36 = call i32 @GetWindowsDirectoryA(i8* %17, i32 %35)
  %37 = call i32 @lstrcpyA(i8* %20, i8* %17)
  %38 = call i32 @lstrcatA(i8* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @GENERIC_WRITE, align 4
  %40 = load i32, i32* @CREATE_ALWAYS, align 4
  %41 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %42 = call i32 @CreateFileA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 0, i32* null, i32 %40, i32 %41, i32* null)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @CloseHandle(i32 %43)
  %45 = load i8*, i8** @inffile, align 8
  %46 = load i8*, i8** @test_driver_install.inf, align 8
  %47 = call i32 @create_inf_file(i8* %45, i8* %46)
  %48 = load i8*, i8** @CURR_DIR, align 8
  %49 = load i8*, i8** @inffile, align 8
  %50 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %48, i8* %49)
  %51 = call i32 @run_cmdline(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 128, i8* %14)
  %52 = call i64 @GetFileAttributesA(i8* %20)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i32, i32* @GENERIC_ALL, align 4
  %59 = call i32* @OpenSCManagerA(i32* null, i32* null, i32 %58)
  store i32* %59, i32** %2, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @DELETE, align 4
  %62 = call i32* @OpenServiceA(i32* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  store i32* %62, i32** %3, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %67 = call i32 @SetLastError(i32 -559038737)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @DeleteService(i32* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i64 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @CloseServiceHandle(i32* %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @CloseServiceHandle(i32* %75)
  %77 = load i8*, i8** @inffile, align 8
  %78 = call i32 @DeleteFileA(i8* %77)
  %79 = call i32 @DeleteFileA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @DeleteFileA(i8* %20)
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %32, %30
  %82 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %10, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @OpenSCManagerA(i32*, i32*, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @CloseServiceHandle(i32*) #2

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @create_inf_file(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @run_cmdline(i8*, i32, i8*) #2

declare dso_local i64 @GetFileAttributesA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32* @OpenServiceA(i32*, i8*, i32) #2

declare dso_local i32 @DeleteService(i32*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
