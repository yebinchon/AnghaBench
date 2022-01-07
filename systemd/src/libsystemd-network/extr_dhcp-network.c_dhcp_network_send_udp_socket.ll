; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-network.c_dhcp_network_send_udp_socket.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-network.c_dhcp_network_send_udp_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_union = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp_network_send_udp_socket(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.sockaddr_union, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @htobe16(i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %22 = load i32, i32* @AF_INET, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = call i32 @assert(i64 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = call i32 @assert(i64 %29)
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @assert(i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = bitcast %union.sockaddr_union* %12 to i32*
  %37 = call i32 @sendto(i32 %33, i8* %34, i64 %35, i32 0, i32* %36, i32 12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @errno, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %44

43:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @sendto(i32, i8*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
