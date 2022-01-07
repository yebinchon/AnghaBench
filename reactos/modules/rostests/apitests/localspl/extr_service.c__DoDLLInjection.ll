; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/localspl/extr_service.c__DoDLLInjection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/localspl/extr_service.c__DoDLLInjection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GetModuleFileNameW failed with error %lu!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"File path has no file extension: %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i32] [i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@TH32CS_SNAPPROCESS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"CreateToolhelp32Snapshot failed with error %lu!\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Process32FirstW failed with error %lu!\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i32] [i32 115, i32 112, i32 111, i32 111, i32 108, i32 115, i32 118, i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@PROCESS_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"OpenProcess failed with error %lu!\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"LoadLibraryW\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"GetProcAddress failed with error %lu!\0A\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"VirtualAllocEx failed with error %lu!\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"WriteProcessMemory failed with error %lu!\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"CreateRemoteThread failed with error %lu!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_DoDLLInjection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_DoDLLInjection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = call i32 @_countof(i32* %15)
  %17 = call i32 @GetModuleFileNameW(i32* null, i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %0
  %20 = call i32* (...) @GetLastError()
  %21 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 1, i32* %11, align 4
  br label %119

22:                                               ; preds = %0
  %23 = call i32 @wcsrchr(i32* %15, i32 46)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  store i32 1, i32* %11, align 4
  br label %119

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @wcscpy(i32 %29, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %31 = call i32 @wcslen(i32* %15)
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @TH32CS_SNAPPROCESS, align 4
  %37 = call i64 @CreateToolhelp32Snapshot(i32 %36, i32 0)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = call i32* (...) @GetLastError()
  %43 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* %42)
  store i32 1, i32* %11, align 4
  br label %119

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 12, i32* %45, align 4
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @Process32FirstW(i64 %46, %struct.TYPE_4__* %5)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = call i32* (...) @GetLastError()
  %51 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32* %50)
  store i32 1, i32* %11, align 4
  br label %119

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %114, %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @wcsicmp(i32 %55, i8* bitcast ([12 x i32]* @.str.5 to i8*))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %114

59:                                               ; preds = %53
  %60 = load i32, i32* @PROCESS_ALL_ACCESS, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @OpenProcess(i32 %60, i32 %61, i32 %63)
  store i64 %64, i64* %2, align 8
  %65 = load i64, i64* %2, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = call i32* (...) @GetLastError()
  %69 = call i32 @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32* %68)
  store i32 1, i32* %11, align 4
  br label %119

70:                                               ; preds = %59
  %71 = call i32 @GetModuleHandleW(i8* bitcast ([13 x i32]* @.str.7 to i8*))
  %72 = call i64 @GetProcAddress(i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = call i32* (...) @GetLastError()
  %77 = call i32 @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32* %76)
  store i32 1, i32* %11, align 4
  br label %119

78:                                               ; preds = %70
  %79 = load i64, i64* %2, align 8
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* @MEM_COMMIT, align 4
  %82 = load i32, i32* @MEM_RESERVE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PAGE_READWRITE, align 4
  %85 = call i64 @VirtualAllocEx(i64 %79, i32* null, i32 %80, i32 %83, i32 %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = call i32* (...) @GetLastError()
  %90 = call i32 @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32* %89)
  store i32 1, i32* %11, align 4
  br label %119

91:                                               ; preds = %78
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* %1, align 4
  %95 = call i32 @WriteProcessMemory(i64 %92, i64 %93, i32* %15, i32 %94, i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = call i32* (...) @GetLastError()
  %99 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32* %98)
  store i32 1, i32* %11, align 4
  br label %119

100:                                              ; preds = %91
  %101 = load i64, i64* %2, align 8
  %102 = load i64, i64* %6, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @CreateRemoteThread(i64 %101, i32* null, i32 0, i32 %103, i64 %104, i32 0, i32* null)
  store i64 %105, i64* %4, align 8
  %106 = load i64, i64* %4, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = call i32* (...) @GetLastError()
  %110 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32* %109)
  store i32 1, i32* %11, align 4
  br label %119

111:                                              ; preds = %100
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @CloseHandle(i64 %112)
  br label %118

114:                                              ; preds = %58
  %115 = load i64, i64* %3, align 8
  %116 = call i64 @Process32NextW(i64 %115, %struct.TYPE_4__* %5)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %53, label %118

118:                                              ; preds = %114, %111
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %108, %97, %88, %75, %67, %49, %41, %26, %19
  %120 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %11, align 4
  switch i32 %121, label %123 [
    i32 0, label %122
    i32 1, label %122
  ]

122:                                              ; preds = %119, %119
  ret void

123:                                              ; preds = %119
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i32 @DPRINT(i8*, i32*) #2

declare dso_local i32* @GetLastError(...) #2

declare dso_local i32 @wcsrchr(i32*, i32) #2

declare dso_local i32 @wcscpy(i32, i8*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i64 @CreateToolhelp32Snapshot(i32, i32) #2

declare dso_local i32 @Process32FirstW(i64, %struct.TYPE_4__*) #2

declare dso_local i64 @wcsicmp(i32, i8*) #2

declare dso_local i64 @OpenProcess(i32, i32, i32) #2

declare dso_local i64 @GetProcAddress(i32, i8*) #2

declare dso_local i32 @GetModuleHandleW(i8*) #2

declare dso_local i64 @VirtualAllocEx(i64, i32*, i32, i32, i32) #2

declare dso_local i32 @WriteProcessMemory(i64, i64, i32*, i32, i32*) #2

declare dso_local i64 @CreateRemoteThread(i64, i32*, i32, i32, i64, i32, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @Process32NextW(i64, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
