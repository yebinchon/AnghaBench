; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_dmx_region_update.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_dmx_region_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_region_t = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@VC_IMAGE_RGBA32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmx_region_t*, i32, %struct.TYPE_5__*)* @dmx_region_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmx_region_update(%struct.dmx_region_t* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.dmx_region_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.dmx_region_t* %0, %struct.dmx_region_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %7 = load %struct.dmx_region_t*, %struct.dmx_region_t** %4, align 8
  %8 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VC_IMAGE_RGBA32, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dmx_region_t*, %struct.dmx_region_t** %4, align 8
  %24 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %23, i32 0, i32 3
  %25 = call i32 @vc_dispmanx_resource_write_data(i32 %9, i32 %10, i32 %16, i32 %22, i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.dmx_region_t*, %struct.dmx_region_t** %4, align 8
  %28 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dmx_region_t*, %struct.dmx_region_t** %4, align 8
  %31 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vc_dispmanx_element_change_source(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = load %struct.dmx_region_t*, %struct.dmx_region_t** %4, align 8
  %36 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %35, i32 0, i32 0
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %36, align 8
  ret void
}

declare dso_local i32 @vc_dispmanx_resource_write_data(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vc_dispmanx_element_change_source(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
