; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_send.c_TestSend.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_send.c_TestSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"AfdCreateSocket failed with %lx\0A\00", align 1
@STATUS_INVALID_CONNECTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"AfdSend failed with %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"AfdBind failed with %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"AfdConnect failed with %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestSend() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [32 x i32], align 16
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %6 = call i32 @RtlZeroMemory(i32* %5, i32 128)
  %7 = load i8*, i8** @AF_INET, align 8
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = load i32, i32* @IPPROTO_TCP, align 4
  %10 = call i64 @AfdCreateSocket(i32* %2, i8* %7, i32 %8, i32 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @STATUS_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @AfdSend(i32 %17, i32* null, i32 0)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @STATUS_INVALID_CONNECTION, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* %2, align 4
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %27 = call i64 @AfdSend(i32 %25, i32* %26, i32 128)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @STATUS_INVALID_CONNECTION, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 24)
  %35 = load i8*, i8** @AF_INET, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = call i8* @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = call i8* @htons(i32 0)
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %44 = call i64 @AfdBind(i32 %42, %struct.sockaddr* %43, i32 24)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @STATUS_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %1, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 24)
  %52 = load i8*, i8** @AF_INET, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = call i8* @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = call i8* @htons(i32 53)
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %2, align 4
  %60 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %61 = call i64 @AfdConnect(i32 %59, %struct.sockaddr* %60, i32 24)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @STATUS_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %1, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %2, align 4
  %69 = call i64 @AfdSend(i32 %68, i32* null, i32 0)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @STATUS_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* %2, align 4
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %78 = call i64 @AfdSend(i32 %76, i32* %77, i32 128)
  store i64 %78, i64* %1, align 8
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* @STATUS_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @NtClose(i32 %85)
  ret void
}

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i64 @AfdCreateSocket(i32*, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @AfdSend(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @AfdBind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @AfdConnect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
