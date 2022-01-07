; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp4_release_old_lease.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp4_release_old_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcp4_release_old_lease(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca %struct.in_addr, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %5 = bitcast %struct.in_addr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = call i32 @assert(%struct.TYPE_16__* %7)
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = call i32 @assert(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = call i32 @sd_dhcp_lease_get_address(%struct.TYPE_16__* %21, %struct.in_addr* %4)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = call i32 @sd_dhcp_lease_get_address(%struct.TYPE_16__* %25, %struct.in_addr* %3)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = call i32 @dhcp_remove_routes(%struct.TYPE_16__* %27, %struct.TYPE_16__* %30, %struct.in_addr* %4, i32 0)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = call i32 @dhcp_remove_router(%struct.TYPE_16__* %32, %struct.TYPE_16__* %35, %struct.in_addr* %4, i32 0)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = call i32 @dhcp_remove_dns_routes(%struct.TYPE_16__* %37, %struct.TYPE_16__* %40, %struct.in_addr* %4, i32 0)
  %42 = call i32 @in4_addr_equal(%struct.in_addr* %4, %struct.in_addr* %3)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %14
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = call i32 @dhcp_remove_address(%struct.TYPE_16__* %45, %struct.TYPE_16__* %48, %struct.in_addr* %4, i32* null)
  br label %50

50:                                               ; preds = %44, %14
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = call %struct.TYPE_16__* @sd_dhcp_lease_unref(%struct.TYPE_16__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = call i32 @link_dirty(%struct.TYPE_16__* %57)
  br label %59

59:                                               ; preds = %50, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_16__*) #2

declare dso_local i32 @sd_dhcp_lease_get_address(%struct.TYPE_16__*, %struct.in_addr*) #2

declare dso_local i32 @dhcp_remove_routes(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.in_addr*, i32) #2

declare dso_local i32 @dhcp_remove_router(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.in_addr*, i32) #2

declare dso_local i32 @dhcp_remove_dns_routes(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.in_addr*, i32) #2

declare dso_local i32 @in4_addr_equal(%struct.in_addr*, %struct.in_addr*) #2

declare dso_local i32 @dhcp_remove_address(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.in_addr*, i32*) #2

declare dso_local %struct.TYPE_16__* @sd_dhcp_lease_unref(%struct.TYPE_16__*) #2

declare dso_local i32 @link_dirty(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
