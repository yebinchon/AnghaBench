; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_acquire_ipv4_conf.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_acquire_ipv4_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@ADDRESS_FAMILY_IPV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Acquiring IPv4 link-local address\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not acquire IPv4 link-local address: %m\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Acquiring DHCPv4 lease\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not acquire DHCPv4 lease: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @link_acquire_ipv4_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_acquire_ipv4_conf(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = call i32 @assert(%struct.TYPE_10__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = load i32, i32* @ADDRESS_FAMILY_IPV4, align 4
  %19 = call i64 @link_ipv4ll_enabled(%struct.TYPE_10__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call i32 @assert(%struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i32 @log_link_debug(%struct.TYPE_10__* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = call i32 @sd_ipv4ll_start(%struct.TYPE_10__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %35, i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = call i64 @link_dhcp4_enabled(%struct.TYPE_10__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = call i32 @assert(%struct.TYPE_10__* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = call i32 @log_link_debug(%struct.TYPE_10__* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 @sd_dhcp_client_start(%struct.TYPE_10__* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %57, i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %39
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56, %34
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @link_ipv4ll_enabled(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @sd_ipv4ll_start(%struct.TYPE_10__*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i64 @link_dhcp4_enabled(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_dhcp_client_start(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
