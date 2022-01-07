; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_notification.c_test_persistent_connection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_notification.c_test_persistent_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_request = type { i32 }
%struct.info = type { i32 }

@test_persistent_connection.testW = internal constant [6 x i8] c"/test\00", align 1
@.str = private unnamed_addr constant [34 x i8] c"Testing persistent connection...\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"HTTP/1.1 200 OK\0D\0AServer: winetest\0D\0AConnection: keep-alive\0D\0AContent-Length: 1\0D\0A\0D\0AX\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"GET /test HTTP/1.1\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"HTTP/1.1 200 OK\0D\0AServer: winetest\0D\0ATransfer-Encoding: chunked\0D\0AConnection: keep-alive\0D\0A\0D\0A9\0D\0A123456789\0D\0A0\0D\0A\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"123456789\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"HTTP/1.1 200 OK\0D\0AServer: winetest\0D\0AContent-Length: 2\0D\0A\0D\0Axx\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"HTTP/1.1 200 OK\0D\0AServer: winetest\0D\0AContent-Length: 2\0D\0AConnection: close\0D\0A\0D\0Ayy\00", align 1
@server_socket_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_persistent_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_persistent_connection(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_request, align 4
  %4 = alloca %struct.info, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @FALSE, align 4
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i32 @CreateEventW(i32* null, i32 %6, i32 %7, i32* null)
  %9 = getelementptr inbounds %struct.info, %struct.info* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @open_socket_request(i32 %10, %struct.test_request* %3, %struct.info* %4)
  %12 = call i32 @server_send_reply(%struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @read_request_data(%struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @close_request(%struct.test_request* %3, %struct.info* %4, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @open_async_request(i32 %17, %struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_persistent_connection.testW, i64 0, i64 0), i32 %18)
  %20 = call i32 @server_read_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @server_send_reply(%struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @read_request_data(%struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @close_request(%struct.test_request* %3, %struct.info* %4, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @open_async_request(i32 %26, %struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_persistent_connection.testW, i64 0, i64 0), i32 %27)
  %29 = call i32 @server_read_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @server_send_reply(%struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @read_request_data(%struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @close_request(%struct.test_request* %3, %struct.info* %4, i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @open_async_request(i32 %35, %struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_persistent_connection.testW, i64 0, i64 0), i32 %36)
  %38 = call i32 @server_read_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @server_send_reply(%struct.test_request* %3, %struct.info* %4, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @close_request(%struct.test_request* %3, %struct.info* %4, i32 %40)
  %42 = load i32, i32* @server_socket_done, align 4
  %43 = call i32 @SetEvent(i32 %42)
  %44 = getelementptr inbounds %struct.info, %struct.info* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CloseHandle(i32 %45)
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @open_socket_request(i32, %struct.test_request*, %struct.info*) #1

declare dso_local i32 @server_send_reply(%struct.test_request*, %struct.info*, i8*) #1

declare dso_local i32 @read_request_data(%struct.test_request*, %struct.info*, i8*, i32) #1

declare dso_local i32 @close_request(%struct.test_request*, %struct.info*, i32) #1

declare dso_local i32 @open_async_request(i32, %struct.test_request*, %struct.info*, i8*, i32) #1

declare dso_local i32 @server_read_data(i8*) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
