; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_list_uncomplete.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_list_uncomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb_list = type { %struct.write_buffer* }
%struct.write_buffer = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wb_list*)* @list_uncomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_uncomplete(%struct.wb_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wb_list*, align 8
  %4 = alloca %struct.write_buffer*, align 8
  store %struct.wb_list* %0, %struct.wb_list** %3, align 8
  %5 = load %struct.wb_list*, %struct.wb_list** %3, align 8
  %6 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %5, i32 0, i32 0
  %7 = load %struct.write_buffer*, %struct.write_buffer** %6, align 8
  store %struct.write_buffer* %7, %struct.write_buffer** %4, align 8
  %8 = load %struct.write_buffer*, %struct.write_buffer** %4, align 8
  %9 = icmp eq %struct.write_buffer* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.write_buffer*, %struct.write_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.write_buffer*, %struct.write_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %15, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
