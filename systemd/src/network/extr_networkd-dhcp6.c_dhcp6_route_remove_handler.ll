; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_route_remove_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_route_remove_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LINK_STATE_FAILED = common dso_local global i32 0, align 4
@LINK_STATE_LINGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Received error on unreachable route removal for DHCPv6 delegated subnet: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @dhcp6_route_remove_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp6_route_remove_handler(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = call i32 @assert(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LINK_STATE_FAILED, align 4
  %15 = load i32, i32* @LINK_STATE_LINGER, align 4
  %16 = call i64 @IN_SET(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @sd_netlink_message_get_errno(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @log_link_debug_errno(%struct.TYPE_5__* %25, i32 %26, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %19
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @sd_netlink_message_get_errno(i32*) #1

declare dso_local i32 @log_link_debug_errno(%struct.TYPE_5__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
