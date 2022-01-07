; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_close_socket.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_close_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i64, i32 }
%struct.request_close = type { i32, i32, i64 }
%struct.socket_message = type { i32, i32, i32*, i64 }
%struct.socket_lock = type { i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@SOCKET_CLOSE = common dso_local global i32 0, align 4
@SOCKET_WARNING = common dso_local global i32 0, align 4
@SOCKET_TYPE_HALFCLOSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.request_close*, %struct.socket_message*)* @close_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_socket(%struct.socket_server* %0, %struct.request_close* %1, %struct.socket_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.request_close*, align 8
  %7 = alloca %struct.socket_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.socket_lock, align 4
  %11 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.request_close* %1, %struct.request_close** %6, align 8
  store %struct.socket_message* %2, %struct.socket_message** %7, align 8
  %12 = load %struct.request_close*, %struct.request_close** %6, align 8
  %13 = getelementptr inbounds %struct.request_close, %struct.request_close* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %16 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %15, i32 0, i32 0
  %17 = load %struct.socket*, %struct.socket** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @HASH_ID(i32 %18)
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %17, i64 %19
  store %struct.socket* %20, %struct.socket** %9, align 8
  %21 = load %struct.socket*, %struct.socket** %9, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.socket*, %struct.socket** %9, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26, %3
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %35 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.request_close*, %struct.request_close** %6, align 8
  %37 = getelementptr inbounds %struct.request_close, %struct.request_close* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %40 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %42 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %44 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @SOCKET_CLOSE, align 4
  store i32 %45, i32* %4, align 4
  br label %93

46:                                               ; preds = %26
  %47 = load %struct.socket*, %struct.socket** %9, align 8
  %48 = call i32 @socket_lock_init(%struct.socket* %47, %struct.socket_lock* %10)
  %49 = load %struct.socket*, %struct.socket** %9, align 8
  %50 = call i64 @nomore_sending_data(%struct.socket* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %54 = load %struct.socket*, %struct.socket** %9, align 8
  %55 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %56 = call i32 @send_buffer(%struct.socket_server* %53, %struct.socket* %54, %struct.socket_lock* %10, %struct.socket_message* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @SOCKET_WARNING, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %93

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.request_close*, %struct.request_close** %6, align 8
  %68 = getelementptr inbounds %struct.request_close, %struct.request_close* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load %struct.socket*, %struct.socket** %9, align 8
  %73 = call i64 @nomore_sending_data(%struct.socket* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71, %66
  %76 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %77 = load %struct.socket*, %struct.socket** %9, align 8
  %78 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %79 = call i32 @force_close(%struct.socket_server* %76, %struct.socket* %77, %struct.socket_lock* %10, %struct.socket_message* %78)
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %82 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.request_close*, %struct.request_close** %6, align 8
  %84 = getelementptr inbounds %struct.request_close, %struct.request_close* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %87 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @SOCKET_CLOSE, align 4
  store i32 %88, i32* %4, align 4
  br label %93

89:                                               ; preds = %71
  %90 = load i64, i64* @SOCKET_TYPE_HALFCLOSE, align 8
  %91 = load %struct.socket*, %struct.socket** %9, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  store i32 -1, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %75, %63, %32
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @socket_lock_init(%struct.socket*, %struct.socket_lock*) #1

declare dso_local i64 @nomore_sending_data(%struct.socket*) #1

declare dso_local i32 @send_buffer(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
