; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_append_sendbuffer_.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_append_sendbuffer_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_buffer = type { i8*, %struct.write_buffer*, i32, i32, i32 }
%struct.socket_server = type { i32 }
%struct.wb_list = type { %struct.write_buffer*, %struct.write_buffer* }
%struct.request_send = type { i32, i32 }
%struct.send_object = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.write_buffer* (%struct.socket_server*, %struct.wb_list*, %struct.request_send*, i32)* @append_sendbuffer_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.write_buffer* @append_sendbuffer_(%struct.socket_server* %0, %struct.wb_list* %1, %struct.request_send* %2, i32 %3) #0 {
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.wb_list*, align 8
  %7 = alloca %struct.request_send*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.write_buffer*, align 8
  %10 = alloca %struct.send_object, align 8
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.wb_list* %1, %struct.wb_list** %6, align 8
  store %struct.request_send* %2, %struct.request_send** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call %struct.write_buffer* @MALLOC(i32 %11)
  store %struct.write_buffer* %12, %struct.write_buffer** %9, align 8
  %13 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %14 = load %struct.request_send*, %struct.request_send** %7, align 8
  %15 = getelementptr inbounds %struct.request_send, %struct.request_send* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.request_send*, %struct.request_send** %7, align 8
  %18 = getelementptr inbounds %struct.request_send, %struct.request_send* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @send_object_init(%struct.socket_server* %13, %struct.send_object* %10, i32 %16, i32 %19)
  %21 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %22 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.send_object, %struct.send_object* %10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %27 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds %struct.send_object, %struct.send_object* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %31 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.request_send*, %struct.request_send** %7, align 8
  %33 = getelementptr inbounds %struct.request_send, %struct.request_send* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %36 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %38 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %37, i32 0, i32 1
  store %struct.write_buffer* null, %struct.write_buffer** %38, align 8
  %39 = load %struct.wb_list*, %struct.wb_list** %6, align 8
  %40 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %39, i32 0, i32 1
  %41 = load %struct.write_buffer*, %struct.write_buffer** %40, align 8
  %42 = icmp eq %struct.write_buffer* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %4
  %44 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %45 = load %struct.wb_list*, %struct.wb_list** %6, align 8
  %46 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %45, i32 0, i32 0
  store %struct.write_buffer* %44, %struct.write_buffer** %46, align 8
  %47 = load %struct.wb_list*, %struct.wb_list** %6, align 8
  %48 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %47, i32 0, i32 1
  store %struct.write_buffer* %44, %struct.write_buffer** %48, align 8
  br label %72

49:                                               ; preds = %4
  %50 = load %struct.wb_list*, %struct.wb_list** %6, align 8
  %51 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %50, i32 0, i32 0
  %52 = load %struct.write_buffer*, %struct.write_buffer** %51, align 8
  %53 = icmp ne %struct.write_buffer* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.wb_list*, %struct.wb_list** %6, align 8
  %57 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %56, i32 0, i32 0
  %58 = load %struct.write_buffer*, %struct.write_buffer** %57, align 8
  %59 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %58, i32 0, i32 1
  %60 = load %struct.write_buffer*, %struct.write_buffer** %59, align 8
  %61 = icmp eq %struct.write_buffer* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %65 = load %struct.wb_list*, %struct.wb_list** %6, align 8
  %66 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %65, i32 0, i32 0
  %67 = load %struct.write_buffer*, %struct.write_buffer** %66, align 8
  %68 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %67, i32 0, i32 1
  store %struct.write_buffer* %64, %struct.write_buffer** %68, align 8
  %69 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  %70 = load %struct.wb_list*, %struct.wb_list** %6, align 8
  %71 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %70, i32 0, i32 0
  store %struct.write_buffer* %69, %struct.write_buffer** %71, align 8
  br label %72

72:                                               ; preds = %49, %43
  %73 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  ret %struct.write_buffer* %73
}

declare dso_local %struct.write_buffer* @MALLOC(i32) #1

declare dso_local i32 @send_object_init(%struct.socket_server*, %struct.send_object*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
