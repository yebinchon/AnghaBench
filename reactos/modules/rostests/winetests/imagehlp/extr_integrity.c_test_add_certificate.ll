; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_test_add_certificate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_test_add_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@test_dll_path = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unable to open %s, skipping test\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory, skipping test\0A\00", align 1
@WIN_CERT_REVISION_1_0 = common dso_local global i32 0, align 4
@WIN_CERT_TYPE_PKCS_SIGNED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Unable to add certificate to image, error %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"added cert index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_add_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_add_certificate(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @test_dll_path, align 4
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @GENERIC_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FILE_SHARE_READ, align 4
  %16 = load i32, i32* @OPEN_EXISTING, align 4
  %17 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %18 = call i64 @CreateFileA(i32 %11, i32 %14, i32 %15, i32* null, i32 %16, i32 %17, i32* null)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @test_dll_path, align 4
  %24 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %3, align 4
  br label %70

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 4, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.TYPE_5__* @HeapAlloc(i32 %30, i32 %31, i32 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @CloseHandle(i64 %38)
  store i32 -1, i32* %3, align 4
  br label %70

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @WIN_CERT_REVISION_1_0, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @WIN_CERT_TYPE_PKCS_SIGNED_DATA, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @CopyMemory(i32 %52, i8* %53, i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = call i32 @pImageAddCertificate(i64 %56, %struct.TYPE_5__* %57, i32* %9)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, %struct.TYPE_5__* %65)
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @CloseHandle(i64 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %40, %36, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @CopyMemory(i32, i8*, i32) #1

declare dso_local i32 @pImageAddCertificate(i64, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
