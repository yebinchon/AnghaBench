; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp_send.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i32, i64, i32 }
%struct.socket_udp_address = type { i32 }
%struct.socket_sendbuffer = type { i32, i64 }
%struct.socket_lock = type { i32 }
%struct.send_object = type { i32 (i8*)*, i32, i32 }
%union.sockaddr_all = type { i32 }
%struct.request_package = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_server_udp_send(%struct.socket_server* %0, %struct.socket_udp_address* %1, %struct.socket_sendbuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.socket_udp_address*, align 8
  %7 = alloca %struct.socket_sendbuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket_lock, align 4
  %13 = alloca %struct.send_object, align 8
  %14 = alloca %union.sockaddr_all, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.request_package, align 4
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.socket_udp_address* %1, %struct.socket_udp_address** %6, align 8
  store %struct.socket_sendbuffer* %2, %struct.socket_sendbuffer** %7, align 8
  %18 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %7, align 8
  %19 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %22 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %21, i32 0, i32 0
  %23 = load %struct.socket*, %struct.socket** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @HASH_ID(i32 %24)
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %23, i64 %25
  store %struct.socket* %26, %struct.socket** %9, align 8
  %27 = load %struct.socket*, %struct.socket** %9, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load %struct.socket*, %struct.socket** %9, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %3
  %39 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %40 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %7, align 8
  %41 = call i32 @free_buffer(%struct.socket_server* %39, %struct.socket_sendbuffer* %40)
  store i32 -1, i32* %4, align 4
  br label %145

42:                                               ; preds = %32
  %43 = load %struct.socket_udp_address*, %struct.socket_udp_address** %6, align 8
  %44 = bitcast %struct.socket_udp_address* %43 to i32*
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %50 [
    i32 129, label %48
    i32 128, label %49
  ]

48:                                               ; preds = %42
  store i32 7, i32* %11, align 4
  br label %54

49:                                               ; preds = %42
  store i32 19, i32* %11, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %52 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %7, align 8
  %53 = call i32 @free_buffer(%struct.socket_server* %51, %struct.socket_sendbuffer* %52)
  store i32 -1, i32* %4, align 4
  br label %145

54:                                               ; preds = %49, %48
  %55 = load %struct.socket*, %struct.socket** %9, align 8
  %56 = call i32 @socket_lock_init(%struct.socket* %55, %struct.socket_lock* %12)
  %57 = load %struct.socket*, %struct.socket** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @can_direct_write(%struct.socket* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %116

61:                                               ; preds = %54
  %62 = call i64 @socket_trylock(%struct.socket_lock* %12)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %61
  %65 = load %struct.socket*, %struct.socket** %9, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @can_direct_write(%struct.socket* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %64
  %70 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %71 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %7, align 8
  %72 = call i32 @send_object_init_from_sendbuffer(%struct.socket_server* %70, %struct.send_object* %13, %struct.socket_sendbuffer* %71)
  %73 = load %struct.socket*, %struct.socket** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @udp_socket_address(%struct.socket* %73, i32* %74, %union.sockaddr_all* %14)
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = call i32 @socket_unlock(%struct.socket_lock* %12)
  %80 = getelementptr inbounds %struct.send_object, %struct.send_object* %13, i32 0, i32 0
  %81 = load i32 (i8*)*, i32 (i8*)** %80, align 8
  %82 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %7, align 8
  %83 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 %81(i8* %85)
  store i32 -1, i32* %4, align 4
  br label %145

87:                                               ; preds = %69
  %88 = load %struct.socket*, %struct.socket** %9, align 8
  %89 = getelementptr inbounds %struct.socket, %struct.socket* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.send_object, %struct.send_object* %13, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.send_object, %struct.send_object* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = bitcast %union.sockaddr_all* %14 to i32*
  %96 = load i64, i64* %15, align 8
  %97 = call i32 @sendto(i32 %90, i32 %92, i32 %94, i32 0, i32* %95, i64 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %87
  %101 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %102 = load %struct.socket*, %struct.socket** %9, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @stat_write(%struct.socket_server* %101, %struct.socket* %102, i32 %103)
  %105 = call i32 @socket_unlock(%struct.socket_lock* %12)
  %106 = getelementptr inbounds %struct.send_object, %struct.send_object* %13, i32 0, i32 0
  %107 = load i32 (i8*)*, i32 (i8*)** %106, align 8
  %108 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %7, align 8
  %109 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 %107(i8* %111)
  store i32 0, i32* %4, align 4
  br label %145

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %113, %64
  %115 = call i32 @socket_unlock(%struct.socket_lock* %12)
  br label %116

116:                                              ; preds = %114, %61, %54
  %117 = load i32, i32* %8, align 4
  %118 = getelementptr inbounds %struct.request_package, %struct.request_package* %17, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %7, align 8
  %123 = getelementptr inbounds %struct.request_package, %struct.request_package* %17, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = call i32 @clone_buffer(%struct.socket_sendbuffer* %122, i32* %126)
  %128 = getelementptr inbounds %struct.request_package, %struct.request_package* %17, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 4
  %132 = getelementptr inbounds %struct.request_package, %struct.request_package* %17, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @memcpy(i32 %135, i32* %136, i32 %137)
  %139 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 12, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 @send_request(%struct.socket_server* %139, %struct.request_package* %17, i8 signext 65, i32 %143)
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %116, %100, %78, %50, %38
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @free_buffer(%struct.socket_server*, %struct.socket_sendbuffer*) #1

declare dso_local i32 @socket_lock_init(%struct.socket*, %struct.socket_lock*) #1

declare dso_local i64 @can_direct_write(%struct.socket*, i32) #1

declare dso_local i64 @socket_trylock(%struct.socket_lock*) #1

declare dso_local i32 @send_object_init_from_sendbuffer(%struct.socket_server*, %struct.send_object*, %struct.socket_sendbuffer*) #1

declare dso_local i64 @udp_socket_address(%struct.socket*, i32*, %union.sockaddr_all*) #1

declare dso_local i32 @socket_unlock(%struct.socket_lock*) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @stat_write(%struct.socket_server*, %struct.socket*, i32) #1

declare dso_local i32 @clone_buffer(%struct.socket_sendbuffer*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @send_request(%struct.socket_server*, %struct.request_package*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
