; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_VideoExport.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_VideoExport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@VLC_CODEC_I420 = common dso_local global i64 0, align 8
@VLC_CODEC_I422 = common dso_local global i64 0, align 8
@VLC_CODEC_I444 = common dso_local global i64 0, align 8
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"video %s %s failure: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"surface\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32)* @VideoExport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @VideoExport(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8*], align 16
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = call i32 @picture_CopyProperties(%struct.TYPE_16__* %26, %struct.TYPE_16__* %27)
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %58, %4
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %45
  store i8* %43, i8** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %35
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %29

61:                                               ; preds = %29
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @VLC_CODEC_I420, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VLC_CODEC_I422, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VLC_CODEC_I444, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %75, %68, %61
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 2
  store i8* %95, i8** %96, align 16
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 2
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %82, %75
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %8, align 4
  %117 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %119 = call i64 @vdp_video_surface_get_bits_y_cb_cr(i32 %114, i32 %115, i32 %116, i8** %117, i32* %118)
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @VDP_STATUS_OK, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %111
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @vdp_get_error_string(i32 %127, i64 %128)
  %130 = call i32 @msg_Err(i32* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %132 = call i32 @picture_Release(%struct.TYPE_16__* %131)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %133

133:                                              ; preds = %123, %111
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = call i32 @picture_Release(%struct.TYPE_16__* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %136
}

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i64 @vdp_video_surface_get_bits_y_cb_cr(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @vdp_get_error_string(i32, i64) #1

declare dso_local i32 @picture_Release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
