; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_tcp_socketpair.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_tcp_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @tcp_socketpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_socketpair(i64* %0, i64* %1) #0 {
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
  %18 = call i64 @socket(i32 %15, i32 %16, i32 %17)
  %19 = load i64*, i64** %4, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INVALID_SOCKET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %73

25:                                               ; preds = %2
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load i32, i32* @SOCK_STREAM, align 4
  %28 = load i32, i32* @IPPROTO_TCP, align 4
  %29 = call i64 @socket(i32 %26, i32 %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @INVALID_SOCKET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %73

34:                                               ; preds = %25
  %35 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 8)
  %36 = load i32, i32* @AF_INET, align 4
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %6, align 8
  %42 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %43 = call i32 @bind(i64 %41, %struct.sockaddr* %42, i32 8)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %73

47:                                               ; preds = %34
  store i32 8, i32* %8, align 4
  %48 = load i64, i64* %6, align 8
  %49 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %50 = call i32 @getsockname(i64 %48, %struct.sockaddr* %49, i32* %8)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %73

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @listen(i64 %55, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %73

60:                                               ; preds = %54
  %61 = load i64*, i64** %4, align 8
  %62 = load i64, i64* %61, align 8
  %63 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %64 = call i32 @connect(i64 %62, %struct.sockaddr* %63, i32 8)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %73

68:                                               ; preds = %60
  store i32 8, i32* %8, align 4
  %69 = load i64, i64* %6, align 8
  %70 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %71 = call i64 @accept(i64 %69, %struct.sockaddr* %70, i32* %8)
  %72 = load i64*, i64** %5, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %67, %59, %53, %46, %33, %24
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @INVALID_SOCKET, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @closesocket(i64 %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i64*, i64** %4, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @INVALID_SOCKET, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @INVALID_SOCKET, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %98

91:                                               ; preds = %85, %80
  %92 = load i64*, i64** %4, align 8
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @closesocket(i64 %93)
  %95 = load i64*, i64** %5, align 8
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @closesocket(i64 %96)
  store i32 -1, i32* %3, align 4
  br label %98

98:                                               ; preds = %91, %90
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @socket(i32, i32, i32) #1

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
