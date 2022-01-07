; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_CreateService.c_Test_CreateService.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_CreateService.c_Test_CreateService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_ERROR_RCODE_NXRRSET = common dso_local global i32 0, align 4
@SC_MANAGER_CREATE_SERVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to open service manager, error=0x%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"No service control manager; cannot proceed with CreateService test\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i32] [i32 97, i32 100, i32 118, i32 97, i32 112, i32 105, i32 51, i32 50, i32 95, i32 97, i32 112, i32 105, i32 116, i32 101, i32 115, i32 116, i32 95, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 84, i32 101, i32 115, i32 116, i32 95, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 49, i32 0], align 4
@.str.3 = private unnamed_addr constant [45 x i32] [i32 97, i32 100, i32 118, i32 97, i32 112, i32 105, i32 51, i32 50, i32 95, i32 97, i32 112, i32 105, i32 116, i32 101, i32 115, i32 116, i32 95, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 84, i32 101, i32 115, i32 116, i32 95, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 50, i32 0], align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"tag1=%lu, tag2=%lu\0A\00", align 1
@DELETE = common dso_local global i32 0, align 4
@SERVICE_KERNEL_DRIVER = common dso_local global i32 0, align 4
@SERVICE_BOOT_START = common dso_local global i32 0, align 4
@SERVICE_ERROR_IGNORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i32] [i32 37, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 114, i32 111, i32 111, i32 116, i32 37, i32 92, i32 100, i32 114, i32 105, i32 118, i32 101, i32 114, i32 115, i32 92, i32 119, i32 105, i32 110, i32 51, i32 50, i32 107, i32 46, i32 115, i32 121, i32 115, i32 0], align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"hService3=%p\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"error=%lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"tag3=%lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_CreateService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_CreateService() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 785, i64* %7, align 8
  %8 = load i32, i32* @DNS_ERROR_RCODE_NXRRSET, align 4
  %9 = call i32 @SetLastError(i32 %8)
  %10 = load i32, i32* @SC_MANAGER_CREATE_SERVICE, align 4
  %11 = call i32* @OpenSCManagerW(i32* null, i32* null, i32 %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 (i32, i8*, i64, ...) @ok(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = call i32 @skip(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %91

21:                                               ; preds = %0
  %22 = load i32, i32* @ERROR_SUCCESS, align 4
  %23 = call i32 @ok_err(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i64 @MakeService(i32* %24, i8* bitcast ([45 x i32]* @.str.2 to i8*), i32** %2, i64* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %91

28:                                               ; preds = %21
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @MakeService(i32* %29, i8* bitcast ([45 x i32]* @.str.3 to i8*), i32** %3, i64* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %91

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 (i32, i8*, i64, ...) @ok(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @DELETE, align 4
  %43 = load i32, i32* @SERVICE_KERNEL_DRIVER, align 4
  %44 = load i32, i32* @SERVICE_BOOT_START, align 4
  %45 = load i32, i32* @SERVICE_ERROR_IGNORE, align 4
  %46 = call i32* @CreateServiceW(i32* %41, i8* bitcast ([45 x i32]* @.str.3 to i8*), i32* null, i32 %42, i32 %43, i32 %44, i32 %45, i8* bitcast ([32 x i32]* @.str.5 to i8*), i8* null, i64* %7, i32* null, i32* null, i32* null)
  store i32* %46, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %4, align 8
  %51 = ptrtoint i32* %50 to i64
  %52 = call i32 (i32, i8*, i64, ...) @ok(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %51)
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 (...) @GetLastError()
  %58 = call i32 (i32, i8*, i64, ...) @ok(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 785
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i32, i8*, i64, ...) @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @DestroyService(i32* %64)
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @DELETE, align 4
  %68 = load i32, i32* @SERVICE_KERNEL_DRIVER, align 4
  %69 = load i32, i32* @SERVICE_BOOT_START, align 4
  %70 = load i32, i32* @SERVICE_ERROR_IGNORE, align 4
  %71 = call i32* @CreateServiceW(i32* %66, i8* bitcast ([45 x i32]* @.str.3 to i8*), i32* null, i32 %67, i32 %68, i32 %69, i32 %70, i8* bitcast ([32 x i32]* @.str.5 to i8*), i8* bitcast ([1 x i32]* @.str.9 to i8*), i64* %7, i32* null, i32* null, i32* null)
  store i32* %71, i32** %4, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %4, align 8
  %76 = ptrtoint i32* %75 to i64
  %77 = call i32 (i32, i8*, i64, ...) @ok(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %76)
  %78 = call i64 (...) @GetLastError()
  %79 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 (...) @GetLastError()
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %7, align 8
  %85 = icmp eq i64 %84, 785
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %7, align 8
  %88 = call i32 (i32, i8*, i64, ...) @ok(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @DestroyService(i32* %89)
  br label %91

91:                                               ; preds = %33, %32, %27, %19
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @DestroyService(i32* %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @DestroyService(i32* %94)
  %96 = load i32*, i32** %1, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @CloseServiceHandle(i32* %99)
  br label %101

101:                                              ; preds = %98, %91
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok_err(i32) #1

declare dso_local i64 @MakeService(i32*, i8*, i32**, i64*) #1

declare dso_local i32* @CreateServiceW(i32*, i8*, i32*, i32, i32, i32, i32, i8*, i8*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @DestroyService(i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
