; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_lease_renew.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_lease_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.in_addr = type { i32 }

@CACHE_INFO_INFINITY_LIFE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DHCP error: no lease: %m\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DHCP error: no address: %m\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"DHCP error: no netmask: %m\00", align 1
@KEEP_CONFIGURATION_DHCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"DHCP error: no lifetime: %m\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not update IP address: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*)* @dhcp_lease_renew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp_lease_renew(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.in_addr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %11 = load i32, i32* @CACHE_INFO_INFINITY_LIFE_TIME, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 @assert(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call i32 @assert(%struct.TYPE_10__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @sd_dhcp_client_get_lease(%struct.TYPE_10__* %20, i32** %6)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %3, align 4
  br label %90

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sd_dhcp_lease_unref(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @sd_dhcp_lease_ref(i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call i32 @link_dirty(%struct.TYPE_10__* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @sd_dhcp_lease_get_address(i32* %41, %struct.in_addr* %7)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %46, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %3, align 4
  br label %90

49:                                               ; preds = %28
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @sd_dhcp_lease_get_netmask(i32* %50, %struct.in_addr* %8)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %55, i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 %57, i32* %3, align 4
  br label %90

58:                                               ; preds = %49
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @KEEP_CONFIGURATION_DHCP, align 4
  %65 = call i32 @FLAGS_SET(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %58
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sd_dhcp_lease_get_lifetime(i32 %70, i32* %9)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %75, i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %77, i32* %3, align 4
  br label %90

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %58
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @dhcp4_update_address(%struct.TYPE_10__* %80, %struct.in_addr* %7, %struct.in_addr* %8, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %86, i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %85, %74, %54, %45, %24
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_dhcp_client_get_lease(%struct.TYPE_10__*, i32**) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @sd_dhcp_lease_unref(i32) #1

declare dso_local i32 @sd_dhcp_lease_ref(i32*) #1

declare dso_local i32 @link_dirty(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_dhcp_lease_get_address(i32*, %struct.in_addr*) #1

declare dso_local i32 @sd_dhcp_lease_get_netmask(i32*, %struct.in_addr*) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @sd_dhcp_lease_get_lifetime(i32, i32*) #1

declare dso_local i32 @dhcp4_update_address(%struct.TYPE_10__*, %struct.in_addr*, %struct.in_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
