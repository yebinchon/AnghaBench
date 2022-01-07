; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_InstallColorProfileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_InstallColorProfileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"InstallColorProfileW() succeeded (%d)\0A\00", align 1
@machineW = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"InstallColorProfileW() failed (%d)\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_InstallColorProfileW.slash = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Not enough rights for InstallColorProfileW\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GetColorDirectoryW() failed (%d)\0A\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Couldn't find the profile (%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"UninstallColorProfileW() failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_InstallColorProfileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InstallColorProfileW(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = call i32 @pInstallColorProfileW(i8* null, i8* null)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 (...) @GetLastError()
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i8*, i8** @machineW, align 8
  %21 = call i32 @pInstallColorProfileW(i8* %20, i8* null)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i8*, i8** @machineW, align 8
  %29 = call i32 @pInstallColorProfileW(i8* null, i8* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @pInstallColorProfileW(i8* null, i8* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %38, %2
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %100

47:                                               ; preds = %44
  %48 = load i32, i32* @MAX_PATH, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %6, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %7, align 8
  %52 = load i32, i32* @MAX_PATH, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %8, align 8
  %55 = trunc i64 %49 to i32
  store i32 %55, i32* %9, align 4
  %56 = bitcast [2 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %56, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_InstallColorProfileW.slash, i32 0, i32 0), i64 2, i1 false)
  %57 = call i32 @SetLastError(i32 -559038737)
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @pInstallColorProfileW(i8* null, i8* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %47
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %96

68:                                               ; preds = %62, %47
  %69 = load i32, i32* %5, align 4
  %70 = call i64 (...) @GetLastError()
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = call i32 @pGetColorDirectoryW(i32* null, i8* %51, i32* %9)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i64 (...) @GetLastError()
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @MSCMS_basenameW(i8* %76, i8* %54)
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %79 = call i32 @lstrcatW(i8* %51, i8* %78)
  %80 = call i32 @lstrcatW(i8* %51, i8* %54)
  %81 = load i32, i32* @OPEN_EXISTING, align 4
  %82 = call i64 @CreateFileW(i8* %51, i32 0, i32 0, i32* null, i32 %81, i32 0, i32* null)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %85 = icmp ne i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 (...) @GetLastError()
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @CloseHandle(i64 %89)
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @pUninstallColorProfileW(i32* null, i8* %51, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i64 (...) @GetLastError()
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %94)
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %68, %66
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %12, align 4
  switch i32 %98, label %101 [
    i32 0, label %99
    i32 1, label %100
  ]

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %96, %99, %44
  ret void

101:                                              ; preds = %96
  unreachable
}

declare dso_local i32 @pInstallColorProfileW(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @pGetColorDirectoryW(i32*, i8*, i32*) #1

declare dso_local i32 @MSCMS_basenameW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @pUninstallColorProfileW(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
