; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@addresses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @link_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @link_free(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i32 @link_ntp_settings_clear(%struct.TYPE_11__* %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = call i32 @link_dns_settings_clear(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 19
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @set_free_with_destructor(i8* %12, i32 (i32*)* @route_free)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 19
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 18
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @set_free_with_destructor(i8* %18, i32 (i32*)* @route_free)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 18
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 17
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @set_free_with_destructor(i8* %24, i32 (i32*)* @nexthop_free)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 17
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 16
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @set_free_with_destructor(i8* %30, i32 (i32*)* @nexthop_free)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 16
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 15
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @set_free_with_destructor(i8* %36, i32 (i32*)* @neighbor_free)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 15
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 14
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @set_free_with_destructor(i8* %42, i32 (i32*)* @neighbor_free)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 14
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 13
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @set_free_with_destructor(i8* %48, i32 (i32*)* @address_free)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 13
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 12
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @set_free_with_destructor(i8* %54, i32 (i32*)* @address_free)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 12
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %63, %1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 11
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %3, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, i32* @addresses, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 11
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @LIST_REMOVE(i32 %64, i32* %67, i32* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @address_free(i32* %70)
  br label %58

72:                                               ; preds = %58
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = call i32 @link_lldp_emit_stop(%struct.TYPE_11__* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = call i32 @link_free_engines(%struct.TYPE_11__* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @free(i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @free(i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @free(i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @free(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @free(i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @unlink(i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @free(i32 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sd_device_unref(i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @hashmap_free(i32 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @hashmap_free(i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @set_free_with_destructor(i8* %119, i32 (i32*)* @link_unref)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @network_unref(i32 %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = call %struct.TYPE_11__* @mfree(%struct.TYPE_11__* %125)
  ret %struct.TYPE_11__* %126
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @link_ntp_settings_clear(%struct.TYPE_11__*) #1

declare dso_local i32 @link_dns_settings_clear(%struct.TYPE_11__*) #1

declare dso_local i8* @set_free_with_destructor(i8*, i32 (i32*)*) #1

declare dso_local i32 @route_free(i32*) #1

declare dso_local i32 @nexthop_free(i32*) #1

declare dso_local i32 @neighbor_free(i32*) #1

declare dso_local i32 @address_free(i32*) #1

declare dso_local i32 @LIST_REMOVE(i32, i32*, i32*) #1

declare dso_local i32 @link_lldp_emit_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @link_free_engines(%struct.TYPE_11__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @sd_device_unref(i32) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @link_unref(i32*) #1

declare dso_local i32 @network_unref(i32) #1

declare dso_local %struct.TYPE_11__* @mfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
