; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_send.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, %struct.socket* }
%struct.socket = type { i32, i64, i64, i32, i64, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.socket_sendbuffer = type { i32, i64 }
%struct.socket_lock = type { i32 }
%struct.send_object = type { i64, i32 (i8*)*, i32 }
%union.sockaddr_all = type { i32 }
%struct.request_package = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8* }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@PROTOCOL_TCP = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"socket-server : set udp (%d) address first.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_server_send(%struct.socket_server* %0, %struct.socket_sendbuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket_server*, align 8
  %5 = alloca %struct.socket_sendbuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.socket_lock, align 4
  %9 = alloca %struct.send_object, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.sockaddr_all, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.request_package, align 8
  store %struct.socket_server* %0, %struct.socket_server** %4, align 8
  store %struct.socket_sendbuffer* %1, %struct.socket_sendbuffer** %5, align 8
  %14 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %18 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %17, i32 0, i32 1
  %19 = load %struct.socket*, %struct.socket** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @HASH_ID(i32 %20)
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %19, i64 %21
  store %struct.socket* %22, %struct.socket** %7, align 8
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %2
  %35 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %36 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %37 = call i32 @free_buffer(%struct.socket_server* %35, %struct.socket_sendbuffer* %36)
  store i32 -1, i32* %3, align 4
  br label %164

38:                                               ; preds = %28
  %39 = load %struct.socket*, %struct.socket** %7, align 8
  %40 = call i32 @socket_lock_init(%struct.socket* %39, %struct.socket_lock* %8)
  %41 = load %struct.socket*, %struct.socket** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @can_direct_write(%struct.socket* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %146

45:                                               ; preds = %38
  %46 = call i64 @socket_trylock(%struct.socket_lock* %8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %146

48:                                               ; preds = %45
  %49 = load %struct.socket*, %struct.socket** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @can_direct_write(%struct.socket* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %144

53:                                               ; preds = %48
  %54 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %55 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %56 = call i32 @send_object_init_from_sendbuffer(%struct.socket_server* %54, %struct.send_object* %9, %struct.socket_sendbuffer* %55)
  %57 = load %struct.socket*, %struct.socket** %7, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PROTOCOL_TCP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.socket*, %struct.socket** %7, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.send_object, %struct.send_object* %9, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.send_object, %struct.send_object* %9, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @write(i32 %65, i32 %67, i64 %69)
  store i64 %70, i64* %10, align 8
  br label %103

71:                                               ; preds = %53
  %72 = load %struct.socket*, %struct.socket** %7, align 8
  %73 = load %struct.socket*, %struct.socket** %7, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @udp_socket_address(%struct.socket* %72, i32 %76, %union.sockaddr_all* %11)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = call i32 @socket_unlock(%struct.socket_lock* %8)
  %85 = getelementptr inbounds %struct.send_object, %struct.send_object* %9, i32 0, i32 1
  %86 = load i32 (i8*)*, i32 (i8*)** %85, align 8
  %87 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %88 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 %86(i8* %90)
  store i32 -1, i32* %3, align 4
  br label %164

92:                                               ; preds = %71
  %93 = load %struct.socket*, %struct.socket** %7, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.send_object, %struct.send_object* %9, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.send_object, %struct.send_object* %9, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = bitcast %union.sockaddr_all* %11 to i32*
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @sendto(i32 %95, i32 %97, i64 %99, i32 0, i32* %100, i64 %101)
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %92, %62
  %104 = load i64, i64* %10, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i64 0, i64* %10, align 8
  br label %107

107:                                              ; preds = %106, %103
  %108 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %109 = load %struct.socket*, %struct.socket** %7, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @stat_write(%struct.socket_server* %108, %struct.socket* %109, i64 %110)
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.send_object, %struct.send_object* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = call i32 @socket_unlock(%struct.socket_lock* %8)
  %118 = getelementptr inbounds %struct.send_object, %struct.send_object* %9, i32 0, i32 1
  %119 = load i32 (i8*)*, i32 (i8*)** %118, align 8
  %120 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %121 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 %119(i8* %123)
  store i32 0, i32* %3, align 4
  br label %164

125:                                              ; preds = %107
  %126 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %127 = load %struct.socket*, %struct.socket** %7, align 8
  %128 = getelementptr inbounds %struct.socket, %struct.socket* %127, i32 0, i32 5
  %129 = call i8* @clone_buffer(%struct.socket_sendbuffer* %126, i32* %128)
  %130 = load %struct.socket*, %struct.socket** %7, align 8
  %131 = getelementptr inbounds %struct.socket, %struct.socket* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.socket*, %struct.socket** %7, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  %135 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %136 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.socket*, %struct.socket** %7, align 8
  %139 = getelementptr inbounds %struct.socket, %struct.socket* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.socket*, %struct.socket** %7, align 8
  %142 = call i32 @sp_write(i32 %137, i32 %140, %struct.socket* %141, i32 1)
  %143 = call i32 @socket_unlock(%struct.socket_lock* %8)
  store i32 0, i32* %3, align 4
  br label %164

144:                                              ; preds = %48
  %145 = call i32 @socket_unlock(%struct.socket_lock* %8)
  br label %146

146:                                              ; preds = %144, %45, %38
  %147 = load %struct.socket*, %struct.socket** %7, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @inc_sending_ref(%struct.socket* %147, i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %155 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = call i8* @clone_buffer(%struct.socket_sendbuffer* %154, i32* %157)
  %159 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  store i8* %158, i8** %161, align 8
  %162 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %163 = call i32 @send_request(%struct.socket_server* %162, %struct.request_package* %13, i8 signext 68, i32 16)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %146, %125, %116, %80, %34
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @free_buffer(%struct.socket_server*, %struct.socket_sendbuffer*) #1

declare dso_local i32 @socket_lock_init(%struct.socket*, %struct.socket_lock*) #1

declare dso_local i64 @can_direct_write(%struct.socket*, i32) #1

declare dso_local i64 @socket_trylock(%struct.socket_lock*) #1

declare dso_local i32 @send_object_init_from_sendbuffer(%struct.socket_server*, %struct.send_object*, %struct.socket_sendbuffer*) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i64 @udp_socket_address(%struct.socket*, i32, %union.sockaddr_all*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket_lock*) #1

declare dso_local i64 @sendto(i32, i32, i64, i32, i32*, i64) #1

declare dso_local i32 @stat_write(%struct.socket_server*, %struct.socket*, i64) #1

declare dso_local i8* @clone_buffer(%struct.socket_sendbuffer*, i32*) #1

declare dso_local i32 @sp_write(i32, i32, %struct.socket*, i32) #1

declare dso_local i32 @inc_sending_ref(%struct.socket*, i32) #1

declare dso_local i32 @send_request(%struct.socket_server*, %struct.request_package*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
