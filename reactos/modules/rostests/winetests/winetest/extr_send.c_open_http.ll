; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_send.c_open_http.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_send.c_open_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.hostent = type { i64 }
%struct.in_addr = type { i64 }
%struct.sockaddr = type { i32 }

@R_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Opening HTTP connection to %s\00", align 1
@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@R_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Hostname lookup failed for %s\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't open network socket: %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Can't connect: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @open_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @open_http(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @R_STATUS, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @report(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = call i32 @MAKEWORD(i32 2, i32 2)
  %12 = call i64 @WSAStartup(i32 %11, i32* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %15, i64* %2, align 8
  br label %76

16:                                               ; preds = %1
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = call i32 @htons(i32 80)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @inet_addr(i8* %21)
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INADDR_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %16
  %31 = load i8*, i8** %3, align 8
  %32 = call %struct.hostent* @gethostbyname(i8* %31)
  store %struct.hostent* %32, %struct.hostent** %7, align 8
  %33 = load %struct.hostent*, %struct.hostent** %7, align 8
  %34 = icmp ne %struct.hostent* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @R_ERROR, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @report(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %73

39:                                               ; preds = %30
  %40 = load %struct.hostent*, %struct.hostent** %7, align 8
  %41 = getelementptr inbounds %struct.hostent, %struct.hostent* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.in_addr*
  %44 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %16
  %49 = load i32, i32* @AF_INET, align 4
  %50 = load i32, i32* @SOCK_STREAM, align 4
  %51 = load i32, i32* @IPPROTO_TCP, align 4
  %52 = call i64 @socket(i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @INVALID_SOCKET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @R_ERROR, align 4
  %58 = call i8* (...) @WSAGetLastError()
  %59 = call i32 @report(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %73

60:                                               ; preds = %48
  %61 = load i64, i64* %6, align 8
  %62 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %63 = call i32 @connect(i64 %61, %struct.sockaddr* %62, i32 16)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %2, align 8
  br label %76

67:                                               ; preds = %60
  %68 = load i32, i32* @R_ERROR, align 4
  %69 = call i8* (...) @WSAGetLastError()
  %70 = call i32 @report(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @closesocket(i64 %71)
  br label %73

73:                                               ; preds = %67, %56, %35
  %74 = call i32 (...) @WSACleanup()
  %75 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %73, %65, %14
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @report(i32, i8*, i8*) #1

declare dso_local i64 @WSAStartup(i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i8* @WSAGetLastError(...) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @WSACleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
