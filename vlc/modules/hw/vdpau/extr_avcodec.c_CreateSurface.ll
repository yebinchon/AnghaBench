; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_avcodec.c_CreateSurface.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_avcodec.c_CreateSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.video_context_private = type { i32 }

@VDP_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s creation failure: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"video surface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @CreateSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateSurface(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.video_context_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.video_context_private* @GetVDPAUContextPrivate(i32 %14)
  store %struct.video_context_private* %15, %struct.video_context_private** %5, align 8
  %16 = load %struct.video_context_private*, %struct.video_context_private** %5, align 8
  %17 = getelementptr inbounds %struct.video_context_private, %struct.video_context_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @vdp_video_surface_create(i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32* %6)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @VDP_STATUS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load %struct.video_context_private*, %struct.video_context_private** %5, align 8
  %38 = getelementptr inbounds %struct.video_context_private, %struct.video_context_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @vdp_get_error_string(i32 %39, i64 %40)
  %42 = call i32 @msg_Err(%struct.TYPE_5__* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32* null, i32** %2, align 8
  br label %62

43:                                               ; preds = %1
  %44 = load %struct.video_context_private*, %struct.video_context_private** %5, align 8
  %45 = getelementptr inbounds %struct.video_context_private, %struct.video_context_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32* @vlc_vdp_video_create(i32 %46, i32 %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.video_context_private*, %struct.video_context_private** %5, align 8
  %56 = getelementptr inbounds %struct.video_context_private, %struct.video_context_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @vdp_video_surface_destroy(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %43
  %61 = load i32*, i32** %8, align 8
  store i32* %61, i32** %2, align 8
  br label %62

62:                                               ; preds = %60, %35
  %63 = load i32*, i32** %2, align 8
  ret i32* %63
}

declare dso_local %struct.video_context_private* @GetVDPAUContextPrivate(i32) #1

declare dso_local i64 @vdp_video_surface_create(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i8*, i32) #1

declare dso_local i32 @vdp_get_error_string(i32, i64) #1

declare dso_local i32* @vlc_vdp_video_create(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vdp_video_surface_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
