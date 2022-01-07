; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_raise_uncomplete.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_raise_uncomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.wb_list, %struct.wb_list }
%struct.wb_list = type { %struct.write_buffer*, %struct.write_buffer* }
%struct.write_buffer = type { %struct.write_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @raise_uncomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raise_uncomplete(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.wb_list*, align 8
  %4 = alloca %struct.write_buffer*, align 8
  %5 = alloca %struct.wb_list*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 1
  store %struct.wb_list* %7, %struct.wb_list** %3, align 8
  %8 = load %struct.wb_list*, %struct.wb_list** %3, align 8
  %9 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %8, i32 0, i32 1
  %10 = load %struct.write_buffer*, %struct.write_buffer** %9, align 8
  store %struct.write_buffer* %10, %struct.write_buffer** %4, align 8
  %11 = load %struct.write_buffer*, %struct.write_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %11, i32 0, i32 0
  %13 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %14 = load %struct.wb_list*, %struct.wb_list** %3, align 8
  %15 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %14, i32 0, i32 1
  store %struct.write_buffer* %13, %struct.write_buffer** %15, align 8
  %16 = load %struct.wb_list*, %struct.wb_list** %3, align 8
  %17 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %16, i32 0, i32 1
  %18 = load %struct.write_buffer*, %struct.write_buffer** %17, align 8
  %19 = icmp eq %struct.write_buffer* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.wb_list*, %struct.wb_list** %3, align 8
  %22 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %21, i32 0, i32 0
  store %struct.write_buffer* null, %struct.write_buffer** %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.socket*, %struct.socket** %2, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  store %struct.wb_list* %25, %struct.wb_list** %5, align 8
  %26 = load %struct.wb_list*, %struct.wb_list** %5, align 8
  %27 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %26, i32 0, i32 1
  %28 = load %struct.write_buffer*, %struct.write_buffer** %27, align 8
  %29 = icmp eq %struct.write_buffer* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.write_buffer*, %struct.write_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %32, i32 0, i32 0
  store %struct.write_buffer* null, %struct.write_buffer** %33, align 8
  %34 = load %struct.write_buffer*, %struct.write_buffer** %4, align 8
  %35 = load %struct.wb_list*, %struct.wb_list** %5, align 8
  %36 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %35, i32 0, i32 0
  store %struct.write_buffer* %34, %struct.write_buffer** %36, align 8
  %37 = load %struct.wb_list*, %struct.wb_list** %5, align 8
  %38 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %37, i32 0, i32 1
  store %struct.write_buffer* %34, %struct.write_buffer** %38, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
