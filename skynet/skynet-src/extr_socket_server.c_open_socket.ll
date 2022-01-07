; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_open_socket.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.request_open = type { i32, i32, i32, i32 }
%struct.socket_message = type { i32, i8*, i64, i32 }
%struct.socket = type { i32, i32 }
%struct.addrinfo = type { i64, %struct.sockaddr*, i32, i32, i32, %struct.addrinfo* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@PROTOCOL_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"reach skynet socket number limit\00", align 1
@SOCKET_TYPE_CONNECTED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOCKET_OPEN = common dso_local global i32 0, align 4
@SOCKET_TYPE_CONNECTING = common dso_local global i32 0, align 4
@SOCKET_TYPE_INVALID = common dso_local global i32 0, align 4
@SOCKET_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.request_open*, %struct.socket_message*)* @open_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_socket(%struct.socket_server* %0, %struct.request_open* %1, %struct.socket_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.request_open*, align 8
  %7 = alloca %struct.socket_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca i8*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.request_open* %1, %struct.request_open** %6, align 8
  store %struct.socket_message* %2, %struct.socket_message** %7, align 8
  %18 = load %struct.request_open*, %struct.request_open** %6, align 8
  %19 = getelementptr inbounds %struct.request_open, %struct.request_open* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.request_open*, %struct.request_open** %6, align 8
  %22 = getelementptr inbounds %struct.request_open, %struct.request_open* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %25 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %28 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %30 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %32 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %31, i32 0, i32 1
  store i8* null, i8** %32, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %34 = load %struct.request_open*, %struct.request_open** %6, align 8
  %35 = getelementptr inbounds %struct.request_open, %struct.request_open* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %39 = load i64, i64* @AF_UNSPEC, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* @SOCK_STREAM, align 4
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @IPPROTO_TCP, align 4
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.request_open*, %struct.request_open** %6, align 8
  %46 = getelementptr inbounds %struct.request_open, %struct.request_open* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %49 = call i32 @getaddrinfo(i32 %47, i8* %48, %struct.addrinfo* %11, %struct.addrinfo** %12)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %3
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @gai_strerror(i32 %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %57 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %189

58:                                               ; preds = %3
  store i32 -1, i32* %15, align 4
  %59 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %59, %struct.addrinfo** %13, align 8
  br label %60

60:                                               ; preds = %100, %58
  %61 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %62 = icmp ne %struct.addrinfo* %61, null
  br i1 %62, label %63, label %104

63:                                               ; preds = %60
  %64 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @socket(i64 %66, i32 %69, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %100

77:                                               ; preds = %63
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @socket_keepalive(i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @sp_nonblocking(i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 1
  %85 = load %struct.sockaddr*, %struct.sockaddr** %84, align 8
  %86 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @connect(i32 %82, %struct.sockaddr* %85, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %77
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @EINPROGRESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @close(i32 %97)
  store i32 -1, i32* %15, align 4
  br label %100

99:                                               ; preds = %92, %77
  br label %104

100:                                              ; preds = %96, %76
  %101 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 5
  %103 = load %struct.addrinfo*, %struct.addrinfo** %102, align 8
  store %struct.addrinfo* %103, %struct.addrinfo** %13, align 8
  br label %60

104:                                              ; preds = %99, %60
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i64, i64* @errno, align 8
  %109 = call i8* @strerror(i64 %108)
  %110 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %111 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %189

112:                                              ; preds = %104
  %113 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @PROTOCOL_TCP, align 4
  %117 = load %struct.request_open*, %struct.request_open** %6, align 8
  %118 = getelementptr inbounds %struct.request_open, %struct.request_open* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.socket* @new_fd(%struct.socket_server* %113, i32 %114, i32 %115, i32 %116, i32 %119, i32 1)
  store %struct.socket* %120, %struct.socket** %9, align 8
  %121 = load %struct.socket*, %struct.socket** %9, align 8
  %122 = icmp eq %struct.socket* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %112
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @close(i32 %124)
  %126 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %127 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %126, i32 0, i32 1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %127, align 8
  br label %189

128:                                              ; preds = %112
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %174

131:                                              ; preds = %128
  %132 = load i32, i32* @SOCKET_TYPE_CONNECTED, align 4
  %133 = load %struct.socket*, %struct.socket** %9, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 1
  %137 = load %struct.sockaddr*, %struct.sockaddr** %136, align 8
  store %struct.sockaddr* %137, %struct.sockaddr** %16, align 8
  %138 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AF_INET, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %131
  %144 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %145 = bitcast %struct.sockaddr* %144 to %struct.sockaddr_in*
  %146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %145, i32 0, i32 0
  %147 = bitcast i32* %146 to i8*
  br label %153

148:                                              ; preds = %131
  %149 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %150 = bitcast %struct.sockaddr* %149 to %struct.sockaddr_in6*
  %151 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %150, i32 0, i32 0
  %152 = bitcast i32* %151 to i8*
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i8* [ %147, %143 ], [ %152, %148 ]
  store i8* %154, i8** %17, align 8
  %155 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %156 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i8*, i8** %17, align 8
  %159 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %160 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @inet_ntop(i64 %157, i8* %158, i8* %161, i32 8)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %153
  %165 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %166 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %169 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %164, %153
  %171 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %172 = call i32 @freeaddrinfo(%struct.addrinfo* %171)
  %173 = load i32, i32* @SOCKET_OPEN, align 4
  store i32 %173, i32* %4, align 4
  br label %201

174:                                              ; preds = %128
  %175 = load i32, i32* @SOCKET_TYPE_CONNECTING, align 4
  %176 = load %struct.socket*, %struct.socket** %9, align 8
  %177 = getelementptr inbounds %struct.socket, %struct.socket* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %179 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.socket*, %struct.socket** %9, align 8
  %182 = getelementptr inbounds %struct.socket, %struct.socket* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.socket*, %struct.socket** %9, align 8
  %185 = call i32 @sp_write(i32 %180, i32 %183, %struct.socket* %184, i32 1)
  br label %186

186:                                              ; preds = %174
  %187 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %188 = call i32 @freeaddrinfo(%struct.addrinfo* %187)
  store i32 -1, i32* %4, align 4
  br label %201

189:                                              ; preds = %123, %107, %52
  %190 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %191 = call i32 @freeaddrinfo(%struct.addrinfo* %190)
  %192 = load i32, i32* @SOCKET_TYPE_INVALID, align 4
  %193 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %194 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %193, i32 0, i32 1
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i64 @HASH_ID(i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store i32 %192, i32* %199, align 4
  %200 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %189, %186, %170
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @gai_strerror(i32) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @socket_keepalive(i32) #1

declare dso_local i32 @sp_nonblocking(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local %struct.socket* @new_fd(%struct.socket_server*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @inet_ntop(i64, i8*, i8*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @sp_write(i32, i32, %struct.socket*, i32) #1

declare dso_local i64 @HASH_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
