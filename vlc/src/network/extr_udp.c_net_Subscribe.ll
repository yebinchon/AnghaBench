; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_udp.c_net_Subscribe.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_udp.c_net_Subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot join multicast group: %s\00", align 1
@net_errno = common dso_local global i32 0, align 4
@IPV6_JOIN_GROUP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@MCAST_JOIN_GROUP = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.sockaddr*, i64)* @net_Subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_Subscribe(i32* %0, i32 %1, %struct.sockaddr* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %13, i32* @errno, align 4
  br label %14

14:                                               ; preds = %12
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @net_errno, align 4
  %17 = call i32 @vlc_strerror_c(i32 %16)
  %18 = call i32 @msg_Err(i32* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  ret i32 -1
}

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
