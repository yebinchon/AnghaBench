; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_send.c_TestSendTo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_send.c_TestSendTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"AfdCreateSocket failed with %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"AfdBind failed with %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"AfdSendTo failed with %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestSendTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestSendTo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [32 x i32], align 16
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %6 = call i32 @RtlZeroMemory(i32* %5, i32 128)
  %7 = load i8*, i8** @AF_INET, align 8
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = load i32, i32* @IPPROTO_UDP, align 4
  %10 = call i64 @AfdCreateSocket(i32* %2, i8* %7, i32 %8, i32 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @STATUS_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 24)
  %18 = load i8*, i8** @AF_INET, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i8* @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = call i8* @htons(i32 0)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %27 = call i64 @AfdBind(i32 %25, %struct.sockaddr* %26, i32 24)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @STATUS_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 24)
  %35 = load i8*, i8** @AF_INET, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = call i8* @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = call i8* @htons(i32 53)
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %44 = call i64 @AfdSendTo(i32 %42, i32* null, i32 0, %struct.sockaddr* %43, i32 24)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @STATUS_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %1, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %2, align 4
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %53 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %54 = call i64 @AfdSendTo(i32 %51, i32* %52, i32 128, %struct.sockaddr* %53, i32 24)
  store i64 %54, i64* %1, align 8
  %55 = load i64, i64* %1, align 8
  %56 = load i64, i64* @STATUS_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %1, align 8
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @NtClose(i32 %61)
  ret void
}

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i64 @AfdCreateSocket(i32*, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @AfdBind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @AfdSendTo(i32, i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
