; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_create_empty_local_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_create_empty_local_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msi_create_empty_local_file.szInstaller = internal constant [12 x i8] c"\\Installer\\\00", align 1
@msi_create_empty_local_file.fmt = internal constant [3 x i8] c"%x\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_FILE_EXISTS = common dso_local global i64 0, align 8
@ERROR_SHARING_VIOLATION = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_create_empty_local_file(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = call i32 (...) @GetTickCount()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = call i32 @GetWindowsDirectoryW(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @strcatW(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @msi_create_empty_local_file.szInstaller, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @CreateDirectoryW(i32 %17, i32* null)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @strlenW(i32 %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %71, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 65536
  br i1 %23, label %24, label %74

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = and i32 %33, 65535
  %35 = call i32 @snprintfW(i32 %27, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @msi_create_empty_local_file.fmt, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @strlenW(i32 %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(i32 %40, i32 %41, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @GENERIC_WRITE, align 4
  %51 = load i32, i32* @CREATE_NEW, align 4
  %52 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %53 = call i64 @CreateFileW(i32 %49, i32 %50, i32 0, i32* null, i32 %51, i32 %52, i32 0)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %24
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @CloseHandle(i64 %58)
  br label %74

60:                                               ; preds = %24
  %61 = call i64 (...) @GetLastError()
  %62 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = call i64 (...) @GetLastError()
  %66 = load i64, i64* @ERROR_SHARING_VIOLATION, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %69, i32* %3, align 4
  br label %76

70:                                               ; preds = %64, %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %21

74:                                               ; preds = %57, %21
  %75 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @GetWindowsDirectoryW(i32, i32) #1

declare dso_local i32 @strcatW(i32, i8*) #1

declare dso_local i32 @CreateDirectoryW(i32, i32*) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @snprintfW(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
