; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_udp.c_net_SourceSubscribe.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_udp.c_net_SourceSubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot join source multicast group: %s\00", align 1
@net_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"trying ASM instead of SSM...\00", align 1
@IP_ADD_SOURCE_MEMBERSHIP = common dso_local global i32 0, align 4
@MCAST_JOIN_SOURCE_GROUP = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.sockaddr*, i64, %struct.sockaddr*, i64)* @net_SourceSubscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_SourceSubscribe(i32* %0, i32 %1, %struct.sockaddr* %2, i64 %3, %struct.sockaddr* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %22, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %41

23:                                               ; preds = %6
  %24 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %27 [
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %28, i32* @errno, align 4
  br label %29

29:                                               ; preds = %27
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @net_errno, align 4
  %32 = call i32 @vlc_strerror_c(i32 %31)
  %33 = call i32 @msg_Err(i32* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @msg_Warn(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @net_Subscribe(i32* %36, i32 %37, %struct.sockaddr* %38, i64 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %29, %21
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @net_Subscribe(i32*, i32, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
