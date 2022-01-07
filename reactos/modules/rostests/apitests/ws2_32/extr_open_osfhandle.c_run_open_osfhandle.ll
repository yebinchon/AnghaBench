; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_open_osfhandle.c_run_open_osfhandle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_open_osfhandle.c_run_open_osfhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid socket\0A\00", align 1
@FILE_TYPE_PIPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Expected type FILE_TYPE_PIPE, was: %lu\0A\00", align 1
@FileFsDeviceInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected STATUS_SUCCESS, got 0x%lx\0A\00", align 1
@__const.run_open_osfhandle.rtlinfo = private unnamed_addr constant %struct.TYPE_4__ { i32 16, i32 0, i32 0, i32 0 }, align 4
@FILE_DEVICE_NAMED_PIPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Expected FILE_DEVICE_NAMED_PIPE, got: 0x%lx\0A\00", align 1
@WINVER_WIN8 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Expected 0x%lx, got: 0x%lx\0A\00", align 1
@_O_BINARY = common dso_local global i32 0, align 4
@_O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Expected a valid handle (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_open_osfhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_open_osfhandle() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i64 @WSASocketA(i32 %11, i32 %12, i32 0, i32* null, i32 0, i32 0)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @INVALID_SOCKET, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @INVALID_SOCKET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %100

23:                                               ; preds = %0
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @GetFileType(i32 %25)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @FILE_TYPE_PIPE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @FileFsDeviceInformation, align 4
  %36 = call i64 @NtQueryVolumeInformationFile(i32 %34, i32* %5, %struct.TYPE_5__* %4, i32 16, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @STATUS_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %6, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @STATUS_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %23
  %47 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 bitcast (%struct.TYPE_4__* @__const.run_open_osfhandle.rtlinfo to i8*), i64 16, i1 false)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FILE_DEVICE_NAMED_PIPE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = ptrtoint %struct.TYPE_4__* %8 to i32
  %57 = call i32 @RtlGetVersion(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %60, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @WINVER_WIN8, align 8
  %67 = icmp sge i64 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 131072, i32 0
  store i32 %69, i32* %9, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %46, %23
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* @_O_BINARY, align 4
  %82 = load i32, i32* @_O_RDWR, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @_open_osfhandle(i64 %80, i32 %83)
  store i32 %84, i32* %2, align 4
  %85 = call i32* (...) @_errno()
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %2, align 4
  %88 = icmp ne i32 %87, -1
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %3, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %2, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %79
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @_close(i32 %95)
  br label %100

97:                                               ; preds = %79
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @closesocket(i64 %98)
  br label %100

100:                                              ; preds = %22, %97, %94
  ret void
}

declare dso_local i64 @WSASocketA(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetFileType(i32) #1

declare dso_local i64 @NtQueryVolumeInformationFile(i32, i32*, %struct.TYPE_5__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RtlGetVersion(i32) #1

declare dso_local i32 @_open_osfhandle(i64, i32) #1

declare dso_local i32* @_errno(...) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
