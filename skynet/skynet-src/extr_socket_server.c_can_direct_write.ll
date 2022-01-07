; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_can_direct_write.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_can_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64, i64 }

@SOCKET_TYPE_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @can_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_direct_write(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = call i64 @nomore_sending_data(%struct.socket* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SOCKET_TYPE_CONNECTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br label %25

25:                                               ; preds = %20, %14, %10, %2
  %26 = phi i1 [ false, %14 ], [ false, %10 ], [ false, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i64 @nomore_sending_data(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
