; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_requires_uuid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_requires_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64 }

@DUID_TYPE_UUID = common dso_local global i64 0, align 8
@DHCP_CLIENT_ID_DUID = common dso_local global i32 0, align 4
@DHCP_CLIENT_ID_DUID_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @link_requires_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_requires_uuid(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call i32 @assert(%struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call %struct.TYPE_11__* @link_get_duid(%struct.TYPE_10__* %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DUID_TYPE_UUID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %53

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i64 @link_dhcp4_enabled(%struct.TYPE_10__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DHCP_CLIENT_ID_DUID, align 4
  %39 = load i32, i32* @DHCP_CLIENT_ID_DUID_ONLY, align 4
  %40 = call i64 @IN_SET(i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %53

43:                                               ; preds = %32, %28
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i64 @link_dhcp6_enabled(%struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = call i64 @link_ipv6_accept_ra_enabled(%struct.TYPE_10__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store i32 1, i32* %2, align 4
  br label %53

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51, %42, %27
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @link_get_duid(%struct.TYPE_10__*) #1

declare dso_local i64 @link_dhcp4_enabled(%struct.TYPE_10__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i64 @link_dhcp6_enabled(%struct.TYPE_10__*) #1

declare dso_local i64 @link_ipv6_accept_ra_enabled(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
