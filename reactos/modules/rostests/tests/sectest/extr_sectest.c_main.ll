; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/sectest/extr_sectest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/sectest/extr_sectest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Section Test\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sectest.txt\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create file (err=%ld)\00", align 1
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to create section (err=%ld)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Mapping view of section\0A\00", align 1
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"BaseAddress %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to map section (%ld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Clearing section\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Copying test data to section\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"test data\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to unmap view of file (%ld)\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Failed to close file (%ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @GENERIC_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CREATE_ALWAYS, align 4
  %15 = call i64 @CreateFile(i32 %10, i32 %13, i32 0, i32* null, i32 %14, i32 0, i32 0)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  store i32 1, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @PAGE_READWRITE, align 4
  %25 = call i64 @CreateFileMapping(i64 %23, i32* null, i32 %24, i32 0, i32 4096, i32* null)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  store i32 1, i32* %3, align 4
  br label %66

32:                                               ; preds = %22
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %36 = call i32* @MapViewOfFile(i64 %34, i32 %35, i32 0, i32 0, i32 4096)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  store i32 1, i32* %3, align 4
  br label %66

45:                                               ; preds = %32
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @FillMemory(i32* %47, i32 4096, i8 signext 32)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @strcpy(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @UnmapViewOfFile(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %56)
  store i32 1, i32* %3, align 4
  br label %66

58:                                               ; preds = %45
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @CloseHandle(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %63)
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62, %55, %42, %29, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @CreateFileMapping(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @MapViewOfFile(i64, i32, i32, i32, i32) #1

declare dso_local i32 @FillMemory(i32*, i32, i8 signext) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
