; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_virtual.c_test_CreateFileMapping.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_virtual.c_test_CreateFileMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Wine Test Mapping\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"CreateFileMapping failed with error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"CreateFileMapping failed with error %d\0A\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"WINE TEST MAPPING\00", align 1
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"OpenFileMapping failed with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"OpenFileMapping succeeded\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateFileMapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateFileMapping() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %5 = load i32, i32* @SEC_COMMIT, align 4
  %6 = load i32, i32* @PAGE_READWRITE, align 4
  %7 = or i32 %5, %6
  %8 = call i32* @CreateFileMappingA(i32 %4, i32* null, i32 %7, i32 0, i32 4096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = call i64 (...) @GetLastError()
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 (...) @GetLastError()
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  %19 = call i32 @SetLastError(i32 -559038737)
  %20 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %21 = load i32, i32* @SEC_COMMIT, align 4
  %22 = load i32, i32* @PAGE_READWRITE, align 4
  %23 = or i32 %21, %22
  %24 = call i32* @CreateFileMappingA(i32 %20, i32* null, i32 %23, i32 0, i32 4096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %28)
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @CloseHandle(i32* %36)
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %40 = load i32, i32* @SEC_COMMIT, align 4
  %41 = load i32, i32* @PAGE_READWRITE, align 4
  %42 = or i32 %40, %41
  %43 = call i32* @CreateFileMappingA(i32 %39, i32* null, i32 %42, i32 0, i32 4096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32* %43, i32** %2, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 (...) @GetLastError()
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = call i64 (...) @GetLastError()
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @CloseHandle(i32* %54)
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32* @OpenFileMappingA(i32 %57, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32* %59, i32** %2, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @CloseHandle(i32* %65)
  %67 = call i32 @SetLastError(i32 -559038737)
  %68 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32* @OpenFileMappingA(i32 %68, i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32* %70, i32** %2, align 8
  %71 = load i32*, i32** %2, align 8
  %72 = icmp ne i32* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %76 = call i64 (...) @GetLastError()
  %77 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 (...) @GetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @CloseHandle(i32* %82)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CreateFileMappingA(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32* @OpenFileMappingA(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
