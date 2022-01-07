; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_ip_pktinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_ip_pktinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_25__*, %struct.sockaddr* }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_25__ = type { i8*, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.in_pktinfo = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@__const.test_ip_pktinfo.msg = private unnamed_addr constant [6 x i8] c"HELLO\00", align 1
@WSAID_WSARECVMSG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Could not create event object, some tests will be skipped. errno = %d\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"socket() failed error, some tests skipped: %d\0A\00", align 1
@SIO_GET_EXTENSION_FUNCTION_POINTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"WSARecvMsg is unsupported, some tests will be skipped.\0A\00", align 1
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"bind() failed error: %d\0A\00", align 1
@IPPROTO_IP = common dso_local global i64 0, align 8
@IP_PKTINFO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"failed to set IPPROTO_IP flag IP_PKTINFO!\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Failed to call getsockname, some tests skipped: %d\0A\00", align 1
@WSAEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"WSARecvMsg() failed error: %d (ret = %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"sendto() failed error: %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@WSAEMSGSIZE = common dso_local global i32 0, align 4
@MSG_CTRUNC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"WSARecvMsg() failed error: %d (ret: %d, flags: %d)\0A\00", align 1
@WSA_IO_PENDING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"WSARecvMsg() failed error: %d\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [57 x i8] c"Server side did not receive packet, some tests skipped.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"WSAGetOverlappedResult() returned unexpected flags %d!\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"WSARecvMsg() overlapped operation set unexpected flags %d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"WSARecvMsg() control length mismatch (%d != sizeof pktbuf).\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"WSARecvMsg() buffer length does not match transmitted data!\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"WSARecvMsg() buffer does not match transmitted data!\0A\00", align 1
@IP_PKTINFO_LEN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"WSARecvMsg() control length mismatch (%d).\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"destination ip mismatch!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [49 x i8] c"IP_PKTINFO header information was not returned!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ip_pktinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ip_pktinfo() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca [10 x i8], align 1
  %3 = alloca [512 x i8], align 16
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  %19 = alloca [1 x %struct.TYPE_25__], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_23__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.in_pktinfo*, align 8
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %27 = call i8* @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 1
  %29 = load i32, i32* @INADDR_ANY, align 4
  %30 = call i8* @htonl(i32 %29)
  store i8* %30, i8** %28, align 8
  %31 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_ip_pktinfo.msg, i32 0, i32 0), i64 6, i1 false)
  %32 = load i32, i32* @WSAID_WSARECVMSG, align 4
  store i32 %32, i32* %8, align 4
  store i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)* null, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)** %9, align 8
  store i32 1, i32* %11, align 4
  %33 = call i32 @memset(%struct.TYPE_23__* %18, i32 0, i32 56)
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i64 @CreateEventA(i32* null, i32 %34, i32 %35, i32* null)
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %0
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %395

45:                                               ; preds = %0
  %46 = call i32 @memset(%struct.TYPE_23__* %22, i32 0, i32 56)
  %47 = load i32, i32* @AF_INET, align 4
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = call i32 @htons(i32 0)
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %52 = getelementptr inbounds [1 x %struct.TYPE_25__], [1 x %struct.TYPE_25__]* %19, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 16
  %54 = getelementptr inbounds [1 x %struct.TYPE_25__], [1 x %struct.TYPE_25__]* %19, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  store i32 10, i32* %55, align 8
  %56 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 6
  store %struct.sockaddr* %56, %struct.sockaddr** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  store i32 16, i32* %58, align 8
  %59 = getelementptr inbounds [1 x %struct.TYPE_25__], [1 x %struct.TYPE_25__]* %19, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 5
  store %struct.TYPE_25__* %59, %struct.TYPE_25__** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  store i32 0, i32* %65, align 8
  store i32 0, i32* %23, align 4
  br label %66

66:                                               ; preds = %387, %45
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 4
  br i1 %69, label %70, label %390

70:                                               ; preds = %66
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @AF_INET, align 4
  %79 = load i32, i32* @SOCK_DGRAM, align 4
  %80 = call i64 @socket(i32 %78, i32 %79, i32 0)
  store i64 %80, i64* %20, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* @INVALID_SOCKET, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = call i32 (...) @WSAGetLastError()
  %86 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %391

87:                                               ; preds = %70
  %88 = load i64, i64* %20, align 8
  %89 = load i32, i32* @SIO_GET_EXTENSION_FUNCTION_POINTER, align 4
  %90 = bitcast i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)** %9 to i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*
  %91 = call i32 @WSAIoctl(i64 %88, i32 %89, i32* %8, i32 4, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)* %90, i32 8, i32* %13, i32* null, i32* null)
  %92 = load i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)** %9, align 8
  %93 = icmp ne i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = call i32 @win_skip(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i64, i64* %20, align 8
  %97 = call i32 @closesocket(i64 %96)
  br label %391

98:                                               ; preds = %87
  %99 = load i64, i64* %20, align 8
  %100 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %101 = call i32 @bind(i64 %99, %struct.sockaddr* %100, i32 16)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @SOCKET_ERROR, align 4
  %104 = icmp ne i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @WSAGetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* @IPPROTO_IP, align 8
  %110 = load i64, i64* @IP_PKTINFO, align 8
  %111 = bitcast i32* %11 to i8*
  %112 = call i32 @setsockopt(i64 %108, i64 %109, i64 %110, i8* %111, i32 4)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 16, i32* %16, align 4
  %117 = load i64, i64* %20, align 8
  %118 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %119 = call i64 @getsockname(i64 %117, %struct.sockaddr* %118, i32* %16)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %98
  %122 = call i32 (...) @WSAGetLastError()
  %123 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load i64, i64* %20, align 8
  %125 = call i32 @closesocket(i64 %124)
  br label %391

126:                                              ; preds = %98
  %127 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %128 = load i8*, i8** %127, align 16
  %129 = ptrtoint i8* %128 to i64
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* @AF_INET, align 4
  %133 = load i32, i32* @SOCK_DGRAM, align 4
  %134 = call i64 @socket(i32 %132, i32 %133, i32 0)
  store i64 %134, i64* %21, align 8
  %135 = load i64, i64* %21, align 8
  %136 = load i64, i64* @INVALID_SOCKET, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %126
  %139 = call i32 (...) @WSAGetLastError()
  %140 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* %20, align 8
  %142 = call i32 @closesocket(i64 %141)
  br label %391

143:                                              ; preds = %126
  %144 = load i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)** %9, align 8
  %145 = load i64, i64* %20, align 8
  %146 = call i32 %144(i64 %145, %struct.TYPE_23__* null, i32* null, %struct.TYPE_23__* null, i32* null)
  store i32 %146, i32* %10, align 4
  %147 = call i32 (...) @WSAGetLastError()
  store i32 %147, i32* %24, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @SOCKET_ERROR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* @WSAEFAULT, align 4
  %154 = icmp eq i32 %152, %153
  br label %155

155:                                              ; preds = %151, %143
  %156 = phi i1 [ false, %143 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %158, i32 %159)
  %161 = call i32 @SetLastError(i32 -559038737)
  %162 = load i64, i64* %21, align 8
  %163 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %164 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %165 = call i32 @sendto(i64 %162, i8* %163, i32 6, i32 0, %struct.sockaddr* %164, i32 16)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = icmp eq i64 %167, 6
  %169 = zext i1 %168 to i32
  %170 = call i32 (...) @WSAGetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %170)
  %172 = call i32 (...) @GetLastError()
  %173 = load i32, i32* @ERROR_SUCCESS, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  store i32 1, i32* %179, align 8
  %180 = load i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)** %9, align 8
  %181 = load i64, i64* %20, align 8
  %182 = call i32 %180(i64 %181, %struct.TYPE_23__* %22, i32* %14, %struct.TYPE_23__* null, i32* null)
  store i32 %182, i32* %10, align 4
  %183 = call i32 (...) @WSAGetLastError()
  store i32 %183, i32* %24, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @SOCKET_ERROR, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %155
  %188 = load i32, i32* %24, align 4
  %189 = load i32, i32* @WSAEMSGSIZE, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @MSG_CTRUNC, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %191, %187, %155
  %198 = phi i1 [ false, %187 ], [ false, %155 ], [ %196, %191 ]
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %24, align 4
  %201 = load i32, i32* %10, align 4
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %200, i32 %201, i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  store i32 0, i32* %205, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  store i32 1, i32* %207, align 8
  %208 = load i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)** %9, align 8
  %209 = load i64, i64* %20, align 8
  %210 = call i32 %208(i64 %209, %struct.TYPE_23__* %22, i32* null, %struct.TYPE_23__* %18, i32* null)
  store i32 %210, i32* %10, align 4
  %211 = call i32 (...) @WSAGetLastError()
  store i32 %211, i32* %24, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %197
  %215 = load i32, i32* %24, align 4
  %216 = load i32, i32* @WSA_IO_PENDING, align 4
  %217 = icmp eq i32 %215, %216
  br label %218

218:                                              ; preds = %214, %197
  %219 = phi i1 [ false, %197 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %24, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %221)
  %223 = call i32 @SetLastError(i32 -559038737)
  %224 = load i64, i64* %21, align 8
  %225 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %226 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %227 = call i32 @sendto(i64 %224, i8* %225, i32 6, i32 0, %struct.sockaddr* %226, i32 16)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = icmp eq i64 %229, 6
  %231 = zext i1 %230 to i32
  %232 = call i32 (...) @WSAGetLastError()
  %233 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %232)
  %234 = call i32 (...) @GetLastError()
  %235 = load i32, i32* @ERROR_SUCCESS, align 4
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 (...) @GetLastError()
  %239 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @WaitForSingleObject(i64 %241, i32 100)
  %243 = load i64, i64* @WAIT_OBJECT_0, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %218
  %246 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  %247 = load i64, i64* %21, align 8
  %248 = call i32 @closesocket(i64 %247)
  %249 = load i64, i64* %20, align 8
  %250 = call i32 @closesocket(i64 %249)
  br label %387

251:                                              ; preds = %218
  store i32 0, i32* %15, align 4
  %252 = load i64, i64* %20, align 8
  %253 = load i32, i32* @FALSE, align 4
  %254 = call i32 @WSAGetOverlappedResult(i64 %252, %struct.TYPE_23__* %18, i32* null, i32 %253, i32* %15)
  %255 = load i32, i32* %15, align 4
  %256 = icmp eq i32 %255, 0
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %15, align 4
  %259 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 %258)
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @MSG_CTRUNC, align 4
  %263 = icmp eq i32 %261, %262
  %264 = zext i1 %263 to i32
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0), i32 %266)
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  store i32 0, i32* %268, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 1
  store i32 512, i32* %270, align 8
  %271 = load i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)** %9, align 8
  %272 = load i64, i64* %20, align 8
  %273 = call i32 %271(i64 %272, %struct.TYPE_23__* %22, i32* null, %struct.TYPE_23__* %18, i32* null)
  store i32 %273, i32* %10, align 4
  %274 = call i32 (...) @WSAGetLastError()
  store i32 %274, i32* %24, align 4
  %275 = load i32, i32* %10, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %251
  %278 = load i32, i32* %24, align 4
  %279 = load i32, i32* @WSA_IO_PENDING, align 4
  %280 = icmp eq i32 %278, %279
  br label %281

281:                                              ; preds = %277, %251
  %282 = phi i1 [ false, %251 ], [ %280, %277 ]
  %283 = zext i1 %282 to i32
  %284 = load i32, i32* %24, align 4
  %285 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %284)
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = icmp eq i64 %289, 512
  %291 = zext i1 %290 to i32
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i32 %294)
  %296 = load i64, i64* %21, align 8
  %297 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %298 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %299 = call i32 @sendto(i64 %296, i8* %297, i32 6, i32 0, %struct.sockaddr* %298, i32 16)
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %10, align 4
  %301 = zext i32 %300 to i64
  %302 = icmp eq i64 %301, 6
  %303 = zext i1 %302 to i32
  %304 = call i32 (...) @WSAGetLastError()
  %305 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %304)
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i64 @WaitForSingleObject(i64 %307, i32 100)
  %309 = load i64, i64* @WAIT_OBJECT_0, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %281
  %312 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  %313 = load i64, i64* %21, align 8
  %314 = call i32 @closesocket(i64 %313)
  %315 = load i64, i64* %20, align 8
  %316 = call i32 @closesocket(i64 %315)
  br label %387

317:                                              ; preds = %281
  store i32 0, i32* %14, align 4
  %318 = load i64, i64* %20, align 8
  %319 = load i32, i32* @FALSE, align 4
  %320 = call i32 @WSAGetOverlappedResult(i64 %318, %struct.TYPE_23__* %18, i32* %14, i32 %319, i32* null)
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = icmp eq i64 %322, 6
  %324 = zext i1 %323 to i32
  %325 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0))
  %326 = getelementptr inbounds [1 x %struct.TYPE_25__], [1 x %struct.TYPE_25__]* %19, i64 0, i64 0
  %327 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 16
  %329 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %330 = call i64 @strncmp(i8* %328, i8* %329, i32 6)
  %331 = icmp eq i64 %330, 0
  %332 = zext i1 %331 to i32
  %333 = call i32 (i32, i8*, ...) @ok(i32 %332, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0))
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @IP_PKTINFO_LEN, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = call i32 (i32, i8*, ...) @ok(i32 %339, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %342)
  %344 = load i32, i32* @FALSE, align 4
  store i32 %344, i32* %12, align 4
  %345 = call %struct.TYPE_24__* @WSA_CMSG_FIRSTHDR(%struct.TYPE_23__* %22)
  store %struct.TYPE_24__* %345, %struct.TYPE_24__** %17, align 8
  br label %346

346:                                              ; preds = %377, %317
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %348 = icmp ne %struct.TYPE_24__* %347, null
  br i1 %348, label %349, label %380

349:                                              ; preds = %346
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @IPPROTO_IP, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %376

355:                                              ; preds = %349
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @IP_PKTINFO, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %376

361:                                              ; preds = %355
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %363 = call i64 @WSA_CMSG_DATA(%struct.TYPE_24__* %362)
  %364 = inttoptr i64 %363 to %struct.in_pktinfo*
  store %struct.in_pktinfo* %364, %struct.in_pktinfo** %25, align 8
  %365 = load %struct.in_pktinfo*, %struct.in_pktinfo** %25, align 8
  %366 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp eq i64 %368, %371
  %373 = zext i1 %372 to i32
  %374 = call i32 (i32, i8*, ...) @ok(i32 %373, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %375 = load i32, i32* @TRUE, align 4
  store i32 %375, i32* %12, align 4
  br label %376

376:                                              ; preds = %361, %355, %349
  br label %377

377:                                              ; preds = %376
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %379 = call %struct.TYPE_24__* @WSA_CMSG_NXTHDR(%struct.TYPE_23__* %22, %struct.TYPE_24__* %378)
  store %struct.TYPE_24__* %379, %struct.TYPE_24__** %17, align 8
  br label %346

380:                                              ; preds = %346
  %381 = load i32, i32* %12, align 4
  %382 = call i32 (i32, i8*, ...) @ok(i32 %381, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0))
  %383 = load i64, i64* %21, align 8
  %384 = call i32 @closesocket(i64 %383)
  %385 = load i64, i64* %20, align 8
  %386 = call i32 @closesocket(i64 %385)
  br label %387

387:                                              ; preds = %380, %311, %245
  %388 = load i32, i32* %23, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %23, align 4
  br label %66

390:                                              ; preds = %66
  br label %391

391:                                              ; preds = %390, %138, %121, %94, %84
  %392 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = call i32 @CloseHandle(i64 %393)
  br label %395

395:                                              ; preds = %391, %42
  ret void
}

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i8* @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @CreateEventA(i32*, i32, i32, i32*) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @WSAIoctl(i64, i32, i32*, i32, i32 (i64, %struct.TYPE_23__*, i32*, %struct.TYPE_23__*, i32*)*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @setsockopt(i64, i64, i64, i8*, i32) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @sendto(i64, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @WSAGetOverlappedResult(i64, %struct.TYPE_23__*, i32*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_24__* @WSA_CMSG_FIRSTHDR(%struct.TYPE_23__*) #1

declare dso_local i64 @WSA_CMSG_DATA(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @WSA_CMSG_NXTHDR(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
