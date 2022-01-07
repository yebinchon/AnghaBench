; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_test_remove_certificate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_test_remove_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_dll_path = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unable to open %s, skipping test\0A\00", align 1
@CERT_SECTION_TYPE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to enumerate certificates in file; err=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Unable to remove certificate from file; err=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Certificate count mismatch; orig=%d new=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_remove_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_remove_certificate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @test_dll_path, align 4
  %8 = load i32, i32* @GENERIC_READ, align 4
  %9 = load i32, i32* @GENERIC_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FILE_SHARE_READ, align 4
  %12 = load i32, i32* @OPEN_EXISTING, align 4
  %13 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %14 = call i64 @CreateFileA(i32 %7, i32 %10, i32 %11, i32* null, i32 %12, i32 %13, i32* null)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @test_dll_path, align 4
  %20 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %47

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @CERT_SECTION_TYPE_ANY, align 4
  %24 = call i32 @pImageEnumerateCertificates(i64 %22, i32 %23, i32* %3, i32* null, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 (i32, i8*, i32, ...) @ok(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @pImageRemoveCertificate(i64 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @CERT_SECTION_TYPE_ANY, align 4
  %36 = call i32 @pImageEnumerateCertificates(i64 %34, i32 %35, i32* %4, i32* null, i32 0)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @CloseHandle(i64 %45)
  br label %47

47:                                               ; preds = %21, %18
  ret void
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32 @pImageEnumerateCertificates(i64, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pImageRemoveCertificate(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
