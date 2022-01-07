; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_ccpsearch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_ccpsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to create package database\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"'CCP_random'\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"'RMCCP_random'\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CCP_random\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"htmlfile\\shell\\open\\nonexistent\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"'RMCCP_random', '', 'C:\\', '0'\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to create package %u\0A\00", align 1
@INSTALLUILEVEL_NONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"CCPSearch\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"CCP_Success\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Expected 1, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ccpsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ccpsearch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @create_package_db()
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @create_ccpsearch_table(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @add_ccpsearch_entry(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @add_ccpsearch_entry(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @create_reglocator_table(i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @add_reglocator_entry(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @create_drlocator_table(i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @add_drlocator_entry(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @create_signature_table(i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = call i64 @package_from_db(i32 %32, i32* %2)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %0
  %38 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %39 = load i32, i32* @msifile, align 4
  %40 = call i32 @DeleteFileA(i32 %39)
  store i32 1, i32* %7, align 4
  br label %77

41:                                               ; preds = %0
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %6, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @MsiCloseHandle(i32 %48)
  %50 = load i32, i32* @INSTALLUILEVEL_NONE, align 4
  %51 = call i32 @MsiSetInternalUI(i32 %50, i32* null)
  %52 = load i32, i32* %2, align 4
  %53 = call i64 @MsiDoActionA(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %6, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @MsiGetPropertyA(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %11, i32* %5)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %6, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 %66)
  %68 = call i32 @lstrcmpA(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32* %11)
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @MsiCloseHandle(i32 %73)
  %75 = load i32, i32* @msifile, align 4
  %76 = call i32 @DeleteFileA(i32 %75)
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %41, %37
  %78 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %7, align 4
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 1, label %80
  ]

80:                                               ; preds = %77, %77
  ret void

81:                                               ; preds = %77
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_package_db(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @create_ccpsearch_table(i32) #2

declare dso_local i32 @add_ccpsearch_entry(i32, i8*) #2

declare dso_local i32 @create_reglocator_table(i32) #2

declare dso_local i32 @add_reglocator_entry(i32, i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @create_drlocator_table(i32) #2

declare dso_local i32 @add_drlocator_entry(i32, i8*) #2

declare dso_local i32 @create_signature_table(i32) #2

declare dso_local i64 @package_from_db(i32, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @DeleteFileA(i32) #2

declare dso_local i32 @MsiCloseHandle(i32) #2

declare dso_local i32 @MsiSetInternalUI(i32, i32*) #2

declare dso_local i64 @MsiDoActionA(i32, i8*) #2

declare dso_local i64 @MsiGetPropertyA(i32, i8*, i32*, i32*) #2

declare dso_local i32 @lstrcmpA(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
