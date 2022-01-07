; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_gen_udp_address.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_gen_udp_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_all = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PROTOCOL_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.sockaddr_all*, i64*)* @gen_udp_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_udp_address(i32 %0, %union.sockaddr_all* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.sockaddr_all*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %union.sockaddr_all* %1, %union.sockaddr_all** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64*, i64** %6, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PROTOCOL_UDP, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %21 = bitcast %union.sockaddr_all* %20 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @memcpy(i64* %19, i32* %22, i32 4)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %33 = bitcast %union.sockaddr_all* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @memcpy(i64* %31, i32* %34, i32 4)
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %65

40:                                               ; preds = %3
  %41 = load i64*, i64** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %46 = bitcast %union.sockaddr_all* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @memcpy(i64* %44, i32* %47, i32 4)
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i64*, i64** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %58 = bitcast %union.sockaddr_all* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @memcpy(i64* %56, i32* %59, i32 4)
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %40, %15
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
