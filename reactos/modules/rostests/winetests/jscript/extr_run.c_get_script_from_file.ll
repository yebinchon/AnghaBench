; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_get_script_from_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_get_script_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Could not open file: %u\0A\00", align 1
@PAGE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not create file mapping: %u\0A\00", align 1
@FILE_MAP_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"MapViewOfFile failed: %u\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @get_script_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_script_from_file(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @OPEN_EXISTING, align 4
  %13 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %14 = call i64 @CreateFileA(i8* %10, i32 %11, i32 0, i32* null, i32 %12, i32 %13, i32* null)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32* null, i32** %2, align 8
  br label %62

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @GetFileSize(i64 %22, i32* null)
  store i32 %23, i32* %4, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @PAGE_READONLY, align 4
  %26 = call i64 @CreateFileMappingW(i64 %24, i32* null, i32 %25, i32 0, i32 0, i32* null)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @CloseHandle(i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32* null, i32** %2, align 8
  br label %62

35:                                               ; preds = %21
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @FILE_MAP_READ, align 4
  %38 = call i8* @MapViewOfFile(i64 %36, i32 %37, i32 0, i32 0, i32 0)
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @CloseHandle(i64 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32* null, i32** %2, align 8
  br label %62

46:                                               ; preds = %35
  %47 = load i32, i32* @CP_ACP, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @MultiByteToWideChar(i32 %47, i32 0, i8* %48, i32 %49, i32* null, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32* @SysAllocStringLen(i32* null, i32 %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32, i32* @CP_ACP, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @MultiByteToWideChar(i32 %53, i32 0, i8* %54, i32 %55, i32* %56, i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @UnmapViewOfFile(i8* %59)
  %61 = load i32*, i32** %9, align 8
  store i32* %61, i32** %2, align 8
  br label %62

62:                                               ; preds = %46, %43, %32, %18
  %63 = load i32*, i32** %2, align 8
  ret i32* %63
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i8* @MapViewOfFile(i64, i32, i32, i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
