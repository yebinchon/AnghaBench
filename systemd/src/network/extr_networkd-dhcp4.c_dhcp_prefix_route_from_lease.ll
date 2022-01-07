; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_prefix_route_from_lease.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_prefix_route_from_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { %struct.in_addr }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@RTPROT_DHCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.in_addr*, %struct.TYPE_10__**)* @dhcp_prefix_route_from_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp_prefix_route_from_lease(i32* %0, i32 %1, %struct.in_addr* %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.in_addr* %2, %struct.in_addr** %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @sd_dhcp_lease_get_netmask(i32* %13, %struct.in_addr* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %59

19:                                               ; preds = %4
  %20 = call i32 @route_new(%struct.TYPE_10__** %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %59

25:                                               ; preds = %19
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %31, %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = call i32 @in4_addr_netmask_to_prefixlen(%struct.in_addr* %11)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %46 = bitcast %struct.in_addr* %44 to i8*
  %47 = bitcast %struct.in_addr* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load i32, i32* @RT_SCOPE_LINK, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @RTPROT_DHCP, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %58, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %25, %23, %17
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @sd_dhcp_lease_get_netmask(i32*, %struct.in_addr*) #1

declare dso_local i32 @route_new(%struct.TYPE_10__**) #1

declare dso_local i32 @in4_addr_netmask_to_prefixlen(%struct.in_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
