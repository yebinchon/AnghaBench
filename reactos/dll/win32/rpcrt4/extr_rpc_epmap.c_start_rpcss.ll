; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_epmap.c_start_rpcss.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_epmap.c_start_rpcss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@start_rpcss.rpcssW = internal constant [6 x i8] c"RpcSs\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to open service manager\0A\00", align 1
@SERVICE_START = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to open RpcSs service\0A\00", align 1
@ERROR_SERVICE_ALREADY_RUNNING = common dso_local global i64 0, align 8
@SC_STATUS_PROCESS_INFO = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SERVICE_START_PENDING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"RpcSs failed to start %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to start RpcSs service\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_rpcss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_rpcss() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @OpenSCManagerW(i32* null, i32* null, i32 0)
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %1, align 4
  br label %82

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SERVICE_START, align 4
  %18 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @OpenServiceW(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @start_rpcss.rpcssW, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @CloseServiceHandle(i32 %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %1, align 4
  br label %82

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @StartServiceW(i32 %28, i32 0, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call i64 (...) @GetLastError()
  %33 = load i64, i64* @ERROR_SERVICE_ALREADY_RUNNING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %31, %27
  %36 = call i32 (...) @GetTickCount64()
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %59, %35
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %40 = bitcast %struct.TYPE_2__* %4 to i32*
  %41 = call i32 @QueryServiceStatusEx(i32 %38, i32 %39, i32* %40, i32 8, i32* %7)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %64

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SERVICE_RUNNING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %5, align 4
  br label %64

51:                                               ; preds = %44
  %52 = call i32 (...) @GetTickCount64()
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp sgt i32 %54, 30000
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %64

57:                                               ; preds = %51
  %58 = call i32 @Sleep(i32 100)
  br label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SERVICE_START_PENDING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %37, label %64

64:                                               ; preds = %59, %56, %49, %43
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SERVICE_RUNNING, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %76

74:                                               ; preds = %31
  %75 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @CloseServiceHandle(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @CloseServiceHandle(i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %76, %22, %12
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @OpenServiceW(i32, i8*, i32) #1

declare dso_local i32 @CloseServiceHandle(i32) #1

declare dso_local i64 @StartServiceW(i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @GetTickCount64(...) #1

declare dso_local i32 @QueryServiceStatusEx(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
