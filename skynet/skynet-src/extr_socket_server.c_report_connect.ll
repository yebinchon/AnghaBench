; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_report_connect.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_report_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32*, i32 }
%struct.socket = type { i32, i32, i32, i32 }
%struct.socket_lock = type { i32 }
%struct.socket_message = type { i32*, i64, i32, i32 }
%union.sockaddr_all = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOCKET_ERR = common dso_local global i32 0, align 4
@SOCKET_TYPE_CONNECTED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOCKET_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*)* @report_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_connect(%struct.socket_server* %0, %struct.socket* %1, %struct.socket_lock* %2, %struct.socket_message* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_server*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.socket_lock*, align 8
  %9 = alloca %struct.socket_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.sockaddr_all, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.socket_lock* %2, %struct.socket_lock** %8, align 8
  store %struct.socket_message* %3, %struct.socket_message** %9, align 8
  store i32 4, i32* %11, align 4
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SOL_SOCKET, align 4
  %20 = load i32, i32* @SO_ERROR, align 4
  %21 = call i32 @getsockopt(i32 %18, i32 %19, i32 %20, i32* %10, i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24, %4
  %28 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = load %struct.socket_lock*, %struct.socket_lock** %8, align 8
  %31 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %32 = call i32 @force_close(%struct.socket_server* %28, %struct.socket* %29, %struct.socket_lock* %30, %struct.socket_message* %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @strerror(i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %40 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %47

41:                                               ; preds = %27
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %46 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %48, i32* %5, align 4
  br label %121

49:                                               ; preds = %24
  %50 = load i32, i32* @SOCKET_TYPE_CONNECTED, align 4
  %51 = load %struct.socket*, %struct.socket** %7, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.socket*, %struct.socket** %7, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %57 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.socket*, %struct.socket** %7, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %62 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %64 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.socket*, %struct.socket** %7, align 8
  %66 = call i64 @nomore_sending_data(%struct.socket* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %49
  %69 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %70 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.socket*, %struct.socket** %7, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.socket*, %struct.socket** %7, align 8
  %76 = call i32 @sp_write(i32 %71, i32 %74, %struct.socket* %75, i32 0)
  br label %77

77:                                               ; preds = %68, %49
  store i32 8, i32* %14, align 4
  %78 = load %struct.socket*, %struct.socket** %7, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = bitcast %union.sockaddr_all* %13 to %struct.TYPE_6__*
  %82 = call i64 @getpeername(i32 %80, %struct.TYPE_6__* %81, i32* %14)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %77
  %85 = bitcast %union.sockaddr_all* %13 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AF_INET, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = bitcast %union.sockaddr_all* %13 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = bitcast i32* %92 to i8*
  br label %98

94:                                               ; preds = %84
  %95 = bitcast %union.sockaddr_all* %13 to %struct.TYPE_5__*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = bitcast i32* %96 to i8*
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i8* [ %93, %90 ], [ %97, %94 ]
  store i8* %99, i8** %15, align 8
  %100 = bitcast %union.sockaddr_all* %13 to %struct.TYPE_6__*
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %105 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @inet_ntop(i64 %102, i8* %103, i32* %106, i32 8)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %98
  %110 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %111 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %114 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  %115 = load i32, i32* @SOCKET_OPEN, align 4
  store i32 %115, i32* %5, align 4
  br label %121

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %77
  %118 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %119 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  %120 = load i32, i32* @SOCKET_OPEN, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %109, %47
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @nomore_sending_data(%struct.socket*) #1

declare dso_local i32 @sp_write(i32, i32, %struct.socket*, i32) #1

declare dso_local i64 @getpeername(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @inet_ntop(i64, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
