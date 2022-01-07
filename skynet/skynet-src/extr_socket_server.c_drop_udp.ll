; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_drop_udp.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_drop_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket = type { i32 }
%struct.wb_list = type { i32*, i32* }
%struct.write_buffer = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.socket*, %struct.wb_list*, %struct.write_buffer*)* @drop_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_udp(%struct.socket_server* %0, %struct.socket* %1, %struct.wb_list* %2, %struct.write_buffer* %3) #0 {
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.wb_list*, align 8
  %8 = alloca %struct.write_buffer*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.wb_list* %2, %struct.wb_list** %7, align 8
  store %struct.write_buffer* %3, %struct.write_buffer** %8, align 8
  %9 = load %struct.write_buffer*, %struct.write_buffer** %8, align 8
  %10 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.write_buffer*, %struct.write_buffer** %8, align 8
  %19 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.wb_list*, %struct.wb_list** %7, align 8
  %22 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.wb_list*, %struct.wb_list** %7, align 8
  %24 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.wb_list*, %struct.wb_list** %7, align 8
  %29 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %32 = load %struct.write_buffer*, %struct.write_buffer** %8, align 8
  %33 = call i32 @write_buffer_free(%struct.socket_server* %31, %struct.write_buffer* %32)
  ret void
}

declare dso_local i32 @write_buffer_free(%struct.socket_server*, %struct.write_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
