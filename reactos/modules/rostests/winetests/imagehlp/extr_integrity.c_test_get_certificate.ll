; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_test_get_certificate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_test_get_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@test_dll_path = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unable to open %s, skipping test\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"ImageGetCertificateData gave unexpected result; ret=%d / err=%x\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory, skipping test\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to retrieve certificate; err=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Certificate retrieved did not match original\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @test_get_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_certificate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* @test_dll_path, align 4
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @FILE_SHARE_READ, align 4
  %13 = load i32, i32* @OPEN_EXISTING, align 4
  %14 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %15 = call i64 @CreateFileA(i32 %10, i32 %11, i32 %12, i32* null, i32 %13, i32 %14, i32* null)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @test_dll_path, align 4
  %21 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %73

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pImageGetCertificateData(i64 %23, i32 %24, %struct.TYPE_5__* null, i64* %7)
  store i32 %25, i32* %9, align 4
  %26 = call i64 (...) @GetLastError()
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i1 [ false, %22 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %37, i64 %38)
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call %struct.TYPE_5__* @HeapAlloc(i32 %40, i32 %41, i64 %42)
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %6, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  %47 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @CloseHandle(i64 %48)
  br label %73

50:                                               ; preds = %34
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = call i32 @pImageGetCertificateData(i64 %51, i32 %52, %struct.TYPE_5__* %53, i64* %7)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, 4
  %64 = call i64 @memcmp(i32 %60, i8* %61, i64 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = call i32 @HeapFree(i32 %68, i32 0, %struct.TYPE_5__* %69)
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @CloseHandle(i64 %71)
  br label %73

73:                                               ; preds = %50, %46, %19
  ret void
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @pImageGetCertificateData(i64, i32, %struct.TYPE_5__*, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
