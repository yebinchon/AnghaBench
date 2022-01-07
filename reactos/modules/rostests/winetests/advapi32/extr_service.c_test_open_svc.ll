; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_service.c_test_open_svc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_service.c_test_open_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Expected ERROR_INVALID_HANDLE, got %d\0A\00", align 1
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@ERROR_INVALID_ADDRESS = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"Expected ERROR_INVALID_ADDRESS or ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@ERROR_SERVICE_DOES_NOT_EXIST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Expected ERROR_SERVICE_DOES_NOT_EXIST, got %d\0A\00", align 1
@spooler = common dso_local global i8* null, align 8
@GENERIC_WRITE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"Not enough rights to get a handle to the service\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Expected success, got error %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"displayname equals servicename\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_open_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_open_svc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = call i32* @OpenServiceA(i32* null, i8* null, i32 0)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %19 = call i32* @OpenSCManagerA(i32* null, i32* null, i32 %18)
  store i32* %19, i32** %1, align 8
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @GENERIC_READ, align 4
  %23 = call i32* @OpenServiceA(i32* %21, i8* null, i32 %22)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = call i64 (...) @GetLastError()
  %30 = load i64, i64* @ERROR_INVALID_ADDRESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %0
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %0
  %37 = phi i1 [ true, %0 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @CloseServiceHandle(i32* %41)
  %43 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %44 = call i32* @OpenSCManagerA(i32* null, i32* null, i32 %43)
  store i32* %44, i32** %1, align 8
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32, i32* @GENERIC_READ, align 4
  %48 = call i32* @OpenServiceA(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  store i32* %48, i32** %2, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_SERVICE_DOES_NOT_EXIST, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @CloseServiceHandle(i32* %60)
  %62 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %63 = call i32* @OpenSCManagerA(i32* null, i32* null, i32 %62)
  store i32* %63, i32** %1, align 8
  %64 = call i32 @SetLastError(i32 -559038737)
  %65 = load i32*, i32** %1, align 8
  %66 = load i8*, i8** @spooler, align 8
  %67 = load i32, i32* @GENERIC_WRITE, align 4
  %68 = call i32* @OpenServiceA(i32* %65, i8* %66, i32 %67)
  store i32* %68, i32** %2, align 8
  %69 = load i32*, i32** %2, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %36
  %72 = call i64 (...) @GetLastError()
  %73 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %85

77:                                               ; preds = %71, %36
  %78 = load i32*, i32** %2, align 8
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i64 (...) @GetLastError()
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @CloseServiceHandle(i32* %83)
  br label %85

85:                                               ; preds = %77, %75
  store i64 0, i64* %4, align 8
  %86 = load i32*, i32** %1, align 8
  %87 = load i8*, i8** @spooler, align 8
  %88 = call i32 @GetServiceDisplayNameA(i32* %86, i8* %87, i8* null, i64* %4)
  %89 = load i32*, i32** %1, align 8
  %90 = load i8*, i8** @spooler, align 8
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %92 = call i32 @GetServiceDisplayNameA(i32* %89, i8* %90, i8* %91, i64* %4)
  %93 = load i8*, i8** @spooler, align 8
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %95 = call i32 @lstrcmpiA(i8* %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %85
  %98 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @CloseServiceHandle(i32* %99)
  br label %122

101:                                              ; preds = %85
  %102 = call i32 @SetLastError(i32 -559038737)
  %103 = load i32*, i32** %1, align 8
  %104 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %105 = load i32, i32* @GENERIC_READ, align 4
  %106 = call i32* @OpenServiceA(i32* %103, i8* %104, i32 %105)
  store i32* %106, i32** %2, align 8
  %107 = load i32*, i32** %2, align 8
  %108 = icmp ne i32* %107, null
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %112 = call i64 (...) @GetLastError()
  %113 = load i64, i64* @ERROR_SERVICE_DOES_NOT_EXIST, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 (...) @GetLastError()
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @CloseServiceHandle(i32* %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @CloseServiceHandle(i32* %120)
  br label %122

122:                                              ; preds = %101, %97
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @OpenServiceA(i32*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @OpenSCManagerA(i32*, i32*, i32) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @GetServiceDisplayNameA(i32*, i8*, i8*, i64*) #1

declare dso_local i32 @lstrcmpiA(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
