; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_open_tcp.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_open_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@sockerrno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccnet_net_open_tcp(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @createSocket(i64 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 4, i32* %7, align 4
  br label %23

22:                                               ; preds = %15
  store i32 4, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @connect(i32 %24, %struct.sockaddr* %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i64, i64* @sockerrno, align 8
  %31 = load i64, i64* @EINPROGRESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @evutil_closesocket(i32 %34)
  store i32 -1, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %29, %23
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @createSocket(i64, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
