; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.request_package = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_server_udp(%struct.socket_server* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.request_package, align 8
  store %struct.socket_server* %0, %struct.socket_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16, %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IPPROTO_UDP, align 4
  %23 = call i32 @do_bind(i8* %20, i32 %21, i32 %22, i32* %11)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %67

27:                                               ; preds = %19
  br label %37

28:                                               ; preds = %16
  %29 = load i32, i32* @AF_INET, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SOCK_DGRAM, align 4
  %32 = call i32 @socket(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %67

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @sp_nonblocking(i32 %38)
  %40 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %41 = call i32 @reserve_id(%struct.socket_server* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @close(i32 %45)
  store i32 -1, i32* %5, align 4
  br label %67

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  %49 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %65 = call i32 @send_request(%struct.socket_server* %64, %struct.request_package* %13, i8 zeroext 85, i32 24)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %47, %44, %35, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @do_bind(i8*, i32, i32, i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @sp_nonblocking(i32) #1

declare dso_local i32 @reserve_id(%struct.socket_server*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @send_request(%struct.socket_server*, %struct.request_package*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
