; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_deinterlace.c_Deinterlace.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_deinterlace.c_Deinterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_21__*, i32*, i32 }
%struct.TYPE_20__ = type { i64, i32 }

@VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD = common dso_local global i8* null, align 8
@VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*, %struct.TYPE_21__*)* @Deinterlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @Deinterlace(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %6, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %8, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %27 = icmp eq %struct.TYPE_20__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %3, align 8
  br label %163

33:                                               ; preds = %2
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %3, align 8
  br label %163

41:                                               ; preds = %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 6
  %44 = call %struct.TYPE_21__* @picture_NewFromFormat(i32* %43)
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %9, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %46 = icmp eq %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %3, align 8
  br label %163

49:                                               ; preds = %41
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = call %struct.TYPE_20__* @vlc_vdp_video_copy(%struct.TYPE_20__* %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %10, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %53 = icmp eq %struct.TYPE_20__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %59 = call i32 @picture_Release(%struct.TYPE_21__* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %3, align 8
  br label %163

61:                                               ; preds = %49
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = call i32 @picture_CopyProperties(%struct.TYPE_21__* %62, %struct.TYPE_21__* %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 5
  store i32* %66, i32** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @VLC_TICK_INVALID, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %61
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 3, %75
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sdiv i32 %78, 2
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %108

82:                                               ; preds = %61
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @vlc_tick_from_samples(i32 %97, i64 %102)
  %104 = add nsw i32 %92, %103
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %89, %82
  br label %108

108:                                              ; preds = %107, %72
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = icmp eq %struct.TYPE_21__* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 4
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %108
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134, %108
  %140 = load i8*, i8** @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD, align 8
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i8*, i8** @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %157

148:                                              ; preds = %134
  %149 = load i8*, i8** @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i8*, i8** @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %148, %139
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 3
  store i32 1, i32* %159, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 3
  store i32 1, i32* %161, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %162, %struct.TYPE_21__** %3, align 8
  br label %163

163:                                              ; preds = %157, %57, %47, %39, %31
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %164
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_21__* @picture_NewFromFormat(i32*) #1

declare dso_local %struct.TYPE_20__* @vlc_vdp_video_copy(%struct.TYPE_20__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_21__*) #1

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @vlc_tick_from_samples(i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
