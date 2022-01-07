; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_free_wb_list.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_free_wb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.wb_list = type { i32*, %struct.write_buffer* }
%struct.write_buffer = type { %struct.write_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.wb_list*)* @free_wb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_wb_list(%struct.socket_server* %0, %struct.wb_list* %1) #0 {
  %3 = alloca %struct.socket_server*, align 8
  %4 = alloca %struct.wb_list*, align 8
  %5 = alloca %struct.write_buffer*, align 8
  %6 = alloca %struct.write_buffer*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %3, align 8
  store %struct.wb_list* %1, %struct.wb_list** %4, align 8
  %7 = load %struct.wb_list*, %struct.wb_list** %4, align 8
  %8 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %7, i32 0, i32 1
  %9 = load %struct.write_buffer*, %struct.write_buffer** %8, align 8
  store %struct.write_buffer* %9, %struct.write_buffer** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.write_buffer*, %struct.write_buffer** %5, align 8
  %12 = icmp ne %struct.write_buffer* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.write_buffer*, %struct.write_buffer** %5, align 8
  store %struct.write_buffer* %14, %struct.write_buffer** %6, align 8
  %15 = load %struct.write_buffer*, %struct.write_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %15, i32 0, i32 0
  %17 = load %struct.write_buffer*, %struct.write_buffer** %16, align 8
  store %struct.write_buffer* %17, %struct.write_buffer** %5, align 8
  %18 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %19 = load %struct.write_buffer*, %struct.write_buffer** %6, align 8
  %20 = call i32 @write_buffer_free(%struct.socket_server* %18, %struct.write_buffer* %19)
  br label %10

21:                                               ; preds = %10
  %22 = load %struct.wb_list*, %struct.wb_list** %4, align 8
  %23 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %22, i32 0, i32 1
  store %struct.write_buffer* null, %struct.write_buffer** %23, align 8
  %24 = load %struct.wb_list*, %struct.wb_list** %4, align 8
  %25 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret void
}

declare dso_local i32 @write_buffer_free(%struct.socket_server*, %struct.write_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
