; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtQueryVolumeInformationFile.c_TestFileFsDeviceInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtQueryVolumeInformationFile.c_TestFileFsDeviceInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FileFsDeviceInformation = common dso_local global i32 0, align 4
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Expected STATUS_ACCESS_VIOLATION, got 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Expected 0xdeadb33f, got %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Expected 0xcacacaca, got %lx\0A\00", align 1
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Expected 0xdadadada, got %lx\0A\00", align 1
@STATUS_INVALID_INFO_CLASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Expected STATUS_INVALID_INFO_CLASS, got 0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Expected 0xdeadbeef, got %lx\0A\00", align 1
@STATUS_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Expected STATUS_INVALID_HANDLE, got 0x%lx\0A\00", align 1
@STATUS_OBJECT_TYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Expected STATUS_OBJECT_TYPE_MISMATCH, got 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Expected 0xdeaddead, got %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @TestFileFsDeviceInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestFileFsDeviceInformation(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @SetLastError(i32 -559041729)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @FileFsDeviceInformation, align 4
  %10 = call i32 @NtQueryVolumeInformationFile(i32* %8, i32* null, i32* %5, i32 4, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @GetLastError()
  %18 = icmp eq i32 %17, -559041729
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @SetLastError(i32 -892679478)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @FileFsDeviceInformation, align 4
  %25 = call i32 @NtQueryVolumeInformationFile(i32* %23, i32* %4, i32* null, i32 4, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 (...) @GetLastError()
  %33 = icmp eq i32 %32, -892679478
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i32 @SetLastError(i32 -623191334)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @FileFsDeviceInformation, align 4
  %40 = call i32 @NtQueryVolumeInformationFile(i32* %38, i32* %4, i32* %5, i32 0, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = call i32 (...) @GetLastError()
  %48 = icmp eq i32 %47, -623191334
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = call i32 @SetLastError(i32 -559038737)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @NtQueryVolumeInformationFile(i32* %53, i32* %4, i32* %5, i32 4, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @STATUS_INVALID_INFO_CLASS, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = call i32 (...) @GetLastError()
  %62 = icmp eq i32 %61, -559038737
  %63 = zext i1 %62 to i32
  %64 = call i32 (...) @GetLastError()
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = call i32 @SetLastError(i32 -559038737)
  %67 = load i32, i32* @FileFsDeviceInformation, align 4
  %68 = call i32 @NtQueryVolumeInformationFile(i32* null, i32* %4, i32* %5, i32 4, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @STATUS_INVALID_HANDLE, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = call i32 (...) @GetLastError()
  %76 = icmp eq i32 %75, -559038737
  %77 = zext i1 %76 to i32
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = call i32 @SetLastError(i32 -559030611)
  %81 = load i32, i32* @FileFsDeviceInformation, align 4
  %82 = call i32 @NtQueryVolumeInformationFile(i32* inttoptr (i64 -1 to i32*), i32* %4, i32* %5, i32 4, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @STATUS_OBJECT_TYPE_MISMATCH, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %87)
  %89 = call i32 (...) @GetLastError()
  %90 = icmp eq i32 %89, -559030611
  %91 = zext i1 %90 to i32
  %92 = call i32 (...) @GetLastError()
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = call i32 @SetLastError(i32 -559038737)
  %95 = load i32, i32* @FileFsDeviceInformation, align 4
  %96 = call i32 @NtQueryVolumeInformationFile(i32* null, i32* null, i32* null, i32 0, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = call i32 (...) @GetLastError()
  %104 = icmp eq i32 %103, -559038737
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @NtQueryVolumeInformationFile(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
