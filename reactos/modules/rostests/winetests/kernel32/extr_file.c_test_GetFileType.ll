; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test_GetFileType.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test_GetFileType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i8* null, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"open %s failed\0A\00", align 1
@FILE_TYPE_DISK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"expected type disk got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"nul\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"open nul failed\0A\00", align 1
@FILE_TYPE_CHAR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"expected type char for nul got %d\0A\00", align 1
@STD_OUTPUT_HANDLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"GetStdHandle failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"expected type %d for STD_OUTPUT_HANDLE got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetFileType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetFileType() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i8*, i8** @filename, align 8
  %5 = load i32, i32* @GENERIC_READ, align 4
  %6 = load i32, i32* @GENERIC_WRITE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CREATE_ALWAYS, align 4
  %9 = call i64 @CreateFileA(i8* %4, i32 %7, i32 0, i32* null, i32 %8, i32 0, i32 0)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i8*, i8** @filename, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @GetFileType(i64 %16)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @FILE_TYPE_DISK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @CloseHandle(i64 %24)
  %26 = load i32, i32* @GENERIC_READ, align 4
  %27 = load i32, i32* @GENERIC_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @OPEN_EXISTING, align 4
  %30 = call i64 @CreateFileA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 0, i32* null, i32 %29, i32 0, i32 0)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @GetFileType(i64 %36)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @FILE_TYPE_CHAR, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @CloseHandle(i64 %44)
  %46 = load i8*, i8** @filename, align 8
  %47 = call i32 @DeleteFileA(i8* %46)
  %48 = load i64, i64* @STD_OUTPUT_HANDLE, align 8
  %49 = call i64 @GetStdHandle(i64 %48)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i64, i64* @STD_OUTPUT_HANDLE, align 8
  %56 = call i64 @GetFileType(i64 %55)
  store i64 %56, i64* %1, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @GetFileType(i64 %57)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* %2, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* %1, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %63, i64 %64)
  ret void
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetFileType(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i64 @GetStdHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
