; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_bond.c_bond_init.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_bond.c_bond_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_NETDEV_BOND_MODE_INVALID = common dso_local global i32 0, align 4
@_NETDEV_BOND_XMIT_HASH_POLICY_INVALID = common dso_local global i32 0, align 4
@_NETDEV_BOND_LACP_RATE_INVALID = common dso_local global i32 0, align 4
@_NETDEV_BOND_AD_SELECT_INVALID = common dso_local global i32 0, align 4
@_NETDEV_BOND_FAIL_OVER_MAC_INVALID = common dso_local global i32 0, align 4
@_NETDEV_BOND_ARP_VALIDATE_INVALID = common dso_local global i32 0, align 4
@_NETDEV_BOND_ARP_ALL_TARGETS_INVALID = common dso_local global i32 0, align 4
@_NETDEV_BOND_PRIMARY_RESELECT_INVALID = common dso_local global i32 0, align 4
@RESEND_IGMP_DEFAULT = common dso_local global i32 0, align 4
@PACKETS_PER_SLAVE_DEFAULT = common dso_local global i32 0, align 4
@GRATUITOUS_ARP_DEFAULT = common dso_local global i32 0, align 4
@LEARNING_PACKETS_INTERVAL_MIN_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @bond_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call %struct.TYPE_7__* @BOND(%struct.TYPE_7__* %6)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @assert(%struct.TYPE_7__* %8)
  %10 = load i32, i32* @_NETDEV_BOND_MODE_INVALID, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @_NETDEV_BOND_XMIT_HASH_POLICY_INVALID, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @_NETDEV_BOND_LACP_RATE_INVALID, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @_NETDEV_BOND_AD_SELECT_INVALID, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @_NETDEV_BOND_FAIL_OVER_MAC_INVALID, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @_NETDEV_BOND_ARP_VALIDATE_INVALID, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @_NETDEV_BOND_ARP_ALL_TARGETS_INVALID, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @_NETDEV_BOND_PRIMARY_RESELECT_INVALID, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load i32, i32* @RESEND_IGMP_DEFAULT, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @PACKETS_PER_SLAVE_DEFAULT, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @GRATUITOUS_ARP_DEFAULT, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @LEARNING_PACKETS_INTERVAL_MIN_SEC, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @BOND(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
