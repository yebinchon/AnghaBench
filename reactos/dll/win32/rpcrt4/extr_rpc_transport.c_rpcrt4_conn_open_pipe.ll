; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_conn_open_pipe.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_conn_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"connecting to %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SECURITY_SQOS_PRESENT = common dso_local global i64 0, align 8
@SECURITY_ANONYMOUS = common dso_local global i64 0, align 8
@SECURITY_IDENTIFICATION = common dso_local global i64 0, align 8
@SECURITY_IMPERSONATION = common dso_local global i64 0, align 8
@SECURITY_DELEGATION = common dso_local global i64 0, align 8
@RPC_C_QOS_IDENTITY_DYNAMIC = common dso_local global i64 0, align 8
@SECURITY_CONTEXT_TRACKING = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_PIPE_BUSY = common dso_local global i64 0, align 8
@NMPWAIT_USE_DEFAULT_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"retrying busy server\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"connection failed, error=%x\0A\00", align 1
@RPC_S_SERVER_TOO_BUSY = common dso_local global i32 0, align 4
@NMPWAIT_WAIT_FOREVER = common dso_local global i32 0, align 4
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i64 0, align 8
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i32)* @rpcrt4_conn_open_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_conn_open_pipe(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = bitcast %struct.TYPE_9__* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %109, %90, %3
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %17
  store i64 0, i64* %12, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %66

25:                                               ; preds = %20
  %26 = load i64, i64* @SECURITY_SQOS_PRESENT, align 8
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %51 [
    i32 131, label %34
    i32 132, label %35
    i32 129, label %39
    i32 128, label %43
    i32 130, label %47
  ]

34:                                               ; preds = %25
  br label %51

35:                                               ; preds = %25
  %36 = load i64, i64* @SECURITY_ANONYMOUS, align 8
  %37 = load i64, i64* %12, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %12, align 8
  br label %51

39:                                               ; preds = %25
  %40 = load i64, i64* @SECURITY_IDENTIFICATION, align 8
  %41 = load i64, i64* %12, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %12, align 8
  br label %51

43:                                               ; preds = %25
  %44 = load i64, i64* @SECURITY_IMPERSONATION, align 8
  %45 = load i64, i64* %12, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %12, align 8
  br label %51

47:                                               ; preds = %25
  %48 = load i64, i64* @SECURITY_DELEGATION, align 8
  %49 = load i64, i64* %12, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %25, %47, %43, %39, %35, %34
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RPC_C_QOS_IDENTITY_DYNAMIC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i64, i64* @SECURITY_CONTEXT_TRACKING, align 8
  %63 = load i64, i64* %12, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %61, %51
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* @GENERIC_READ, align 4
  %69 = load i32, i32* @GENERIC_WRITE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @OPEN_EXISTING, align 4
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @FILE_FLAG_OVERLAPPED, align 8
  %74 = or i64 %72, %73
  %75 = call i64 @CreateFileA(i64 %67, i32 %70, i32 0, i32* null, i32 %71, i64 %74, i32 0)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %110

80:                                               ; preds = %66
  %81 = call i64 (...) @GetLastError()
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @ERROR_PIPE_BUSY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @NMPWAIT_USE_DEFAULT_WAIT, align 4
  %88 = call i64 @WaitNamedPipeA(i64 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %17

92:                                               ; preds = %85
  %93 = load i64, i64* %10, align 8
  %94 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @RPC_S_SERVER_TOO_BUSY, align 4
  store i32 %95, i32* %4, align 4
  br label %118

96:                                               ; preds = %80
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @NMPWAIT_WAIT_FOREVER, align 4
  %102 = call i64 @WaitNamedPipeA(i64 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99, %96
  %105 = call i64 (...) @GetLastError()
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %108, i32* %4, align 4
  br label %118

109:                                              ; preds = %99
  br label %17

110:                                              ; preds = %79, %17
  %111 = load i64, i64* @PIPE_READMODE_MESSAGE, align 8
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @SetNamedPipeHandleState(i64 %112, i64* %11, i32* null, i32* null)
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* @RPC_S_OK, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %110, %104, %92
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @CreateFileA(i64, i32, i32, i32*, i32, i64, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @WaitNamedPipeA(i64, i32) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @SetNamedPipeHandleState(i64, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
