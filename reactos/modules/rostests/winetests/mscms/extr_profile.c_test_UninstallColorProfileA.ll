; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_UninstallColorProfileA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_UninstallColorProfileA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"UninstallColorProfileA() succeeded (%d)\0A\00", align 1
@machine = common dso_local global i32* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_UninstallColorProfileA.slash = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Not enough rights for InstallColorProfileA\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"InstallColorProfileA() failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GetColorDirectoryA() failed (%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"UninstallColorProfileA() failed (%d)\0A\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Found the profile (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_UninstallColorProfileA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UninstallColorProfileA(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @pUninstallColorProfileA(i32* null, i8* null, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 (...) @GetLastError()
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** @machine, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @pUninstallColorProfileA(i32* %19, i8* null, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %83

30:                                               ; preds = %1
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %4, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %5, align 8
  %35 = load i32, i32* @MAX_PATH, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %6, align 8
  %38 = trunc i64 %32 to i32
  store i32 %38, i32* %7, align 4
  %39 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_UninstallColorProfileA.slash, i32 0, i32 0), i64 2, i1 false)
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @pInstallColorProfileA(i32* null, i8* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %30
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %79

51:                                               ; preds = %45, %30
  %52 = load i32, i32* %3, align 4
  %53 = call i64 (...) @GetLastError()
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = call i32 @pGetColorDirectoryA(i32* null, i8* %34, i32* %7)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i64 (...) @GetLastError()
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @MSCMS_basenameA(i8* %59, i8* %37)
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %62 = call i32 @lstrcatA(i8* %34, i8* %61)
  %63 = call i32 @lstrcatA(i8* %34, i8* %37)
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @pUninstallColorProfileA(i32* null, i8* %34, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i64 (...) @GetLastError()
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @OPEN_EXISTING, align 4
  %70 = call i64 @CreateFileA(i8* %34, i32 0, i32 0, i32* null, i32 %69, i32 0, i32* null)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 (...) @GetLastError()
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @CloseHandle(i64 %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %51, %49
  %80 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %10, align 4
  switch i32 %81, label %84 [
    i32 0, label %82
    i32 1, label %83
  ]

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %79, %82, %1
  ret void

84:                                               ; preds = %79
  unreachable
}

declare dso_local i32 @pUninstallColorProfileA(i32*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pInstallColorProfileA(i32*, i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @pGetColorDirectoryA(i32*, i8*, i32*) #1

declare dso_local i32 @MSCMS_basenameA(i8*, i8*) #1

declare dso_local i32 @lstrcatA(i8*, i8*) #1

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
