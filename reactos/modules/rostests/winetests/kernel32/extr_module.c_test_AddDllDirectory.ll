; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_test_AddDllDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_test_AddDllDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_AddDllDirectory.tmpW = internal constant [4 x i8] c"tmp\00", align 1
@test_AddDllDirectory.dotW = internal constant [4 x i8] c".\\.\00", align 1
@test_AddDllDirectory.rootW = internal constant [2 x i8] c"\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"GetTempFileName failed err %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"AddDllDirectory failed err %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"RemoveDllDirectory failed err %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"AddDllDirectory succeeded\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddDllDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddDllDirectory() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 16
  %14 = udiv i64 %7, 1
  %15 = trunc i64 %14 to i32
  %16 = call i32 @GetTempPathW(i32 %15, i8* %9)
  %17 = call i32 @GetTempFileNameW(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_AddDllDirectory.tmpW, i64 0, i64 0), i32 0, i8* %12)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = call i32* @pAddDllDirectory(i8* %12)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @pRemoveDllDirectory(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = call i32 @DeleteFileW(i8* %12)
  %35 = call i32 @SetLastError(i32 -559038737)
  %36 = call i32* @pAddDllDirectory(i8* %12)
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i64 (...) @GetLastError()
  %43 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %46)
  %48 = call i32* @pAddDllDirectory(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_AddDllDirectory.dotW, i64 0, i64 0))
  store i32* %48, i32** %4, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = call i32* @pAddDllDirectory(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_AddDllDirectory.rootW, i64 0, i64 0))
  store i32* %60, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = call i32 @SetLastError(i32 -559038737)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @pRemoveDllDirectory(i32* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i64 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @MAX_PATH, align 4
  %73 = call i32 @GetWindowsDirectoryW(i8* %12, i32 %72)
  %74 = getelementptr inbounds i8, i8* %12, i64 2
  %75 = call i32 @lstrcpyW(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_AddDllDirectory.tmpW, i64 0, i64 0))
  %76 = call i32* @pAddDllDirectory(i8* %12)
  store i32* %76, i32** %4, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = icmp ne i32* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %82 = call i64 (...) @GetLastError()
  %83 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i32 @GetTempFileNameW(i8*, i8*, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @pAddDllDirectory(i8*) #2

declare dso_local i32 @pRemoveDllDirectory(i32*) #2

declare dso_local i32 @DeleteFileW(i8*) #2

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
