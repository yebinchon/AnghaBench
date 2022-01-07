; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_test-network-tables.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_test-network-tables.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bond_ad_select = common dso_local global i32 0, align 4
@NETDEV_BOND_AD_SELECT = common dso_local global i32 0, align 4
@bond_arp_all_targets = common dso_local global i32 0, align 4
@NETDEV_BOND_ARP_ALL_TARGETS = common dso_local global i32 0, align 4
@bond_arp_validate = common dso_local global i32 0, align 4
@NETDEV_BOND_ARP_VALIDATE = common dso_local global i32 0, align 4
@bond_fail_over_mac = common dso_local global i32 0, align 4
@NETDEV_BOND_FAIL_OVER_MAC = common dso_local global i32 0, align 4
@bond_lacp_rate = common dso_local global i32 0, align 4
@NETDEV_BOND_LACP_RATE = common dso_local global i32 0, align 4
@bond_mode = common dso_local global i32 0, align 4
@NETDEV_BOND_MODE = common dso_local global i32 0, align 4
@bond_primary_reselect = common dso_local global i32 0, align 4
@NETDEV_BOND_PRIMARY_RESELECT = common dso_local global i32 0, align 4
@bond_xmit_hash_policy = common dso_local global i32 0, align 4
@NETDEV_BOND_XMIT_HASH_POLICY = common dso_local global i32 0, align 4
@dhcp6_message_status = common dso_local global i32 0, align 4
@DHCP6_STATUS = common dso_local global i32 0, align 4
@dhcp6_message_type = common dso_local global i32 0, align 4
@DHCP6_MESSAGE = common dso_local global i32 0, align 4
@dhcp_use_domains = common dso_local global i32 0, align 4
@DHCP_USE_DOMAINS = common dso_local global i32 0, align 4
@duplex = common dso_local global i32 0, align 4
@DUP = common dso_local global i32 0, align 4
@ip6tnl_mode = common dso_local global i32 0, align 4
@NETDEV_IP6_TNL_MODE = common dso_local global i32 0, align 4
@ipv6_privacy_extensions = common dso_local global i32 0, align 4
@IPV6_PRIVACY_EXTENSIONS = common dso_local global i32 0, align 4
@ipvlan_flags = common dso_local global i32 0, align 4
@NETDEV_IPVLAN_FLAGS = common dso_local global i32 0, align 4
@link_operstate = common dso_local global i32 0, align 4
@LINK_OPERSTATE = common dso_local global i32 0, align 4
@lldp_mode = common dso_local global i32 0, align 4
@LLDP_MODE = common dso_local global i32 0, align 4
@netdev_kind = common dso_local global i32 0, align 4
@NETDEV_KIND = common dso_local global i32 0, align 4
@nl_union_link_info_data = common dso_local global i32 0, align 4
@NL_UNION_LINK_INFO_DATA = common dso_local global i32 0, align 4
@radv_prefix_delegation = common dso_local global i32 0, align 4
@RADV_PREFIX_DELEGATION = common dso_local global i32 0, align 4
@wol = common dso_local global i32 0, align 4
@WOL = common dso_local global i32 0, align 4
@lldp_event = common dso_local global i32 0, align 4
@SD_LLDP_EVENT = common dso_local global i32 0, align 4
@ndisc_event = common dso_local global i32 0, align 4
@SD_NDISC_EVENT = common dso_local global i32 0, align 4
@ipvlan_mode = common dso_local global i32 0, align 4
@NETDEV_IPVLAN_MODE = common dso_local global i32 0, align 4
@macvlan_mode = common dso_local global i32 0, align 4
@NETDEV_MACVLAN_MODE = common dso_local global i32 0, align 4
@address_family = common dso_local global i32 0, align 4
@ADDRESS_FAMILY = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @bond_ad_select, align 4
  %7 = load i32, i32* @NETDEV_BOND_AD_SELECT, align 4
  %8 = call i32 @test_table(i32 %6, i32 %7)
  %9 = load i32, i32* @bond_arp_all_targets, align 4
  %10 = load i32, i32* @NETDEV_BOND_ARP_ALL_TARGETS, align 4
  %11 = call i32 @test_table(i32 %9, i32 %10)
  %12 = load i32, i32* @bond_arp_validate, align 4
  %13 = load i32, i32* @NETDEV_BOND_ARP_VALIDATE, align 4
  %14 = call i32 @test_table(i32 %12, i32 %13)
  %15 = load i32, i32* @bond_fail_over_mac, align 4
  %16 = load i32, i32* @NETDEV_BOND_FAIL_OVER_MAC, align 4
  %17 = call i32 @test_table(i32 %15, i32 %16)
  %18 = load i32, i32* @bond_lacp_rate, align 4
  %19 = load i32, i32* @NETDEV_BOND_LACP_RATE, align 4
  %20 = call i32 @test_table(i32 %18, i32 %19)
  %21 = load i32, i32* @bond_mode, align 4
  %22 = load i32, i32* @NETDEV_BOND_MODE, align 4
  %23 = call i32 @test_table(i32 %21, i32 %22)
  %24 = load i32, i32* @bond_primary_reselect, align 4
  %25 = load i32, i32* @NETDEV_BOND_PRIMARY_RESELECT, align 4
  %26 = call i32 @test_table(i32 %24, i32 %25)
  %27 = load i32, i32* @bond_xmit_hash_policy, align 4
  %28 = load i32, i32* @NETDEV_BOND_XMIT_HASH_POLICY, align 4
  %29 = call i32 @test_table(i32 %27, i32 %28)
  %30 = load i32, i32* @dhcp6_message_status, align 4
  %31 = load i32, i32* @DHCP6_STATUS, align 4
  %32 = call i32 @test_table(i32 %30, i32 %31)
  %33 = load i32, i32* @dhcp6_message_type, align 4
  %34 = load i32, i32* @DHCP6_MESSAGE, align 4
  %35 = call i32 @test_table_sparse(i32 %33, i32 %34)
  %36 = load i32, i32* @dhcp_use_domains, align 4
  %37 = load i32, i32* @DHCP_USE_DOMAINS, align 4
  %38 = call i32 @test_table(i32 %36, i32 %37)
  %39 = load i32, i32* @duplex, align 4
  %40 = load i32, i32* @DUP, align 4
  %41 = call i32 @test_table(i32 %39, i32 %40)
  %42 = load i32, i32* @ip6tnl_mode, align 4
  %43 = load i32, i32* @NETDEV_IP6_TNL_MODE, align 4
  %44 = call i32 @test_table(i32 %42, i32 %43)
  %45 = load i32, i32* @ipv6_privacy_extensions, align 4
  %46 = load i32, i32* @IPV6_PRIVACY_EXTENSIONS, align 4
  %47 = call i32 @test_table(i32 %45, i32 %46)
  %48 = load i32, i32* @ipvlan_flags, align 4
  %49 = load i32, i32* @NETDEV_IPVLAN_FLAGS, align 4
  %50 = call i32 @test_table(i32 %48, i32 %49)
  %51 = load i32, i32* @link_operstate, align 4
  %52 = load i32, i32* @LINK_OPERSTATE, align 4
  %53 = call i32 @test_table(i32 %51, i32 %52)
  %54 = load i32, i32* @lldp_mode, align 4
  %55 = load i32, i32* @LLDP_MODE, align 4
  %56 = call i32 @test_table(i32 %54, i32 %55)
  %57 = load i32, i32* @netdev_kind, align 4
  %58 = load i32, i32* @NETDEV_KIND, align 4
  %59 = call i32 @test_table(i32 %57, i32 %58)
  %60 = load i32, i32* @nl_union_link_info_data, align 4
  %61 = load i32, i32* @NL_UNION_LINK_INFO_DATA, align 4
  %62 = call i32 @test_table(i32 %60, i32 %61)
  %63 = load i32, i32* @radv_prefix_delegation, align 4
  %64 = load i32, i32* @RADV_PREFIX_DELEGATION, align 4
  %65 = call i32 @test_table(i32 %63, i32 %64)
  %66 = load i32, i32* @wol, align 4
  %67 = load i32, i32* @WOL, align 4
  %68 = call i32 @test_table(i32 %66, i32 %67)
  %69 = load i32, i32* @lldp_event, align 4
  %70 = load i32, i32* @SD_LLDP_EVENT, align 4
  %71 = call i32 @test_table(i32 %69, i32 %70)
  %72 = load i32, i32* @ndisc_event, align 4
  %73 = load i32, i32* @SD_NDISC_EVENT, align 4
  %74 = call i32 @test_table(i32 %72, i32 %73)
  %75 = load i32, i32* @ipvlan_mode, align 4
  %76 = load i32, i32* @NETDEV_IPVLAN_MODE, align 4
  %77 = call i32 @test_table_sparse(i32 %75, i32 %76)
  %78 = load i32, i32* @macvlan_mode, align 4
  %79 = load i32, i32* @NETDEV_MACVLAN_MODE, align 4
  %80 = call i32 @test_table_sparse(i32 %78, i32 %79)
  %81 = load i32, i32* @address_family, align 4
  %82 = load i32, i32* @ADDRESS_FAMILY, align 4
  %83 = call i32 @test_table_sparse(i32 %81, i32 %82)
  %84 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %84
}

declare dso_local i32 @test_table(i32, i32) #1

declare dso_local i32 @test_table_sparse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
