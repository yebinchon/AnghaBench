; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_write_buffer_dts.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_write_buffer_dts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32* }
%struct.TYPE_23__ = type { i32, i32, i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i64 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@SPDIF_ERROR = common dso_local global i32 0, align 4
@IEC61937_DTS1 = common dso_local global i32 0, align 4
@IEC61937_DTS2 = common dso_local global i32 0, align 4
@IEC61937_DTS3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Frame size %d not supported\00", align 1
@DTS_SYNC_CORE_14BITS_BE = common dso_local global i64 0, align 8
@DTS_SYNC_CORE_14BITS_LE = common dso_local global i64 0, align 8
@VLC_CODEC_SPDIFL = common dso_local global i64 0, align 8
@SPDIF_HEADER_SIZE = common dso_local global i32 0, align 4
@SPDIF_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_23__*)* @write_buffer_dts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_buffer_dts(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @vlc_dts_header_Parse(%struct.TYPE_20__* %8, i32 %16, i32 %19)
  %21 = load i64, i64* @VLC_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %177

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %43 [
    i32 512, label %37
    i32 1024, label %39
    i32 2048, label %41
  ]

37:                                               ; preds = %25
  %38 = load i32, i32* @IEC61937_DTS1, align 4
  store i32 %38, i32* %6, align 4
  br label %50

39:                                               ; preds = %25
  %40 = load i32, i32* @IEC61937_DTS2, align 4
  store i32 %40, i32* %6, align 4
  br label %50

41:                                               ; preds = %25
  %42 = load i32, i32* @IEC61937_DTS3, align 4
  store i32 %42, i32* %6, align 4
  br label %50

43:                                               ; preds = %25
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @msg_Err(%struct.TYPE_21__* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %49, i32* %3, align 4
  br label %177

50:                                               ; preds = %41, %39, %37
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DTS_SYNC_CORE_14BITS_BE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DTS_SYNC_CORE_14BITS_LE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %141

60:                                               ; preds = %55, %50
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 4
  %68 = icmp sgt i32 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %177

71:                                               ; preds = %60
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 4
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @write_init(%struct.TYPE_21__* %72, %struct.TYPE_23__* %73, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %177

85:                                               ; preds = %71
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32* %94, i32** %9, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %100, %103
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @VLC_CODEC_SPDIFL, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 @vlc_dts_header_Convert14b16b(i32* %95, i64 %104, i32 %107, i32 %110, i32 %118)
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %85
  %123 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %123, i32* %3, align 4
  br label %177

124:                                              ; preds = %85
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %132
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  br label %172

141:                                              ; preds = %55
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SPDIF_HEADER_SIZE, align 4
  %146 = add nsw i32 %144, %145
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 4
  %151 = icmp sgt i32 %146, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %153, i32* %3, align 4
  br label %177

154:                                              ; preds = %141
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 4
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @write_init(%struct.TYPE_21__* %155, %struct.TYPE_23__* %156, i32 %160, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %167, i32* %3, align 4
  br label %177

168:                                              ; preds = %154
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %171 = call i32 @write_buffer(%struct.TYPE_21__* %169, %struct.TYPE_23__* %170)
  br label %172

172:                                              ; preds = %168, %124
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @write_finalize(%struct.TYPE_21__* %173, i32 %174, i32 8)
  %176 = load i32, i32* @SPDIF_SUCCESS, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %172, %166, %152, %122, %83, %69, %43, %23
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i64 @vlc_dts_header_Parse(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i64 @write_init(%struct.TYPE_21__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @vlc_dts_header_Convert14b16b(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @write_buffer(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @write_finalize(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
