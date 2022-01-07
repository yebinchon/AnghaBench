; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_list_udp.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_list_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket = type { i32, i32, i32 }
%struct.wb_list = type { i32*, %struct.write_buffer* }
%struct.write_buffer = type { %struct.write_buffer*, i64, i32, i32 }
%struct.socket_message = type { i32 }
%union.sockaddr_all = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"socket-server : udp (%d) type mismatch.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"socket-server : udp (%d) sendto error %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket*, %struct.wb_list*, %struct.socket_message*)* @send_list_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_list_udp(%struct.socket_server* %0, %struct.socket* %1, %struct.wb_list* %2, %struct.socket_message* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_server*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.wb_list*, align 8
  %9 = alloca %struct.socket_message*, align 8
  %10 = alloca %struct.write_buffer*, align 8
  %11 = alloca %union.sockaddr_all, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.wb_list* %2, %struct.wb_list** %8, align 8
  store %struct.socket_message* %3, %struct.socket_message** %9, align 8
  br label %14

14:                                               ; preds = %72, %4
  %15 = load %struct.wb_list*, %struct.wb_list** %8, align 8
  %16 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %15, i32 0, i32 1
  %17 = load %struct.write_buffer*, %struct.write_buffer** %16, align 8
  %18 = icmp ne %struct.write_buffer* %17, null
  br i1 %18, label %19, label %96

19:                                               ; preds = %14
  %20 = load %struct.wb_list*, %struct.wb_list** %8, align 8
  %21 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %20, i32 0, i32 1
  %22 = load %struct.write_buffer*, %struct.write_buffer** %21, align 8
  store %struct.write_buffer* %22, %struct.write_buffer** %10, align 8
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %25 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @udp_socket_address(%struct.socket* %23, i32 %26, %union.sockaddr_all* %11)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.socket*, %struct.socket** %7, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = load %struct.wb_list*, %struct.wb_list** %8, align 8
  %39 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %40 = call i32 @drop_udp(%struct.socket_server* %36, %struct.socket* %37, %struct.wb_list* %38, %struct.write_buffer* %39)
  store i32 -1, i32* %5, align 4
  br label %99

41:                                               ; preds = %19
  %42 = load %struct.socket*, %struct.socket** %7, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %46 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %49 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %union.sockaddr_all* %11 to i32*
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @sendto(i32 %44, i32 %47, i64 %50, i32 0, i32* %51, i64 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %41
  %57 = load i32, i32* @errno, align 4
  switch i32 %57, label %59 [
    i32 128, label %58
    i32 129, label %58
  ]

58:                                               ; preds = %56, %56
  store i32 -1, i32* %5, align 4
  br label %99

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.socket*, %struct.socket** %7, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i8* @strerror(i32 %64)
  %66 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %65)
  %67 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %68 = load %struct.socket*, %struct.socket** %7, align 8
  %69 = load %struct.wb_list*, %struct.wb_list** %8, align 8
  %70 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %71 = call i32 @drop_udp(%struct.socket_server* %67, %struct.socket* %68, %struct.wb_list* %69, %struct.write_buffer* %70)
  store i32 -1, i32* %5, align 4
  br label %99

72:                                               ; preds = %41
  %73 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %74 = load %struct.socket*, %struct.socket** %7, align 8
  %75 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %76 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @stat_write(%struct.socket_server* %73, %struct.socket* %74, i64 %77)
  %79 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %80 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.socket*, %struct.socket** %7, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %89 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %88, i32 0, i32 0
  %90 = load %struct.write_buffer*, %struct.write_buffer** %89, align 8
  %91 = load %struct.wb_list*, %struct.wb_list** %8, align 8
  %92 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %91, i32 0, i32 1
  store %struct.write_buffer* %90, %struct.write_buffer** %92, align 8
  %93 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %94 = load %struct.write_buffer*, %struct.write_buffer** %10, align 8
  %95 = call i32 @write_buffer_free(%struct.socket_server* %93, %struct.write_buffer* %94)
  br label %14

96:                                               ; preds = %14
  %97 = load %struct.wb_list*, %struct.wb_list** %8, align 8
  %98 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  store i32 -1, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %59, %58, %30
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @udp_socket_address(%struct.socket*, i32, %union.sockaddr_all*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @drop_udp(%struct.socket_server*, %struct.socket*, %struct.wb_list*, %struct.write_buffer*) #1

declare dso_local i32 @sendto(i32, i32, i64, i32, i32*, i64) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @stat_write(%struct.socket_server*, %struct.socket*, i64) #1

declare dso_local i32 @write_buffer_free(%struct.socket_server*, %struct.write_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
