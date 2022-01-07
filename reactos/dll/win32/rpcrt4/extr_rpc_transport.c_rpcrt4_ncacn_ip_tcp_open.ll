; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncacn_ip_tcp_open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncacn_ip_tcp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.addrinfo = type { i64, i64, i32*, i32, i32, %struct.addrinfo*, i32*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"(%s, %s)\0A\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"getaddrinfo for %s:%s failed: %s\0A\00", align 1
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"skipping non-IP/IPv6 address family\0A\00", align 1
@rpc = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"trying %s:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"socket() failed: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"connect() failed: %u\0A\00", align 1
@TCP_NODELAY = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"couldn't connect to %s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @rpcrt4_ncacn_ip_tcp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_ncacn_ip_tcp_open(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = bitcast %struct.TYPE_5__* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @RPC_S_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %162

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @PF_UNSPEC, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* @SOCK_STREAM, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IPPROTO_TCP, align 4
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 5
  store %struct.addrinfo* null, %struct.addrinfo** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @getaddrinfo(i32 %43, i32 %46, %struct.addrinfo* %9, %struct.addrinfo** %7)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %29
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @gai_strerror(i32 %57)
  %59 = call i32 (i8*, i32, i32, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i32 %58)
  %60 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %60, i32* %2, align 4
  br label %162

61:                                               ; preds = %29
  %62 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %62, %struct.addrinfo** %8, align 8
  br label %63

63:                                               ; preds = %147, %61
  %64 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %65 = icmp ne %struct.addrinfo* %64, null
  br i1 %65, label %66, label %151

66:                                               ; preds = %63
  %67 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AF_INET6, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %147

80:                                               ; preds = %72, %66
  %81 = load i32, i32* @rpc, align 4
  %82 = call i64 @TRACE_ON(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %93 = load i32, i32* @NI_NUMERICHOST, align 4
  %94 = load i32, i32* @NI_NUMERICSERV, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @getnameinfo(i32* %87, i64 %90, i8* %91, i32 256, i8* %92, i32 256, i32 %95)
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %99 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %84, %80
  %101 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @socket(i64 %103, i32 %106, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = call i32 (...) @WSAGetLastError()
  %115 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %147

116:                                              ; preds = %100
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @connect(i32 %117, i32* %120, i64 %123)
  %125 = icmp sgt i64 0, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = call i32 (...) @WSAGetLastError()
  %128 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @closesocket(i32 %129)
  br label %147

131:                                              ; preds = %116
  store i32 1, i32* %10, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @IPPROTO_TCP, align 4
  %134 = load i32, i32* @TCP_NODELAY, align 4
  %135 = bitcast i32* %10 to i8*
  %136 = call i32 @setsockopt(i32 %132, i32 %133, i32 %134, i8* %135, i32 4)
  store i32 1, i32* %11, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @FIONBIO, align 4
  %139 = call i32 @ioctlsocket(i32 %137, i32 %138, i32* %11)
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %144 = call i32 @freeaddrinfo(%struct.addrinfo* %143)
  %145 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32, i32* @RPC_S_OK, align 4
  store i32 %146, i32* %2, align 4
  br label %162

147:                                              ; preds = %126, %113, %78
  %148 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %149 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %148, i32 0, i32 5
  %150 = load %struct.addrinfo*, %struct.addrinfo** %149, align 8
  store %struct.addrinfo* %150, %struct.addrinfo** %8, align 8
  br label %63

151:                                              ; preds = %63
  %152 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %153 = call i32 @freeaddrinfo(%struct.addrinfo* %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, i32, i32, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %151, %131, %50, %27
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @getaddrinfo(i32, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ERR(i8*, i32, i32, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @getnameinfo(i32*, i64, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i64 @connect(i32, i32*, i64) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
