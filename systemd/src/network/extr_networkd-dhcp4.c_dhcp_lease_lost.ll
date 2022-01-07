; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_lease_lost.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_lease_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_19__* }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"DHCP lease lost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @dhcp_lease_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp_lease_lost(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.in_addr, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %4 = bitcast %struct.in_addr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_19__* %5)
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_19__* %9)
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = call i32 @log_link_info(%struct.TYPE_19__* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = call i32 @sd_dhcp_lease_get_address(%struct.TYPE_19__* %17, %struct.in_addr* %3)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = call i32 @dhcp_remove_routes(%struct.TYPE_19__* %19, %struct.TYPE_19__* %22, %struct.in_addr* %3, i32 1)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = call i32 @dhcp_remove_router(%struct.TYPE_19__* %24, %struct.TYPE_19__* %27, %struct.in_addr* %3, i32 1)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = call i32 @dhcp_remove_dns_routes(%struct.TYPE_19__* %29, %struct.TYPE_19__* %32, %struct.in_addr* %3, i32 1)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = call i32 @dhcp_remove_address(%struct.TYPE_19__* %34, %struct.TYPE_19__* %37, %struct.in_addr* %3, i32* null)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = call i32 @dhcp_reset_mtu(%struct.TYPE_19__* %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %42 = call i32 @dhcp_reset_hostname(%struct.TYPE_19__* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = call %struct.TYPE_19__* @sd_dhcp_lease_unref(%struct.TYPE_19__* %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = call i32 @link_dirty(%struct.TYPE_19__* %49)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_19__*) #2

declare dso_local i32 @log_link_info(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @sd_dhcp_lease_get_address(%struct.TYPE_19__*, %struct.in_addr*) #2

declare dso_local i32 @dhcp_remove_routes(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.in_addr*, i32) #2

declare dso_local i32 @dhcp_remove_router(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.in_addr*, i32) #2

declare dso_local i32 @dhcp_remove_dns_routes(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.in_addr*, i32) #2

declare dso_local i32 @dhcp_remove_address(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.in_addr*, i32*) #2

declare dso_local i32 @dhcp_reset_mtu(%struct.TYPE_19__*) #2

declare dso_local i32 @dhcp_reset_hostname(%struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_19__* @sd_dhcp_lease_unref(%struct.TYPE_19__*) #2

declare dso_local i32 @link_dirty(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
