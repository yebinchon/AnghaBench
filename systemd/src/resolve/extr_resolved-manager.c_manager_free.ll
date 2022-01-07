; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @manager_free(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %171

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 28
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dns_server_unlink_all(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 27
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dns_server_unlink_all(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 26
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dns_search_domain_unlink_all(i32 %20)
  br label %22

22:                                               ; preds = %29, %9
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 22
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @hashmap_first(i32 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @link_free(i32* %30)
  br label %22

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %38, %32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 25
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 25
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dns_query_free(i64 %41)
  br label %33

43:                                               ; preds = %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 24
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dns_scope_free(i32 %46)
  br label %48

48:                                               ; preds = %53, %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 23
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 23
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dns_stream_unref(i64 %56)
  br label %48

58:                                               ; preds = %48
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 22
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @hashmap_free(i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 21
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hashmap_free(i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 20
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sd_event_source_unref(i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sd_network_monitor_unref(i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 18
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @sd_netlink_unref(i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 17
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sd_event_source_unref(i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = call i32 @manager_llmnr_stop(%struct.TYPE_11__* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = call i32 @manager_mdns_stop(%struct.TYPE_11__* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = call i32 @manager_dns_stub_stop(%struct.TYPE_11__* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 16
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @bus_verify_polkit_async_registry_free(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 15
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sd_bus_flush_close_unref(i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @sd_event_source_unref(i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @sd_event_source_unref(i32 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sd_event_source_unref(i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sd_event_unref(i32 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dns_resource_key_unref(i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dns_resource_key_unref(i32 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dns_resource_key_unref(i32 %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dns_resource_key_unref(i32 %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @sd_event_source_unref(i32 %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @safe_close(i32 %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @free(i32 %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @free(i32 %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @free(i32 %147)
  br label %149

149:                                              ; preds = %156, %58
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @hashmap_first(i32 %152)
  %154 = bitcast i8* %153 to i32*
  store i32* %154, i32** %5, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @dnssd_service_free(i32* %157)
  br label %149

159:                                              ; preds = %149
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @hashmap_free(i32 %162)
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = call i32 @dns_trust_anchor_flush(i32* %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %168 = call i32 @manager_etc_hosts_flush(%struct.TYPE_11__* %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = call %struct.TYPE_11__* @mfree(%struct.TYPE_11__* %169)
  store %struct.TYPE_11__* %170, %struct.TYPE_11__** %2, align 8
  br label %171

171:                                              ; preds = %159, %8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %172
}

declare dso_local i32 @dns_server_unlink_all(i32) #1

declare dso_local i32 @dns_search_domain_unlink_all(i32) #1

declare dso_local i8* @hashmap_first(i32) #1

declare dso_local i32 @link_free(i32*) #1

declare dso_local i32 @dns_query_free(i64) #1

declare dso_local i32 @dns_scope_free(i32) #1

declare dso_local i32 @dns_stream_unref(i64) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @sd_network_monitor_unref(i32) #1

declare dso_local i32 @sd_netlink_unref(i32) #1

declare dso_local i32 @manager_llmnr_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @manager_mdns_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @manager_dns_stub_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @bus_verify_polkit_async_registry_free(i32) #1

declare dso_local i32 @sd_bus_flush_close_unref(i32) #1

declare dso_local i32 @sd_event_unref(i32) #1

declare dso_local i32 @dns_resource_key_unref(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @dnssd_service_free(i32*) #1

declare dso_local i32 @dns_trust_anchor_flush(i32*) #1

declare dso_local i32 @manager_etc_hosts_flush(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @mfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
