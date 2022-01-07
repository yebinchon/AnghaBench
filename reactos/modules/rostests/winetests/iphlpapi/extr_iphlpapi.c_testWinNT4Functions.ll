; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testWinNT4Functions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testWinNT4Functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testWinNT4Functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testWinNT4Functions() #0 {
  %1 = call i32 (...) @testGetNumberOfInterfaces()
  %2 = call i32 (...) @testGetIpAddrTable()
  %3 = call i32 (...) @testGetIfTable()
  %4 = call i32 (...) @testGetIpForwardTable()
  %5 = call i32 (...) @testGetIpNetTable()
  %6 = call i32 (...) @testGetIcmpStatistics()
  %7 = call i32 (...) @testGetIpStatistics()
  %8 = call i32 (...) @testGetTcpStatistics()
  %9 = call i32 (...) @testGetUdpStatistics()
  %10 = call i32 (...) @testGetIcmpStatisticsEx()
  %11 = call i32 (...) @testGetIpStatisticsEx()
  %12 = call i32 (...) @testGetTcpStatisticsEx()
  %13 = call i32 (...) @testGetUdpStatisticsEx()
  %14 = call i32 (...) @testGetTcpTable()
  %15 = call i32 (...) @testGetUdpTable()
  %16 = call i32 (...) @testSetTcpEntry()
  %17 = call i32 (...) @testIcmpSendEcho()
  ret void
}

declare dso_local i32 @testGetNumberOfInterfaces(...) #1

declare dso_local i32 @testGetIpAddrTable(...) #1

declare dso_local i32 @testGetIfTable(...) #1

declare dso_local i32 @testGetIpForwardTable(...) #1

declare dso_local i32 @testGetIpNetTable(...) #1

declare dso_local i32 @testGetIcmpStatistics(...) #1

declare dso_local i32 @testGetIpStatistics(...) #1

declare dso_local i32 @testGetTcpStatistics(...) #1

declare dso_local i32 @testGetUdpStatistics(...) #1

declare dso_local i32 @testGetIcmpStatisticsEx(...) #1

declare dso_local i32 @testGetIpStatisticsEx(...) #1

declare dso_local i32 @testGetTcpStatisticsEx(...) #1

declare dso_local i32 @testGetUdpStatisticsEx(...) #1

declare dso_local i32 @testGetTcpTable(...) #1

declare dso_local i32 @testGetUdpTable(...) #1

declare dso_local i32 @testSetTcpEntry(...) #1

declare dso_local i32 @testIcmpSendEcho(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
