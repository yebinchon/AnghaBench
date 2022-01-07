; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_CreateService.c_MakeService.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_CreateService.c_MakeService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_ERROR_RCODE_NXRRSET = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@SERVICE_KERNEL_DRIVER = common dso_local global i32 0, align 4
@SERVICE_BOOT_START = common dso_local global i32 0, align 4
@SERVICE_ERROR_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i32] [i32 37, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 114, i32 111, i32 111, i32 116, i32 37, i32 92, i32 100, i32 114, i32 105, i32 118, i32 101, i32 114, i32 115, i32 92, i32 119, i32 105, i32 110, i32 51, i32 50, i32 107, i32 46, i32 115, i32 121, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [42 x i32] [i32 97, i32 100, i32 118, i32 97, i32 112, i32 105, i32 51, i32 50, i32 95, i32 97, i32 112, i32 105, i32 116, i32 101, i32 115, i32 116, i32 95, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 84, i32 101, i32 115, i32 116, i32 95, i32 71, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to create service, error=0x%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"No service; cannot proceed with CreateService test\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"tag is zero, expected nonzero\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 37, i32 108, i32 115, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"RegOpenKeyW failed with 0x%08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"No regkey; cannot proceed with CreateService test\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i32] [i32 84, i32 97, i32 103, i32 0], align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"RegQueryValueExW returned 0x%08lx\0A\00", align 1
@REG_DWORD = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"type=%lu, expected REG_DWORD\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"tagSize=%lu, expected 4\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"tag=%lu, but registry says %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i64*)* @MakeService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeService(i32* %0, i32* %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [256 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* @DNS_ERROR_RCODE_NXRRSET, align 4
  %17 = call i32 @SetLastError(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @DELETE, align 4
  %21 = load i32, i32* @SERVICE_KERNEL_DRIVER, align 4
  %22 = load i32, i32* @SERVICE_BOOT_START, align 4
  %23 = load i32, i32* @SERVICE_ERROR_IGNORE, align 4
  %24 = load i64*, i64** %9, align 8
  %25 = call i32* @CreateServiceW(i32* %18, i32* %19, i32* null, i32 %20, i32 %21, i32 %22, i32 %23, i8* bitcast ([32 x i32]* @.str to i8*), i8* bitcast ([42 x i32]* @.str.1 to i8*), i64* %24, i32* null, i32* null, i32* null)
  %26 = load i32**, i32*** %8, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %4
  %37 = call i32 @skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %94

38:                                               ; preds = %4
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = call i32 @ok_err(i64 %39)
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @StringCbPrintfW(i32* %46, i32 1024, i8* bitcast ([38 x i32]* @.str.5 to i8*), i32* %47)
  %49 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %51 = call i64 @RegOpenKeyW(i32 %49, i32* %50, i32** %11)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %10, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = call i32 @skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  store i32 2, i32* %5, align 4
  br label %94

62:                                               ; preds = %38
  store i64 8, i64* %14, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = ptrtoint i64* %13 to i32
  %65 = call i64 @RegQueryValueExW(i32* %63, i8* bitcast ([4 x i32]* @.str.8 to i8*), i32* null, i64* %12, i32 %64, i64* %14)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %10, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @REG_DWORD, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %12, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %14, align 8
  %79 = icmp eq i64 %78, 8
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %14, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %13, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %83, %85
  %87 = zext i1 %86 to i32
  %88 = load i64*, i64** %9, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %89, i64 %90)
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @RegCloseKey(i32* %92)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %62, %60, %36
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CreateServiceW(i32*, i32*, i32*, i32, i32, i32, i32, i8*, i8*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok_err(i64) #1

declare dso_local i32 @StringCbPrintfW(i32*, i32, i8*, i32*) #1

declare dso_local i64 @RegOpenKeyW(i32, i32*, i32**) #1

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
