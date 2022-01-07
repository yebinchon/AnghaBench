; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp_connect.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i32, i64, i32 }
%struct.socket_lock = type { i32 }
%struct.addrinfo = type { i64, i64, i32, i32 }
%struct.request_package = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%union.sockaddr_all = type { i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@PROTOCOL_UDP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@PROTOCOL_UDPv6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_server_udp_connect(%struct.socket_server* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.socket_lock, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca [16 x i8], align 16
  %16 = alloca %struct.request_package, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %20 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %19, i32 0, i32 0
  %21 = load %struct.socket*, %struct.socket** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @HASH_ID(i32 %22)
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %21, i64 %23
  store %struct.socket* %24, %struct.socket** %10, align 8
  %25 = load %struct.socket*, %struct.socket** %10, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load %struct.socket*, %struct.socket** %10, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %4
  store i32 -1, i32* %5, align 4
  br label %118

37:                                               ; preds = %30
  %38 = load %struct.socket*, %struct.socket** %10, align 8
  %39 = call i32 @socket_lock_init(%struct.socket* %38, %struct.socket_lock* %11)
  %40 = call i32 @socket_lock(%struct.socket_lock* %11)
  %41 = load %struct.socket*, %struct.socket** %10, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.socket*, %struct.socket** %10, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %37
  %53 = call i32 @socket_unlock(%struct.socket_lock* %11)
  store i32 -1, i32* %5, align 4
  br label %118

54:                                               ; preds = %46
  %55 = load %struct.socket*, %struct.socket** %10, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 2
  %57 = call i32 @ATOM_INC(i32* %56)
  %58 = call i32 @socket_unlock(%struct.socket_lock* %11)
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = call i32 @memset(%struct.addrinfo* %13, i32 0, i32 24)
  %63 = load i64, i64* @AF_UNSPEC, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* @SOCK_DGRAM, align 4
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IPPROTO_UDP, align 4
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %71 = call i32 @getaddrinfo(i8* %69, i8* %70, %struct.addrinfo* %13, %struct.addrinfo** %14)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %118

75:                                               ; preds = %54
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds %struct.request_package, %struct.request_package* %16, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AF_INET, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @PROTOCOL_UDP, align 4
  store i32 %86, i32* %17, align 4
  br label %99

87:                                               ; preds = %75
  %88 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AF_INET6, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @PROTOCOL_UDPv6, align 4
  store i32 %94, i32* %17, align 4
  br label %98

95:                                               ; preds = %87
  %96 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %97 = call i32 @freeaddrinfo(%struct.addrinfo* %96)
  store i32 -1, i32* %5, align 4
  br label %118

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %85
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %union.sockaddr_all*
  %105 = getelementptr inbounds %struct.request_package, %struct.request_package* %16, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @gen_udp_address(i32 %100, %union.sockaddr_all* %104, i32 %108)
  store i32 %109, i32* %18, align 4
  %110 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %111 = call i32 @freeaddrinfo(%struct.addrinfo* %110)
  %112 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 4, %114
  %116 = trunc i64 %115 to i32
  %117 = call i32 @send_request(%struct.socket_server* %112, %struct.request_package* %16, i8 signext 67, i32 %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %99, %95, %74, %52, %36
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @socket_lock_init(%struct.socket*, %struct.socket_lock*) #1

declare dso_local i32 @socket_lock(%struct.socket_lock*) #1

declare dso_local i32 @socket_unlock(%struct.socket_lock*) #1

declare dso_local i32 @ATOM_INC(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @gen_udp_address(i32, %union.sockaddr_all*, i32) #1

declare dso_local i32 @send_request(%struct.socket_server*, %struct.request_package*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
