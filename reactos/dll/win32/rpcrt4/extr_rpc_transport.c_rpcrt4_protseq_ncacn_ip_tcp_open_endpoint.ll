; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_protseq_ncacn_ip_tcp_open_endpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_protseq_ncacn_ip_tcp_open_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.addrinfo = type { i64, i32, %struct.sockaddr*, i32, i32, %struct.addrinfo*, i32*, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.sockaddr_storage = type { i32 }

@RPC_S_CANT_CREATE_ENDPOINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"(%p, %s)\0A\00", align 1
@AI_PASSIVE = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"getaddrinfo for port %s failed: %s\0A\00", align 1
@EAI_SERVICE = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@RPC_S_INVALID_ENDPOINT_FORMAT = common dso_local global i64 0, align 8
@NI_MAXSERV = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"skipping non-IP/IPv6 address family\0A\00", align 1
@rpc = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"trying %s:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"socket() failed: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"bind failed: %u\0A\00", align 1
@WSAEADDRINUSE = common dso_local global i64 0, align 8
@RPC_S_DUPLICATE_ENDPOINT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"getsockname() failed: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"getnameinfo failed: %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"listen failed: %u\0A\00", align 1
@RPC_S_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@FIONBIO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"couldn't make socket non-blocking, error %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"listening on %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"couldn't listen on port %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*)* @rpcrt4_protseq_ncacn_ip_tcp_open_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpcrt4_protseq_ncacn_ip_tcp_open_endpoint(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [256 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i64, i64* @RPC_S_CANT_CREATE_ENDPOINT, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %22, i8* %23)
  %25 = load i32, i32* @AI_PASSIVE, align 4
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 7
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* @PF_UNSPEC, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @IPPROTO_TCP, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store %struct.sockaddr* null, %struct.sockaddr** %34, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 6
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store %struct.addrinfo* null, %struct.addrinfo** %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i8*, i8** %5, align 8
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %41 ]
  %44 = call i32 @getaddrinfo(i32* null, i8* %43, %struct.addrinfo* %11, %struct.addrinfo** %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @gai_strerror(i32 %49)
  %51 = call i32 (i8*, i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EAI_SERVICE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EAI_NONAME, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %47
  %60 = load i64, i64* @RPC_S_INVALID_ENDPOINT_FORMAT, align 8
  store i64 %60, i64* %3, align 8
  br label %253

61:                                               ; preds = %55
  %62 = load i64, i64* @RPC_S_CANT_CREATE_ENDPOINT, align 8
  store i64 %62, i64* %3, align 8
  br label %253

63:                                               ; preds = %42
  %64 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %64, %struct.addrinfo** %10, align 8
  br label %65

65:                                               ; preds = %243, %63
  %66 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %67 = icmp ne %struct.addrinfo* %66, null
  br i1 %67, label %68, label %247

68:                                               ; preds = %65
  %69 = load i32, i32* @NI_MAXSERV, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %16, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %17, align 8
  %73 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AF_INET, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AF_INET6, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 4, i32* %19, align 4
  br label %240

86:                                               ; preds = %78, %68
  %87 = load i32, i32* @rpc, align 4
  %88 = call i64 @TRACE_ON(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 2
  %93 = load %struct.sockaddr*, %struct.sockaddr** %92, align 8
  %94 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %98 = trunc i64 %70 to i32
  %99 = load i32, i32* @NI_NUMERICHOST, align 4
  %100 = load i32, i32* @NI_NUMERICSERV, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @getnameinfo(%struct.sockaddr* %93, i32 %96, i8* %97, i32 256, i8* %72, i32 %98, i32 %101)
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %104 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %103, i8* %72)
  br label %105

105:                                              ; preds = %90, %86
  %106 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %107 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @socket(i64 %108, i32 %111, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %105
  %119 = call i32 (...) @WSAGetLastError()
  %120 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i64, i64* @RPC_S_CANT_CREATE_ENDPOINT, align 8
  store i64 %121, i64* %6, align 8
  store i32 4, i32* %19, align 4
  br label %240

122:                                              ; preds = %105
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %125 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %124, i32 0, i32 2
  %126 = load %struct.sockaddr*, %struct.sockaddr** %125, align 8
  %127 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %128 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @bind(i32 %123, %struct.sockaddr* %126, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %122
  %134 = call i32 (...) @WSAGetLastError()
  %135 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @closesocket(i32 %136)
  %138 = call i32 (...) @WSAGetLastError()
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @WSAEADDRINUSE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i64, i64* @RPC_S_DUPLICATE_ENDPOINT, align 8
  store i64 %143, i64* %6, align 8
  br label %146

144:                                              ; preds = %133
  %145 = load i64, i64* @RPC_S_CANT_CREATE_ENDPOINT, align 8
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %144, %142
  store i32 4, i32* %19, align 4
  br label %240

147:                                              ; preds = %122
  store i32 4, i32* %15, align 4
  %148 = load i32, i32* %7, align 4
  %149 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  %150 = call i64 @getsockname(i32 %148, %struct.sockaddr* %149, i32* %15)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = call i32 (...) @WSAGetLastError()
  %154 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @closesocket(i32 %155)
  %157 = load i64, i64* @RPC_S_CANT_CREATE_ENDPOINT, align 8
  store i64 %157, i64* %6, align 8
  store i32 4, i32* %19, align 4
  br label %240

158:                                              ; preds = %147
  %159 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  %160 = load i32, i32* %15, align 4
  %161 = trunc i64 %70 to i32
  %162 = load i32, i32* @NI_NUMERICSERV, align 4
  %163 = call i32 @getnameinfo(%struct.sockaddr* %159, i32 %160, i8* null, i32 0, i8* %72, i32 %161, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %158
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @gai_strerror(i32 %167)
  %169 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @closesocket(i32 %170)
  %172 = load i64, i64* @RPC_S_CANT_CREATE_ENDPOINT, align 8
  store i64 %172, i64* %6, align 8
  store i32 4, i32* %19, align 4
  br label %240

173:                                              ; preds = %158
  %174 = bitcast %struct.TYPE_6__** %12 to i32**
  %175 = load i32, i32* @TRUE, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @RPCRT4_CreateConnection(i32** %174, i32 %175, i32 %178, i32* null, i8* %72, i32* null, i32* null, i32* null, i32* null)
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* @RPC_S_OK, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %173
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @closesocket(i32 %184)
  %186 = load i64, i64* %13, align 8
  store i64 %186, i64* %6, align 8
  store i32 4, i32* %19, align 4
  br label %240

187:                                              ; preds = %173
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @listen(i32 %191, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %187
  %199 = call i32 (...) @WSAGetLastError()
  %200 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %199)
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = call i32 @RPCRT4_ReleaseConnection(%struct.TYPE_7__* %202)
  %204 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %204, i64* %6, align 8
  store i32 4, i32* %19, align 4
  br label %240

205:                                              ; preds = %187
  store i32 1, i32* %18, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @FIONBIO, align 4
  %208 = call i32 @ioctlsocket(i32 %206, i32 %207, i32* %18)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %205
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %212)
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = call i32 @RPCRT4_ReleaseConnection(%struct.TYPE_7__* %215)
  %217 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %217, i64* %6, align 8
  store i32 4, i32* %19, align 4
  br label %240

218:                                              ; preds = %205
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = call i32 @EnterCriticalSection(i32* %220)
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = call i32 @list_add_tail(i32* %223, i32* %226)
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  store %struct.TYPE_5__* %228, %struct.TYPE_5__** %231, align 8
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = call i32 @LeaveCriticalSection(i32* %233)
  %235 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %236 = call i32 @freeaddrinfo(%struct.addrinfo* %235)
  %237 = load i8*, i8** %5, align 8
  %238 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %237)
  %239 = load i64, i64* @RPC_S_OK, align 8
  store i64 %239, i64* %3, align 8
  store i32 1, i32* %19, align 4
  br label %240

240:                                              ; preds = %218, %211, %198, %183, %166, %152, %146, %118, %84
  %241 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %19, align 4
  switch i32 %242, label %255 [
    i32 4, label %243
    i32 1, label %253
  ]

243:                                              ; preds = %240
  %244 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %245 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %244, i32 0, i32 5
  %246 = load %struct.addrinfo*, %struct.addrinfo** %245, align 8
  store %struct.addrinfo* %246, %struct.addrinfo** %10, align 8
  br label %65

247:                                              ; preds = %65
  %248 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %249 = call i32 @freeaddrinfo(%struct.addrinfo* %248)
  %250 = load i8*, i8** %5, align 8
  %251 = call i32 (i8*, i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %250)
  %252 = load i64, i64* %6, align 8
  store i64 %252, i64* %3, align 8
  br label %253

253:                                              ; preds = %247, %240, %61, %59
  %254 = load i64, i64* %3, align 8
  ret i64 %254

255:                                              ; preds = %240
  unreachable
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ERR(i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @RPCRT4_CreateConnection(i32**, i32, i32, i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @RPCRT4_ReleaseConnection(%struct.TYPE_7__*) #1

declare dso_local i32 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
