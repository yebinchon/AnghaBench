; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/moztest/extr_moztest.c_SocketTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/moztest/extr_moztest.c_SocketTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Calling WSAStartup\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"WSAStartup failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"WSAStartup version unacceptable\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Calling socket\0A\00", align 1
@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"socket failed\0A\00", align 1
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Calling bind\0A\00", align 1
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"bind failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Calling getsockname\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"getsockname failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Calling listen\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"listen failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Calling connect\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"connect failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Calling accept\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"accept failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"peerAddr.sin_port != selfAddr.sin_port\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Hurray!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SocketTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [2 x i64], align 16
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @MAKEWORD(i32 2, i32 2)
  store i32 %10, i32* %7, align 4
  %11 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @WSAStartup(i32 %12, %struct.TYPE_5__* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %173

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @LOBYTE(i32 %20)
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HIBYTE(i32 %25)
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18
  %29 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (...) @WSACleanup()
  store i32 1, i32* %1, align 4
  br label %173

31:                                               ; preds = %23
  %32 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i64, i64* @INVALID_SOCKET, align 8
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %33, i64* %35, align 16
  %36 = load i32, i32* @AF_INET, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = call i64 @socket(i32 %36, i32 %37, i32 0)
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @INVALID_SOCKET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %146

44:                                               ; preds = %31
  %45 = load i32, i32* @AF_INET, align 4
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @INADDR_LOOPBACK, align 4
  %49 = call i8* @htonl(i32 %48)
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store i32 24, i32* %6, align 4
  %52 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i64, i64* %2, align 8
  %54 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @bind(i64 %53, %struct.sockaddr* %54, i32 %55)
  %57 = load i64, i64* @SOCKET_ERROR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = call i32 @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %146

61:                                               ; preds = %44
  %62 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %63 = load i64, i64* %2, align 8
  %64 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %65 = call i64 @getsockname(i64 %63, %struct.sockaddr* %64, i32* %6)
  %66 = load i64, i64* @SOCKET_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %146

70:                                               ; preds = %61
  %71 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %72 = load i64, i64* %2, align 8
  %73 = call i64 @listen(i64 %72, i32 5)
  %74 = load i64, i64* @SOCKET_ERROR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %146

78:                                               ; preds = %70
  %79 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @AF_INET, align 4
  %81 = load i32, i32* @SOCK_STREAM, align 4
  %82 = call i64 @socket(i32 %80, i32 %81, i32 0)
  %83 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %82, i64* %83, align 16
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %85 = load i64, i64* %84, align 16
  %86 = load i64, i64* @INVALID_SOCKET, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %146

90:                                               ; preds = %78
  %91 = load i32, i32* @INADDR_LOOPBACK, align 4
  %92 = call i8* @htonl(i32 %91)
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %96 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %97 = load i64, i64* %96, align 16
  %98 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @connect(i64 %97, %struct.sockaddr* %98, i32 %99)
  %101 = load i64, i64* @SOCKET_ERROR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %146

105:                                              ; preds = %90
  %106 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %108 = load i64, i64* %107, align 16
  %109 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %110 = call i64 @getsockname(i64 %108, %struct.sockaddr* %109, i32* %6)
  %111 = load i64, i64* @SOCKET_ERROR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %146

115:                                              ; preds = %105
  %116 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %117 = load i64, i64* %2, align 8
  %118 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %119 = call i64 @accept(i64 %117, %struct.sockaddr* %118, i32* %6)
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @INVALID_SOCKET, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %146

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %129, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  br label %146

135:                                              ; preds = %127
  %136 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %137 = load i64, i64* %2, align 8
  %138 = call i32 @closesocket(i64 %137)
  %139 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %140 = load i64, i64* %139, align 16
  %141 = call i32 @closesocket(i64 %140)
  %142 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @closesocket(i64 %143)
  %145 = call i32 (...) @WSACleanup()
  store i32 0, i32* %1, align 4
  br label %173

146:                                              ; preds = %133, %125, %113, %103, %88, %76, %68, %59, %42
  %147 = load i64, i64* %2, align 8
  %148 = load i64, i64* @INVALID_SOCKET, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i64, i64* %2, align 8
  %152 = call i32 @closesocket(i64 %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %155 = load i64, i64* %154, align 16
  %156 = load i64, i64* @INVALID_SOCKET, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %160 = load i64, i64* %159, align 16
  %161 = call i32 @closesocket(i64 %160)
  br label %162

162:                                              ; preds = %158, %153
  %163 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @INVALID_SOCKET, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @closesocket(i64 %169)
  br label %171

171:                                              ; preds = %167, %162
  %172 = call i32 (...) @WSACleanup()
  store i32 1, i32* %1, align 4
  br label %173

173:                                              ; preds = %171, %135, %28, %16
  %174 = load i32, i32* %1, align 4
  ret i32 %174
}

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @WSAStartup(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @WSACleanup(...) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i64 @listen(i64, i32) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
