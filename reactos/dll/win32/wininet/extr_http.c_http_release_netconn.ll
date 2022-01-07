; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_http_release_netconn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_http_release_netconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p %p %x\0A\00", align 1
@connection_pool_cs = common dso_local global i32 0, align 4
@COLLECT_TIME = common dso_local global i64 0, align 8
@collector_running = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = common dso_local global i32 0, align 4
@WININET_hModule = common dso_local global i64 0, align 8
@collect_connections_proc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@INTERNET_STATUS_CLOSING_CONNECTION = common dso_local global i32 0, align 4
@INTERNET_STATUS_CONNECTION_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @http_release_netconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_release_netconn(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %8, %struct.TYPE_11__* %11, i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call i32 @is_valid_netconn(%struct.TYPE_11__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %109

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %20
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %88

30:                                               ; preds = %23
  %31 = call i32 @EnterCriticalSection(i32* @connection_pool_cs)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = call i32 @list_add_head(i32* %37, i32* %41)
  %43 = call i64 (...) @GetTickCount()
  %44 = load i64, i64* @COLLECT_TIME, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i64 %45, i64* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %51, align 8
  %52 = load i64, i64* @collector_running, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* @collector_running, align 8
  %57 = call i32 @LeaveCriticalSection(i32* @connection_pool_cs)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %30
  store i32* null, i32** %6, align 8
  %61 = load i32, i32* @GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS, align 4
  %62 = load i64, i64* @WININET_hModule, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @GetModuleHandleExW(i32 %61, i32* %63, i64* %7)
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @collect_connections_proc, align 4
  %69 = call i32* @CreateThread(i32* null, i32 0, i32 %68, i32* null, i32 0, i32* null)
  store i32* %69, i32** %6, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32*, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = call i32 @EnterCriticalSection(i32* @connection_pool_cs)
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* @collector_running, align 8
  %76 = call i32 @LeaveCriticalSection(i32* @connection_pool_cs)
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @FreeLibrary(i64 %80)
  br label %82

82:                                               ; preds = %79, %73
  br label %86

83:                                               ; preds = %70
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @CloseHandle(i32* %84)
  br label %86

86:                                               ; preds = %83, %82
  br label %87

87:                                               ; preds = %86, %30
  br label %109

88:                                               ; preds = %23, %20
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @INTERNET_STATUS_CLOSING_CONNECTION, align 4
  %96 = call i32 @INTERNET_SendCallback(%struct.TYPE_12__* %90, i32 %94, i32 %95, i32 0, i32 0)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = call i32 @close_netconn(%struct.TYPE_11__* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @INTERNET_STATUS_CONNECTION_CLOSED, align 4
  %108 = call i32 @INTERNET_SendCallback(%struct.TYPE_12__* %102, i32 %106, i32 %107, i32 0, i32 0)
  br label %109

109:                                              ; preds = %88, %87, %19
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @is_valid_netconn(%struct.TYPE_11__*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @GetModuleHandleExW(i32, i32*, i64*) #1

declare dso_local i32* @CreateThread(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @FreeLibrary(i64) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @close_netconn(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
