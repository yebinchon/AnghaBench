; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_address_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_address_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@LINK_STATE_FAILED = common dso_local global i32 0, align 4
@LINK_STATE_LINGER = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not set DHCPv6 address: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*)* @dhcp6_address_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp6_address_handler(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %10 = call i32 @assert(%struct.TYPE_7__* %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LINK_STATE_FAILED, align 4
  %15 = load i32, i32* @LINK_STATE_LINGER, align 4
  %16 = call i64 @IN_SET(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @sd_netlink_message_get_errno(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EEXIST, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @log_link_error_errno(%struct.TYPE_7__* %30, i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = call i32 @link_enter_failed(%struct.TYPE_7__* %33)
  store i32 1, i32* %4, align 4
  br label %55

35:                                               ; preds = %24, %19
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @manager_rtnl_process_address(i32* %39, i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = call i32 @link_request_set_routes(%struct.TYPE_7__* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = call i32 @link_enter_failed(%struct.TYPE_7__* %52)
  store i32 1, i32* %4, align 4
  br label %55

54:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51, %29, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @sd_netlink_message_get_errno(i32*) #1

declare dso_local i32 @log_link_error_errno(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_7__*) #1

declare dso_local i32 @manager_rtnl_process_address(i32*, i32*, i32) #1

declare dso_local i32 @link_request_set_routes(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
