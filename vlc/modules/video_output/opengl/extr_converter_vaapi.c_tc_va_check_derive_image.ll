; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vaapi.c_tc_va_check_derive_image.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vaapi.c_tc_va_check_derive_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.priv*, i32 }
%struct.priv = type { i32 }
%struct.TYPE_6__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VA_INVALID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @tc_va_check_derive_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_va_check_derive_image(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @VLC_OBJECT(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.priv*, %struct.priv** %17, align 8
  store %struct.priv* %18, %struct.priv** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.priv*, %struct.priv** %7, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32* @vlc_vaapi_PoolNew(i32* %19, i32* %20, i32 %23, i32 1, i32** %8, i32* %25, i32 1)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %33 = load i32, i32* @VA_INVALID_ID, align 4
  store i32 %33, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.priv*, %struct.priv** %7, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vlc_vaapi_DeriveImage(i32* %34, i32 %37, i32 %40, %struct.TYPE_6__* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @picture_pool_Release(i32* %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %31, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32* @VLC_OBJECT(i32) #1

declare dso_local i32* @vlc_vaapi_PoolNew(i32*, i32*, i32, i32, i32**, i32*, i32) #1

declare dso_local i32 @vlc_vaapi_DeriveImage(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @picture_pool_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
