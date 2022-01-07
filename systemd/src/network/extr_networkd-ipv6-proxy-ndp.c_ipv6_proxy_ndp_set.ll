; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-ipv6-proxy-ndp.c_ipv6_proxy_ndp_set.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-ipv6-proxy-ndp.c_ipv6_proxy_ndp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"proxy_ndp\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot configure proxy NDP for interface: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ipv6_proxy_ndp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_proxy_ndp_set(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_6__* %6)
  %8 = call i32 (...) @socket_ipv6_is_supported()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = call i32 @ipv6_proxy_ndp_is_needed(%struct.TYPE_6__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @AF_INET6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @sysctl_write_ip_property_boolean(i32 %14, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @log_link_warning_errno(%struct.TYPE_6__* %23, i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %11
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @socket_ipv6_is_supported(...) #1

declare dso_local i32 @ipv6_proxy_ndp_is_needed(%struct.TYPE_6__*) #1

declare dso_local i32 @sysctl_write_ip_property_boolean(i32, i32, i8*, i32) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
