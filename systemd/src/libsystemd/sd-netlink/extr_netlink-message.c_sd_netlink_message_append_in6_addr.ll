; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_append_in6_addr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_append_in6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%union.in_addr_union = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_netlink_message_append_in6_addr(i32* %0, i16 zeroext %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.in6_addr*, align 8
  store i32* %0, i32** %4, align 8
  store i16 %1, i16* %5, align 2
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i16, i16* %5, align 2
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %11 = bitcast %struct.in6_addr* %10 to %union.in_addr_union*
  %12 = call i32 @netlink_message_append_in_addr_union(i32* %7, i16 zeroext %8, i32 %9, %union.in_addr_union* %11)
  ret i32 %12
}

declare dso_local i32 @netlink_message_append_in_addr_union(i32*, i16 zeroext, i32, %union.in_addr_union*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
