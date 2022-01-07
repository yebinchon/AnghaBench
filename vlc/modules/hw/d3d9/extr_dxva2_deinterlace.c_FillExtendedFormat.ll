; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_FillExtendedFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_FillExtendedFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@COLOR_RANGE_FULL = common dso_local global i64 0, align 8
@DXVA2_NominalRange_0_255 = common dso_local global i32 0, align 4
@DXVA2_NominalRange_16_235 = common dso_local global i32 0, align 4
@DXVA2_VideoTransferMatrix_BT601 = common dso_local global i32 0, align 4
@DXVA2_VideoTransferMatrix_BT709 = common dso_local global i32 0, align 4
@DXVA2_VideoTransferMatrix_Unknown = common dso_local global i32 0, align 4
@DXVA2_VideoLighting_Unknown = common dso_local global i32 0, align 4
@DXVA2_VideoPrimaries_BT709 = common dso_local global i32 0, align 4
@DXVA2_VideoPrimaries_BT470_2_SysBG = common dso_local global i32 0, align 4
@DXVA2_VideoPrimaries_SMPTE170M = common dso_local global i32 0, align 4
@DXVA2_VideoPrimaries_Unknown = common dso_local global i32 0, align 4
@DXVA2_VideoTransFunc_709 = common dso_local global i32 0, align 4
@DXVA2_VideoTransFunc_240M = common dso_local global i32 0, align 4
@DXVA2_VideoTransFunc_sRGB = common dso_local global i32 0, align 4
@DXVA2_VideoTransFunc_Unknown = common dso_local global i32 0, align 4
@DXVA2_VideoLighting_dim = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @FillExtendedFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillExtendedFormat(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @COLOR_RANGE_FULL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DXVA2_NominalRange_0_255, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DXVA2_NominalRange_16_235, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %29 [
    i32 132, label %21
    i32 131, label %25
  ]

21:                                               ; preds = %14
  %22 = load i32, i32* @DXVA2_VideoTransferMatrix_BT601, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  br label %33

25:                                               ; preds = %14
  %26 = load i32, i32* @DXVA2_VideoTransferMatrix_BT709, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %14
  %30 = load i32, i32* @DXVA2_VideoTransferMatrix_Unknown, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25, %21
  %34 = load i32, i32* @DXVA2_VideoLighting_Unknown, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %52 [
    i32 134, label %40
    i32 135, label %44
    i32 133, label %48
  ]

40:                                               ; preds = %33
  %41 = load i32, i32* @DXVA2_VideoPrimaries_BT709, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %56

44:                                               ; preds = %33
  %45 = load i32, i32* @DXVA2_VideoPrimaries_BT470_2_SysBG, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %56

48:                                               ; preds = %33
  %49 = load i32, i32* @DXVA2_VideoPrimaries_SMPTE170M, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %33
  %53 = load i32, i32* @DXVA2_VideoPrimaries_Unknown, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48, %44, %40
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %72 [
    i32 130, label %60
    i32 129, label %64
    i32 128, label %68
  ]

60:                                               ; preds = %56
  %61 = load i32, i32* @DXVA2_VideoTransFunc_709, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %76

64:                                               ; preds = %56
  %65 = load i32, i32* @DXVA2_VideoTransFunc_240M, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %76

68:                                               ; preds = %56
  %69 = load i32, i32* @DXVA2_VideoTransFunc_sRGB, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %76

72:                                               ; preds = %56
  %73 = load i32, i32* @DXVA2_VideoTransFunc_Unknown, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %68, %64, %60
  %77 = load i32, i32* @DXVA2_VideoLighting_dim, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
