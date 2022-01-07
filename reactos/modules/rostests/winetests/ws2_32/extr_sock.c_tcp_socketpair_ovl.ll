; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_tcp_socketpair_ovl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_tcp_socketpair_ovl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@WSA_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @tcp_socketpair_ovl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_socketpair_ovl(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @INVALID_SOCKET, align 8
  %12 = load i64*, i64** %4, align 8
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* @INVALID_SOCKET, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = load i32, i32* @IPPROTO_TCP, align 4
  %18 = load i32, i32* @WSA_FLAG_OVERLAPPED, align 4
  %19 = call i64 @WSASocketW(i32 %15, i32 %16, i32 %17, i32* null, i32 0, i32 %18)
  %20 = load i64*, i64** %4, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INVALID_SOCKET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %75

26:                                               ; preds = %2
  %27 = load i32, i32* @AF_INET, align 4
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = load i32, i32* @IPPROTO_TCP, align 4
  %30 = load i32, i32* @WSA_FLAG_OVERLAPPED, align 4
  %31 = call i64 @WSASocketW(i32 %27, i32 %28, i32 %29, i32* null, i32 0, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @INVALID_SOCKET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %75

36:                                               ; preds = %26
  %37 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 8)
  %38 = load i32, i32* @AF_INET, align 4
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %6, align 8
  %44 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %45 = call i32 @bind(i64 %43, %struct.sockaddr* %44, i32 8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %75

49:                                               ; preds = %36
  store i32 8, i32* %8, align 4
  %50 = load i64, i64* %6, align 8
  %51 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %52 = call i32 @getsockname(i64 %50, %struct.sockaddr* %51, i32* %8)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %75

56:                                               ; preds = %49
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @listen(i64 %57, i32 1)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %75

62:                                               ; preds = %56
  %63 = load i64*, i64** %4, align 8
  %64 = load i64, i64* %63, align 8
  %65 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %66 = call i32 @connect(i64 %64, %struct.sockaddr* %65, i32 8)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %75

70:                                               ; preds = %62
  store i32 8, i32* %8, align 4
  %71 = load i64, i64* %6, align 8
  %72 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %73 = call i64 @accept(i64 %71, %struct.sockaddr* %72, i32* %8)
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %69, %61, %55, %48, %35, %25
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @INVALID_SOCKET, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @closesocket(i64 %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i64*, i64** %4, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @INVALID_SOCKET, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i64*, i64** %5, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @INVALID_SOCKET, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %100

93:                                               ; preds = %87, %82
  %94 = load i64*, i64** %4, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @closesocket(i64 %95)
  %97 = load i64*, i64** %5, align 8
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @closesocket(i64 %98)
  store i32 -1, i32* %3, align 4
  br label %100

100:                                              ; preds = %93, %92
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @WSASocketW(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @listen(i64, i32) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
