; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_InitFunctionPointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_InitFunctionPointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ntdll\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"kernel32\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"NtCreateFile\00", align 1
@pNtCreateFile = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"RtlDosPathNameToNtPathName_U\00", align 1
@pRtlDosPathNameToNtPathName_U = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"RtlAnsiStringToUnicodeString\00", align 1
@pRtlAnsiStringToUnicodeString = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"RtlInitAnsiString\00", align 1
@pRtlInitAnsiString = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"RtlFreeUnicodeString\00", align 1
@pRtlFreeUnicodeString = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"FindFirstFileExA\00", align 1
@pFindFirstFileExA = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"ReplaceFileA\00", align 1
@pReplaceFileA = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"ReplaceFileW\00", align 1
@pReplaceFileW = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"GetSystemWindowsDirectoryA\00", align 1
@pGetSystemWindowsDirectoryA = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [34 x i8] c"GetVolumeNameForVolumeMountPointA\00", align 1
@pGetVolumeNameForVolumeMountPointA = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"QueueUserAPC\00", align 1
@pQueueUserAPC = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [29 x i8] c"GetFileInformationByHandleEx\00", align 1
@pGetFileInformationByHandleEx = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"OpenFileById\00", align 1
@pOpenFileById = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"SetFileValidData\00", align 1
@pSetFileValidData = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"CopyFile2\00", align 1
@pCopyFile2 = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"CreateFile2\00", align 1
@pCreateFile2 = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"GetFinalPathNameByHandleA\00", align 1
@pGetFinalPathNameByHandleA = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"GetFinalPathNameByHandleW\00", align 1
@pGetFinalPathNameByHandleW = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [27 x i8] c"SetFileInformationByHandle\00", align 1
@pSetFileInformationByHandle = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitFunctionPointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFunctionPointers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %1, align 4
  %4 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i64 @GetProcAddress(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @pNtCreateFile, align 8
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @pRtlDosPathNameToNtPathName_U, align 8
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @pRtlAnsiStringToUnicodeString, align 8
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @pRtlInitAnsiString, align 8
  %17 = load i32, i32* %1, align 4
  %18 = call i64 @GetProcAddress(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @pRtlFreeUnicodeString, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @GetProcAddress(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** @pFindFirstFileExA, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @GetProcAddress(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @pReplaceFileA, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @GetProcAddress(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** @pReplaceFileW, align 8
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @GetProcAddress(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** @pGetSystemWindowsDirectoryA, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @GetProcAddress(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** @pGetVolumeNameForVolumeMountPointA, align 8
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @GetProcAddress(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** @pQueueUserAPC, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i64 @GetProcAddress(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** @pGetFileInformationByHandleEx, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @GetProcAddress(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** @pOpenFileById, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i64 @GetProcAddress(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** @pSetFileValidData, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @GetProcAddress(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** @pCopyFile2, align 8
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @GetProcAddress(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** @pCreateFile2, align 8
  %53 = load i32, i32* %2, align 4
  %54 = call i64 @GetProcAddress(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** @pGetFinalPathNameByHandleA, align 8
  %56 = load i32, i32* %2, align 4
  %57 = call i64 @GetProcAddress(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** @pGetFinalPathNameByHandleW, align 8
  %59 = load i32, i32* %2, align 4
  %60 = call i64 @GetProcAddress(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** @pSetFileInformationByHandle, align 8
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
