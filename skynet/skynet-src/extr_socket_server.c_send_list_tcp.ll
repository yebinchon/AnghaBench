; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_list_tcp.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_list_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket = type { i32, i32 }
%struct.wb_list = type { i32*, %struct.write_buffer* }
%struct.write_buffer = type { i64, %struct.write_buffer*, i32 }
%struct.socket_lock = type { i32 }
%struct.socket_message = type { i32 }

@errno = common dso_local global i32 0, align 4
@SOCKET_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket*, %struct.wb_list*, %struct.socket_lock*, %struct.socket_message*)* @send_list_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_list_tcp(%struct.socket_server* %0, %struct.socket* %1, %struct.wb_list* %2, %struct.socket_lock* %3, %struct.socket_message* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket_server*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.wb_list*, align 8
  %10 = alloca %struct.socket_lock*, align 8
  %11 = alloca %struct.socket_message*, align 8
  %12 = alloca %struct.write_buffer*, align 8
  %13 = alloca i64, align 8
  store %struct.socket_server* %0, %struct.socket_server** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.wb_list* %2, %struct.wb_list** %9, align 8
  store %struct.socket_lock* %3, %struct.socket_lock** %10, align 8
  store %struct.socket_message* %4, %struct.socket_message** %11, align 8
  br label %14

14:                                               ; preds = %79, %5
  %15 = load %struct.wb_list*, %struct.wb_list** %9, align 8
  %16 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %15, i32 0, i32 1
  %17 = load %struct.write_buffer*, %struct.write_buffer** %16, align 8
  %18 = icmp ne %struct.write_buffer* %17, null
  br i1 %18, label %19, label %88

19:                                               ; preds = %14
  %20 = load %struct.wb_list*, %struct.wb_list** %9, align 8
  %21 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %20, i32 0, i32 1
  %22 = load %struct.write_buffer*, %struct.write_buffer** %21, align 8
  store %struct.write_buffer* %22, %struct.write_buffer** %12, align 8
  br label %23

23:                                               ; preds = %38, %19
  %24 = load %struct.socket*, %struct.socket** %8, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %28 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %31 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @write(i32 %26, i32 %29, i64 %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load i32, i32* @errno, align 4
  switch i32 %37, label %40 [
    i32 128, label %38
    i32 129, label %39
  ]

38:                                               ; preds = %36
  br label %23

39:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %91

40:                                               ; preds = %36
  %41 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %42 = load %struct.socket*, %struct.socket** %8, align 8
  %43 = load %struct.socket_lock*, %struct.socket_lock** %10, align 8
  %44 = load %struct.socket_message*, %struct.socket_message** %11, align 8
  %45 = call i32 @force_close(%struct.socket_server* %41, %struct.socket* %42, %struct.socket_lock* %43, %struct.socket_message* %44)
  %46 = load i32, i32* @SOCKET_CLOSE, align 4
  store i32 %46, i32* %6, align 4
  br label %91

47:                                               ; preds = %23
  %48 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %49 = load %struct.socket*, %struct.socket** %8, align 8
  %50 = load i64, i64* %13, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @stat_write(%struct.socket_server* %48, %struct.socket* %49, i32 %51)
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.socket*, %struct.socket** %8, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %62 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %47
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %68 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %75 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  store i32 -1, i32* %6, align 4
  br label %91

78:                                               ; preds = %47
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %81 = getelementptr inbounds %struct.write_buffer, %struct.write_buffer* %80, i32 0, i32 1
  %82 = load %struct.write_buffer*, %struct.write_buffer** %81, align 8
  %83 = load %struct.wb_list*, %struct.wb_list** %9, align 8
  %84 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %83, i32 0, i32 1
  store %struct.write_buffer* %82, %struct.write_buffer** %84, align 8
  %85 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %86 = load %struct.write_buffer*, %struct.write_buffer** %12, align 8
  %87 = call i32 @write_buffer_free(%struct.socket_server* %85, %struct.write_buffer* %86)
  br label %14

88:                                               ; preds = %14
  %89 = load %struct.wb_list*, %struct.wb_list** %9, align 8
  %90 = getelementptr inbounds %struct.wb_list, %struct.wb_list* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  store i32 -1, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %65, %40, %39
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @stat_write(%struct.socket_server*, %struct.socket*, i32) #1

declare dso_local i32 @write_buffer_free(%struct.socket_server*, %struct.write_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
