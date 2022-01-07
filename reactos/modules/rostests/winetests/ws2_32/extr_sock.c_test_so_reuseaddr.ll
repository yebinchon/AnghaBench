; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_so_reuseaddr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_so_reuseaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SERVERPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"socket() failed error: %d\0A\00", align 1
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bind(s1) failed error: %d\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"wrong result in getsockopt(SO_REUSEADDR): rc=%d reuse=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bind() succeeded\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"setsockopt() failed error: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"<= Win XP behavior of SO_REUSEADDR\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"listen() failed with error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"connecting to accepting socket failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"none of the listening sockets could get the connection\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c">= Win 2003 behavior of SO_REUSEADDR\0A\00", align 1
@WSAEACCES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"expected 10013, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"bind() failed error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_so_reuseaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_so_reuseaddr() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i64, i64* @SERVERPORT, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @htons(i64 %13)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = call i8* @socket(i32 %19, i32 %20, i32 0)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @INVALID_SOCKET, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (...) @WSAGetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* %2, align 8
  %30 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %31 = call i32 @bind(i64 %29, %struct.sockaddr* %30, i32 12)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SOCKET_ERROR, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (...) @WSAGetLastError()
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @AF_INET, align 4
  %39 = load i32, i32* @SOCK_STREAM, align 4
  %40 = call i8* @socket(i32 %38, i32 %39, i32 0)
  %41 = ptrtoint i8* %40 to i64
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @INVALID_SOCKET, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (...) @WSAGetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 4660, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* @SOL_SOCKET, align 4
  %50 = load i32, i32* @SO_REUSEADDR, align 4
  %51 = bitcast i32* %5 to i8*
  %52 = call i32 @getsockopt(i64 %48, i32 %49, i32 %50, i8* %51, i32* %6)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %0
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %55, %0
  %59 = phi i1 [ false, %0 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i64, i64* %3, align 8
  %65 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %66 = call i32 @bind(i64 %64, %struct.sockaddr* %65, i32 12)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SOCKET_ERROR, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* @SOL_SOCKET, align 4
  %74 = load i32, i32* @SO_REUSEADDR, align 4
  %75 = bitcast i32* %5 to i8*
  %76 = call i32 @setsockopt(i64 %72, i32 %73, i32 %74, i8* %75, i32 4)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 (...) @WSAGetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* %3, align 8
  %83 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %84 = call i32 @bind(i64 %82, %struct.sockaddr* %83, i32 12)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %58
  %88 = load i32, i32* @AF_INET, align 4
  %89 = load i32, i32* @SOCK_STREAM, align 4
  %90 = call i8* @socket(i32 %88, i32 %89, i32 0)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = call i32 @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i64, i64* %2, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = call i32 @set_blocking(i64 %93, i32 %94)
  %96 = load i64, i64* %3, align 8
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @set_blocking(i64 %96, i32 %97)
  %99 = load i64, i64* %2, align 8
  %100 = call i32 @listen(i64 %99, i32 1)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 (...) @WSAGetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @listen(i64 %107, i32 1)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 (...) @WSAGetLastError()
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %117 = call i32 @connect(i32 %115, %struct.sockaddr* %116, i32 12)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 (...) @WSAGetLastError()
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  store i32 12, i32* %6, align 4
  %124 = load i64, i64* %2, align 8
  %125 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %126 = call i32 @accept(i64 %124, %struct.sockaddr* %125, i32* %6)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* @INVALID_SOCKET, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %87
  %132 = load i64, i64* %3, align 8
  %133 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %134 = call i32 @accept(i64 %132, %struct.sockaddr* %133, i32* %6)
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %131, %87
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @INVALID_SOCKET, align 8
  %139 = icmp ne i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i64, i64* %2, align 8
  %143 = call i32 @closesocket(i64 %142)
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = call i32 @closesocket(i64 %145)
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 @closesocket(i64 %148)
  br label %169

150:                                              ; preds = %58
  %151 = call i32 @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %152 = call i32 (...) @WSAGetLastError()
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @WSAEACCES, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %157)
  %159 = load i64, i64* %2, align 8
  %160 = call i32 @closesocket(i64 %159)
  %161 = load i64, i64* %3, align 8
  %162 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %163 = call i32 @bind(i64 %161, %struct.sockaddr* %162, i32 12)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp eq i32 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 (...) @WSAGetLastError()
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %150, %135
  %170 = load i64, i64* %3, align 8
  %171 = call i32 @closesocket(i64 %170)
  ret void
}

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockopt(i64, i32, i32, i8*, i32*) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @set_blocking(i64, i32) #1

declare dso_local i32 @listen(i64, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
