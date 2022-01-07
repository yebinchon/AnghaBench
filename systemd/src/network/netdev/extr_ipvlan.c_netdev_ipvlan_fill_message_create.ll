; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_ipvlan.c_netdev_ipvlan_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_ipvlan.c_netdev_ipvlan_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_12__* }

@NETDEV_KIND_IPVLAN = common dso_local global i64 0, align 8
@_NETDEV_IPVLAN_MODE_INVALID = common dso_local global i64 0, align 8
@IFLA_IPVLAN_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not append IFLA_IPVLAN_MODE attribute: %m\00", align 1
@_NETDEV_IPVLAN_FLAGS_INVALID = common dso_local global i64 0, align 8
@IFLA_IPVLAN_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_IPVLAN_FLAGS attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, i32*)* @netdev_ipvlan_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ipvlan_fill_message_create(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = call i32 @assert(%struct.TYPE_12__* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = call i32 @assert(%struct.TYPE_12__* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = call i32 @assert(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NETDEV_KIND_IPVLAN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call %struct.TYPE_12__* @IPVLAN(%struct.TYPE_12__* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %8, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call %struct.TYPE_12__* @IPVTAP(%struct.TYPE_12__* %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %8, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = call i32 @assert(%struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @_NETDEV_IPVLAN_MODE_INVALID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @IFLA_IPVLAN_MODE, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sd_netlink_message_append_u16(i32* %38, i32 %39, i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @log_netdev_error_errno(%struct.TYPE_12__* %47, i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %4, align 4
  br label %72

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @_NETDEV_IPVLAN_FLAGS_INVALID, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @IFLA_IPVLAN_FLAGS, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sd_netlink_message_append_u16(i32* %58, i32 %59, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @log_netdev_error_errno(%struct.TYPE_12__* %67, i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %51
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %66, %46
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @IPVLAN(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @IPVTAP(%struct.TYPE_12__*) #1

declare dso_local i32 @sd_netlink_message_append_u16(i32*, i32, i64) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_12__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
