; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_close.c_Test_CloseDuplicatedSocket.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_close.c_Test_CloseDuplicatedSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"socket failed %d. Aborting test.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"sendto err = %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"WSADuplicateSocketW err = %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"WSASocketW failed %d. Aborting test.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"closesocket sck err = %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"closesocket dup_sck err = %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CloseDuplicatedSocket() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %8 = load i32, i32* @AF_INET, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 2222, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 127, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load i32, i32* @SOCK_DGRAM, align 4
  %19 = load i32, i32* @IPPROTO_UDP, align 4
  %20 = call i64 @socket(i32 %17, i32 %18, i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @INVALID_SOCKET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = call i32 (...) @WSAGetLastError()
  %26 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %105

27:                                               ; preds = %0
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %31 = call i32 @_countof(i8* %30)
  %32 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %33 = call i32 @sendto(i64 %28, i8* %29, i32 %31, i32 0, %struct.sockaddr* %32, i32 24)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %36 = call i32 @_countof(i8* %35)
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (...) @WSAGetLastError()
  %41 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i64, i64* %3, align 8
  %43 = call i32 (...) @GetCurrentProcessId()
  %44 = call i32 @WSADuplicateSocketW(i64 %42, i32 %43, i32* %5)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %2, align 4
  %49 = call i32 (...) @WSAGetLastError()
  %50 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  %51 = call i64 @WSASocketW(i32 0, i32 0, i32 0, i32* %5, i32 0, i32 0)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @INVALID_SOCKET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %27
  %56 = call i32 (...) @WSAGetLastError()
  %57 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @closesocket(i64 %58)
  br label %105

60:                                               ; preds = %27
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %64 = call i32 @_countof(i8* %63)
  %65 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %66 = call i32 @sendto(i64 %61, i8* %62, i32 %64, i32 0, %struct.sockaddr* %65, i32 24)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %69 = call i32 @_countof(i8* %68)
  %70 = icmp eq i32 %67, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %2, align 4
  %73 = call i32 (...) @WSAGetLastError()
  %74 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @closesocket(i64 %75)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %2, align 4
  %81 = call i32 (...) @WSAGetLastError()
  %82 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %86 = call i32 @_countof(i8* %85)
  %87 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %88 = call i32 @sendto(i64 %83, i8* %84, i32 %86, i32 0, %struct.sockaddr* %87, i32 24)
  store i32 %88, i32* %2, align 4
  %89 = load i32, i32* %2, align 4
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %91 = call i32 @_countof(i8* %90)
  %92 = icmp eq i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %2, align 4
  %95 = call i32 (...) @WSAGetLastError()
  %96 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @closesocket(i64 %97)
  store i32 %98, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %2, align 4
  %103 = call i32 (...) @WSAGetLastError()
  %104 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %60, %55, %24
  ret void
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @sendto(i64, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @_countof(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @WSADuplicateSocketW(i64, i32, i32*) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i64 @WSASocketW(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
