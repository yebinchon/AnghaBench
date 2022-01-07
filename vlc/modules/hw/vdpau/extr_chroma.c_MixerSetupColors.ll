; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_MixerSetupColors.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_MixerSetupColors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { float, float, float, float }
%struct.TYPE_16__ = type { float, float, float, float }

@VDP_COLOR_STANDARD_ITUR_BT_601 = common dso_local global i32 0, align 4
@VDP_COLOR_STANDARD_ITUR_BT_709 = common dso_local global i32 0, align 4
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"video %s failure: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"color space matrix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* @MixerSetupColors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MixerSetupColors(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32* noalias %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %8, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %21
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @VDP_COLOR_STANDARD_ITUR_BT_601, align 4
  store i32 %20, i32* %10, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load i32, i32* @VDP_COLOR_STANDARD_ITUR_BT_709, align 4
  store i32 %22, i32* %10, align 4
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 720
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @VDP_COLOR_STANDARD_ITUR_BT_709, align 4
  store i32 %31, i32* %10, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @VDP_COLOR_STANDARD_ITUR_BT_601, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %21, %19
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @vdp_generate_csc_matrix(i32 %38, %struct.TYPE_16__* %39, i32 %40, i32* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @VDP_STATUS_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @vdp_get_error_string(i32 %50, i64 %51)
  %53 = call i32 @msg_Err(%struct.TYPE_15__* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %98

55:                                               ; preds = %35
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = icmp ne %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store float %61, float* %64, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load float, float* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  store float %67, float* %70, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load float, float* %72, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  store float %73, float* %76, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = load float, float* %78, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store float %79, float* %82, align 4
  br label %96

83:                                               ; preds = %55
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store float 0.000000e+00, float* %86, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store float 1.000000e+00, float* %89, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  store float 1.000000e+00, float* %92, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  store float 0.000000e+00, float* %95, align 4
  br label %96

96:                                               ; preds = %83, %58
  %97 = load i64, i64* @VDP_STATUS_OK, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %96, %46
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @vdp_generate_csc_matrix(i32, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*, i8*, i32) #1

declare dso_local i32 @vdp_get_error_string(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
