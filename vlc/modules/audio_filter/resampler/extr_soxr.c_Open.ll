; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/resampler/extr_soxr.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/resampler/extr_soxr.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { double, i8*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, double, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"soxr-resampler-quality\00", align 1
@MAX_SOXR_QUALITY = common dso_local global i64 0, align 8
@soxr_resampler_quality_list = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"soxr_create failed: %s\00", align 1
@SOXR_LQ = common dso_local global i64 0, align 8
@SOXR_VR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [91 x i8] c"Using SoX Resampler with '%s' engine and '%s' quality to convert %4.4s/%dHz to %4.4s/%dHz.\00", align 1
@soxr_resampler_quality_vlctext = common dso_local global i32* null, align 8
@Resample = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@Drain = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %3, align 4
  br label %195

32:                                               ; preds = %2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SoXR_GetFormat(i32 %37, i32* %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SoXR_GetFormat(i32 %45, i32* %8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40, %32
  %49 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %49, i32* %3, align 4
  br label %195

50:                                               ; preds = %40
  %51 = call %struct.TYPE_16__* @calloc(i32 1, i32 24)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %9, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = icmp eq %struct.TYPE_16__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %58, i32* %3, align 4
  br label %195

59:                                               ; preds = %50
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 @var_InheritInteger(i32* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ult i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i64 0, i64* %10, align 8
  br label %72

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @MAX_SOXR_QUALITY, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* @MAX_SOXR_QUALITY, align 8
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %64
  %73 = load i64*, i64** @soxr_resampler_quality_list, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %12, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = fdiv double %86, %92
  store double %93, double* %13, align 8
  %94 = load double, double* %13, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  store double %94, double* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @soxr_io_spec(i32 %97, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @soxr_quality_spec(i64 %100, i32 0)
  store i32 %101, i32* %16, align 4
  %102 = load double, double* %13, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i8* @soxr_create(i32 1, double %102, i32 %103, i64* %14, i32* %15, i32* %16, i32* null)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %72
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @soxr_strerror(i64 %111)
  %113 = call i32 @msg_Err(%struct.TYPE_15__* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = call i32 @free(%struct.TYPE_16__* %114)
  %116 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %116, i32* %3, align 4
  br label %195

117:                                              ; preds = %72
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %117
  %121 = load i64, i64* @SOXR_LQ, align 8
  %122 = load i32, i32* @SOXR_VR, align 4
  %123 = call i32 @soxr_quality_spec(i64 %121, i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = load double, double* %13, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i8* @soxr_create(i32 1, double %124, i32 %125, i64* %14, i32* %15, i32* %16, i32* null)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %120
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @soxr_strerror(i64 %133)
  %135 = call i32 @msg_Err(%struct.TYPE_15__* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @soxr_delete(i8* %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %141 = call i32 @free(%struct.TYPE_16__* %140)
  %142 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %142, i32* %3, align 4
  br label %195

143:                                              ; preds = %120
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load double, double* %13, align 8
  %148 = fdiv double 1.000000e+00, %147
  %149 = fptosi double %148 to i32
  %150 = call i32 @soxr_set_io_ratio(i8* %146, i32 %149, i32 0)
  br label %151

151:                                              ; preds = %143, %117
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @soxr_engine(i8* %155)
  %157 = load i32*, i32** @soxr_resampler_quality_vlctext, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = bitcast i32* %164 to i8*
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = bitcast i32* %174 to i8*
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load double, double* %179, align 8
  %181 = call i32 @msg_Dbg(%struct.TYPE_15__* %152, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i32 %156, i32 %160, i8* %165, i64 %170, i8* %175, double %180)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 3
  store %struct.TYPE_16__* %182, %struct.TYPE_16__** %184, align 8
  %185 = load i32, i32* @Resample, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @Flush, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @Drain, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %151, %131, %109, %57, %48, %30
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @SoXR_GetFormat(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @soxr_io_spec(i32, i32) #1

declare dso_local i32 @soxr_quality_spec(i64, i32) #1

declare dso_local i8* @soxr_create(i32, double, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @soxr_strerror(i64) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @soxr_delete(i8*) #1

declare dso_local i32 @soxr_set_io_ratio(i8*, i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*, i32, i32, i8*, i64, i8*, double) #1

declare dso_local i32 @soxr_engine(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
