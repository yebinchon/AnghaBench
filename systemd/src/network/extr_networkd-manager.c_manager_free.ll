; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32*, i8*, i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_14__* }
%struct.in6_addr = type { i32 }
%struct.TYPE_15__ = type { i64 }

@network_unref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manager_free(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = icmp ne %struct.TYPE_14__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %158

9:                                                ; preds = %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 21
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = call i32 @free(%struct.TYPE_14__* %12)
  br label %14

14:                                               ; preds = %20, %9
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 20
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.in6_addr* @hashmap_first_key(i32 %17)
  store %struct.in6_addr* %18, %struct.in6_addr** %3, align 8
  %19 = icmp ne %struct.in6_addr* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %23 = call i32 @dhcp6_prefix_remove(%struct.TYPE_14__* %21, %struct.in6_addr* %22)
  br label %14

24:                                               ; preds = %14
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @hashmap_free(i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %48, %24
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 17
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.TYPE_15__* @hashmap_steal_first(i8* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %5, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = call i32 @dhcp6_lease_pd_prefix_lost(i64 %45, %struct.TYPE_15__* %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = call i32 @link_stop_clients(%struct.TYPE_15__* %49, i32 1)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = call i32 @link_unref(%struct.TYPE_15__* %51)
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 19
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @set_free_with_destructor(i8* %56, i32 (%struct.TYPE_15__*)* @link_unref)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 19
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 18
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @set_free_with_destructor(i8* %62, i32 (%struct.TYPE_15__*)* @link_unref)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 18
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 17
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @hashmap_free_with_destructor(i8* %68, i32 (%struct.TYPE_15__*)* @link_unref)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 17
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 16
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_free(i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 16
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 15
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @network_unref, align 4
  %82 = call i32 @ordered_hashmap_free_with_destructor(i32 %80, i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 15
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 14
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @hashmap_free_with_destructor(i8* %87, i32 (%struct.TYPE_15__*)* @netdev_unref)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 14
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %96, %53
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 13
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %4, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @address_pool_free(i32* %97)
  br label %91

99:                                               ; preds = %91
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 12
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @set_free_with_destructor(i8* %102, i32 (%struct.TYPE_15__*)* @routing_policy_rule_free)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 12
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 11
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @set_free_with_destructor(i8* %108, i32 (%struct.TYPE_15__*)* @routing_policy_rule_free)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 11
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 10
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @set_free_with_destructor(i8* %114, i32 (%struct.TYPE_15__*)* @routing_policy_rule_free)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sd_netlink_unref(i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @sd_netlink_unref(i32 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sd_resolve_unref(i32 %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sd_event_source_unref(i32 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @sd_event_unref(i32 %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @sd_device_monitor_unref(i32 %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bus_verify_polkit_async_registry_free(i32 %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @sd_bus_flush_close_unref(i32 %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = call i32 @free(%struct.TYPE_14__* %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = call i32 @free(%struct.TYPE_14__* %154)
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %157 = call i32 @free(%struct.TYPE_14__* %156)
  br label %158

158:                                              ; preds = %99, %8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local %struct.in6_addr* @hashmap_first_key(i32) #1

declare dso_local i32 @dhcp6_prefix_remove(%struct.TYPE_14__*, %struct.in6_addr*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local %struct.TYPE_15__* @hashmap_steal_first(i8*) #1

declare dso_local i32 @dhcp6_lease_pd_prefix_lost(i64, %struct.TYPE_15__*) #1

declare dso_local i32 @link_stop_clients(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @link_unref(%struct.TYPE_15__*) #1

declare dso_local i8* @set_free_with_destructor(i8*, i32 (%struct.TYPE_15__*)*) #1

declare dso_local i8* @hashmap_free_with_destructor(i8*, i32 (%struct.TYPE_15__*)*) #1

declare dso_local i32 @set_free(i32) #1

declare dso_local i32 @ordered_hashmap_free_with_destructor(i32, i32) #1

declare dso_local i32 @netdev_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @address_pool_free(i32*) #1

declare dso_local i32 @routing_policy_rule_free(%struct.TYPE_15__*) #1

declare dso_local i32 @sd_netlink_unref(i32) #1

declare dso_local i32 @sd_resolve_unref(i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @sd_event_unref(i32) #1

declare dso_local i32 @sd_device_monitor_unref(i32) #1

declare dso_local i32 @bus_verify_polkit_async_registry_free(i32) #1

declare dso_local i32 @sd_bus_flush_close_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
