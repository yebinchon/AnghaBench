; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_dmx_region_new.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_dmx_region_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_region_t = type { %struct.TYPE_16__*, i32*, %struct.TYPE_14__, %struct.TYPE_21__, i32, %struct.TYPE_21__, i32, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@VC_IMAGE_RGBA32 = common dso_local global i32 0, align 4
@DISPMANX_FLAGS_ALPHA_FROM_SOURCE = common dso_local global i32 0, align 4
@DISPMANX_FLAGS_ALPHA_MIX = common dso_local global i32 0, align 4
@DISPMANX_NO_HANDLE = common dso_local global i32 0, align 4
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@VC_IMAGE_ROT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmx_region_t* (%struct.TYPE_17__*, i32, %struct.TYPE_20__*)* @dmx_region_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmx_region_t* @dmx_region_new(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.dmx_region_t*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %7, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 4
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %8, align 8
  %16 = call %struct.dmx_region_t* @malloc(i32 72)
  store %struct.dmx_region_t* %16, %struct.dmx_region_t** %9, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %21 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %26 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %28 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %27, i32 0, i32 7
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vc_dispmanx_rect_set(%struct.TYPE_21__* %28, i32 0, i32 0, i32 %31, i32 %34)
  %36 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %37 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %36, i32 0, i32 3
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = call i32 @vc_dispmanx_rect_set(%struct.TYPE_21__* %37, i32 0, i32 0, i32 %41, i32 %45)
  %47 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %48 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %47, i32 0, i32 5
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vc_dispmanx_rect_set(%struct.TYPE_21__* %48, i32 %51, i32 %54, i32 %57, i32 %60)
  %62 = load i32, i32* @VC_IMAGE_RGBA32, align 4
  %63 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %64 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 16
  %76 = or i32 %66, %75
  %77 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %78 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %82 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %80, %85
  %87 = call i32 @vc_dispmanx_resource_create(i32 %62, i32 %76, i32 %86, i32* %10)
  %88 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %89 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %91 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @VC_IMAGE_RGBA32, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %111 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %110, i32 0, i32 7
  %112 = call i32 @vc_dispmanx_resource_write_data(i32 %92, i32 %93, i32 %101, i32 %109, %struct.TYPE_21__* %111)
  %113 = load i32, i32* @DISPMANX_FLAGS_ALPHA_FROM_SOURCE, align 4
  %114 = load i32, i32* @DISPMANX_FLAGS_ALPHA_MIX, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %117 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %123 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @DISPMANX_NO_HANDLE, align 4
  %126 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %127 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  %137 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %138 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %137, i32 0, i32 5
  %139 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %140 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %143 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %142, i32 0, i32 3
  %144 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %145 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %146 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %145, i32 0, i32 2
  %147 = load i32, i32* @VC_IMAGE_ROT0, align 4
  %148 = call i32 @vc_dispmanx_element_add(i32 %129, i32 %132, i64 %136, %struct.TYPE_21__* %138, i32 %141, %struct.TYPE_21__* %143, i32 %144, %struct.TYPE_14__* %146, i32* null, i32 %147)
  %149 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %150 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %152 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %151, i32 0, i32 1
  store i32* null, i32** %152, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  %157 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %156, i32 0, i32 0
  store %struct.TYPE_16__* %155, %struct.TYPE_16__** %157, align 8
  %158 = load %struct.dmx_region_t*, %struct.dmx_region_t** %9, align 8
  ret %struct.dmx_region_t* %158
}

declare dso_local %struct.dmx_region_t* @malloc(i32) #1

declare dso_local i32 @vc_dispmanx_rect_set(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_resource_create(i32, i32, i32, i32*) #1

declare dso_local i32 @vc_dispmanx_resource_write_data(i32, i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @vc_dispmanx_element_add(i32, i32, i64, %struct.TYPE_21__*, i32, %struct.TYPE_21__*, i32, %struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
