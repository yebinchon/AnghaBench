; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_show_background.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_show_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i64, i32 }

@VC_IMAGE_RGBA32 = common dso_local global i32 0, align 4
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@VC_IMAGE_ROT0 = common dso_local global i32 0, align 4
@DISPMANX_NO_HANDLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @show_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_background(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  store i32 -16777216, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @VC_IMAGE_RGBA32, align 4
  %23 = call i8* @vc_dispmanx_resource_create(i32 %22, i32 1, i32 1, i32* %6)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = call i32 @vc_dispmanx_rect_set(i32* %8, i32 0, i32 0, i32 1, i32 1)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @VC_IMAGE_RGBA32, align 4
  %31 = call i32 @vc_dispmanx_resource_write_data(i8* %29, i32 %30, i32 4, i32* %7, i32* %8)
  %32 = call i32 @vc_dispmanx_rect_set(i32* %9, i32 0, i32 0, i32 65536, i32 65536)
  %33 = call i32 @vc_dispmanx_rect_set(i32* %8, i32 0, i32 0, i32 0, i32 0)
  %34 = call i32 @vc_dispmanx_update_start(i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %47 = load i32, i32* @VC_IMAGE_ROT0, align 4
  %48 = call i8* @vc_dispmanx_element_add(i32 %35, i32 %38, i64 %42, i32* %8, i8* %45, i32* %9, i32 %46, i32* null, i32* null, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @vc_dispmanx_update_submit_sync(i32 %51)
  br label %81

53:                                               ; preds = %16, %2
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = call i32 @vc_dispmanx_update_start(i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @vc_dispmanx_element_remove(i32 %63, i8* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @vc_dispmanx_resource_delete(i8* %70)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @vc_dispmanx_update_submit_sync(i32 %72)
  %74 = load i8*, i8** @DISPMANX_NO_HANDLE, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @DISPMANX_NO_HANDLE, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %61, %56, %53
  br label %81

81:                                               ; preds = %80, %21
  ret void
}

declare dso_local i8* @vc_dispmanx_resource_create(i32, i32, i32, i32*) #1

declare dso_local i32 @vc_dispmanx_rect_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_resource_write_data(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @vc_dispmanx_update_start(i32) #1

declare dso_local i8* @vc_dispmanx_element_add(i32, i32, i64, i32*, i8*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i32) #1

declare dso_local i32 @vc_dispmanx_element_remove(i32, i8*) #1

declare dso_local i32 @vc_dispmanx_resource_delete(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
