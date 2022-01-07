; ModuleID = '/home/carl/AnghaBench/streem/src/extr_socket.c_accept_cb.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_socket.c_accept_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.socket_data* }
%struct.socket_data = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"socket error: listen\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_IO_READ = common dso_local global i32 0, align 4
@STRM_IO_WRITE = common dso_local global i32 0, align 4
@STRM_IO_FLUSH = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @accept_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept_cb(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_data*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.socket_data*, %struct.socket_data** %11, align 8
  store %struct.socket_data* %12, %struct.socket_data** %6, align 8
  %13 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 4)
  store i32 4, i32* %8, align 4
  %14 = load %struct.socket_data*, %struct.socket_data** %6, align 8
  %15 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %18 = call i32 @accept(i32 %16, %struct.sockaddr* %17, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @closesocket(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call i32 @strm_raise(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @STRM_NG, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @STRM_IO_READ, align 4
  %31 = load i32, i32* @STRM_IO_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @STRM_IO_FLUSH, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @strm_io_new(i32 %29, i32 %34)
  %36 = load %struct.socket_data*, %struct.socket_data** %6, align 8
  %37 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strm_io_emit(%struct.TYPE_6__* %28, i32 %35, i32 %38, i32 (%struct.TYPE_6__*, i32)* @accept_cb)
  %40 = load i32, i32* @STRM_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @strm_raise(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @strm_io_emit(%struct.TYPE_6__*, i32, i32, i32 (%struct.TYPE_6__*, i32)*) #1

declare dso_local i32 @strm_io_new(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
