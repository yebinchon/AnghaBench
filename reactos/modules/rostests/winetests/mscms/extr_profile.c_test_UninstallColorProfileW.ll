; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_UninstallColorProfileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_UninstallColorProfileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"UninstallColorProfileW() succeeded (%d)\0A\00", align 1
@machineW = common dso_local global i32* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_UninstallColorProfileW.slash = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Not enough rights for InstallColorProfileW\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"InstallColorProfileW() failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GetColorDirectoryW() failed (%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"UninstallColorProfileW() failed (%d)\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"WideCharToMultiByte() returns %d\0A\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Found the profile (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_UninstallColorProfileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UninstallColorProfileW(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @pUninstallColorProfileW(i32* null, i8* null, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** @machineW, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @pUninstallColorProfileW(i32* %21, i8* null, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %96

32:                                               ; preds = %1
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %4, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %5, align 8
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %6, align 8
  %40 = load i32, i32* @MAX_PATH, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %7, align 8
  %43 = trunc i64 %34 to i32
  store i32 %43, i32* %8, align 4
  %44 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_UninstallColorProfileW.slash, i32 0, i32 0), i64 2, i1 false)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @pInstallColorProfileW(i32* null, i8* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %32
  %51 = call i32 (...) @GetLastError()
  %52 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %92

56:                                               ; preds = %50, %32
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = call i32 @pGetColorDirectoryW(i32* null, i8* %36, i32* %8)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @MSCMS_basenameW(i8* %64, i8* %39)
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %67 = call i32 @lstrcatW(i8* %36, i8* %66)
  %68 = call i32 @lstrcatW(i8* %36, i8* %39)
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @pUninstallColorProfileW(i32* null, i8* %36, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @CP_ACP, align 4
  %75 = load i32, i32* @MAX_PATH, align 4
  %76 = call i32 @WideCharToMultiByte(i32 %74, i32 0, i8* %36, i32 -1, i8* %42, i32 %75, i32* null, i32* null)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @OPEN_EXISTING, align 4
  %83 = call i64 @CreateFileA(i8* %42, i32 0, i32 0, i32* null, i32 %82, i32 0, i32* null)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (...) @GetLastError()
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @CloseHandle(i64 %90)
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %56, %54
  %93 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %12, align 4
  switch i32 %94, label %97 [
    i32 0, label %95
    i32 1, label %96
  ]

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %92, %95, %1
  ret void

97:                                               ; preds = %92
  unreachable
}

declare dso_local i32 @pUninstallColorProfileW(i32*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pInstallColorProfileW(i32*, i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @pGetColorDirectoryW(i32*, i8*, i32*) #1

declare dso_local i32 @MSCMS_basenameW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

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
