; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_report_accept.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_report_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32* }
%struct.socket = type { i32, i32, i32, i32 }
%struct.socket_message = type { i32, i32*, i32, i32 }
%union.sockaddr_all = type { i32 }

@errno = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@PROTOCOL_TCP = common dso_local global i32 0, align 4
@SOCKET_TYPE_PACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket*, %struct.socket_message*)* @report_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_accept(%struct.socket_server* %0, %struct.socket* %1, %struct.socket_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket_message*, align 8
  %8 = alloca %union.sockaddr_all, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.socket_message* %2, %struct.socket_message** %7, align 8
  store i32 4, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %union.sockaddr_all* %8 to i32*
  %17 = call i32 @accept(i32 %15, i32* %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %3
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EMFILE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENFILE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24, %20
  %29 = load %struct.socket*, %struct.socket** %6, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %33 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.socket*, %struct.socket** %6, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %38 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %40 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i64, i64* @errno, align 8
  %42 = call i32* @strerror(i64 %41)
  %43 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %44 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  store i32 -1, i32* %4, align 4
  br label %106

45:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %106

46:                                               ; preds = %3
  %47 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %48 = call i32 @reserve_id(%struct.socket_server* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @close(i32 %52)
  store i32 0, i32* %4, align 4
  br label %106

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @socket_keepalive(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @sp_nonblocking(i32 %57)
  %59 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @PROTOCOL_TCP, align 4
  %63 = load %struct.socket*, %struct.socket** %6, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.socket* @new_fd(%struct.socket_server* %59, i32 %60, i32 %61, i32 %62, i32 %65, i32 0)
  store %struct.socket* %66, %struct.socket** %12, align 8
  %67 = load %struct.socket*, %struct.socket** %12, align 8
  %68 = icmp eq %struct.socket* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @close(i32 %70)
  store i32 0, i32* %4, align 4
  br label %106

72:                                               ; preds = %54
  %73 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %74 = load %struct.socket*, %struct.socket** %6, align 8
  %75 = call i32 @stat_read(%struct.socket_server* %73, %struct.socket* %74, i32 1)
  %76 = load i32, i32* @SOCKET_TYPE_PACCEPT, align 4
  %77 = load %struct.socket*, %struct.socket** %12, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.socket*, %struct.socket** %6, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %83 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.socket*, %struct.socket** %6, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %88 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %91 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %93 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %95 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @getname(%union.sockaddr_all* %8, i32* %96, i32 8)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %72
  %100 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %101 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %104 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  br label %105

105:                                              ; preds = %99, %72
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %69, %51, %45, %28
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32* @strerror(i64) #1

declare dso_local i32 @reserve_id(%struct.socket_server*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @socket_keepalive(i32) #1

declare dso_local i32 @sp_nonblocking(i32) #1

declare dso_local %struct.socket* @new_fd(%struct.socket_server*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stat_read(%struct.socket_server*, %struct.socket*, i32) #1

declare dso_local i64 @getname(%union.sockaddr_all*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
