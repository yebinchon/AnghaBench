; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_msi.c_msi_get_filehash.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_msi.c_msi_get_filehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"can't open file %u\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_get_filehash(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @GENERIC_READ, align 4
  %15 = load i32, i32* @FILE_SHARE_READ, align 4
  %16 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @OPEN_EXISTING, align 4
  %19 = call i64 @CreateFileW(i32* %13, i32 %14, i32 %17, i32* null, i32 %18, i32 0, i32* null)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @GetFileSize(i64 %28, i32* null)
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @PAGE_READONLY, align 4
  %34 = call i64 @CreateFileMappingW(i64 %32, i32* null, i32 %33, i32 0, i32 0, i32* null)
  store i64 %34, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @FILE_MAP_READ, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @MapViewOfFile(i64 %37, i32 %38, i32 0, i32 0, i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = call i32 @MD5Init(%struct.TYPE_8__* %11)
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @MD5Update(%struct.TYPE_8__* %11, i8* %44, i32 %45)
  %47 = call i32 @MD5Final(%struct.TYPE_8__* %11)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @UnmapViewOfFile(i8* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %52, i32 %54, i32 4)
  %56 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %42, %36
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @CloseHandle(i64 %58)
  br label %60

60:                                               ; preds = %57, %31
  br label %67

61:                                               ; preds = %27
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memset(i32 %64, i32 0, i32 4)
  %66 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @CloseHandle(i64 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @MapViewOfFile(i64, i32, i32, i32, i32) #1

declare dso_local i32 @MD5Init(%struct.TYPE_8__*) #1

declare dso_local i32 @MD5Update(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @MD5Final(%struct.TYPE_8__*) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
