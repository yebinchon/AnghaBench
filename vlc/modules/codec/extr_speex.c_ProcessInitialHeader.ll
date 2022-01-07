; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_ProcessInitialHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_ProcessInitialHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i8*, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32, i64, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot read Speex header\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SPEEX_NB_MODES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"mode number %d does not (yet/any longer) exist in this version of libspeex.\00", align 1
@speex_mode_list = common dso_local global %struct.TYPE_22__** null, align 8
@.str.2 = private unnamed_addr constant [95 x i8] c"this file was encoded with Speex bit-stream version %d which is not supported by this decoder.\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"file encoded with a newer version of Speex.\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"file encoded with an older version of Speex.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Speex %d Hz audio using %s mode %s%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" (mono\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" (stereo\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c", VBR)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"decoder initialization failed\00", align 1
@SPEEX_STEREO_STATE_INIT = common dso_local global i32 0, align 4
@SPEEX_INBAND_STEREO = common dso_local global i32 0, align 4
@speex_std_stereo_request_handler = common dso_local global i32 0, align 4
@SPEEX_SET_HANDLER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"invalid number of channels (not between 1 and 5): %i\00", align 1
@vlc_chan_maps = common dso_local global i32* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @ProcessInitialHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessInitialHeader(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_23__* @speex_packet_to_header(i8* %18, i32 %21)
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %8, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 4
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %24, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = icmp ne %struct.TYPE_23__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = call i32 (%struct.TYPE_20__*, i8*, ...) @msg_Err(%struct.TYPE_20__* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %3, align 4
  br label %201

31:                                               ; preds = %2
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SPEEX_NB_MODES, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %31
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (%struct.TYPE_20__*, i8*, ...) @msg_Err(%struct.TYPE_20__* %43, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %3, align 4
  br label %201

49:                                               ; preds = %37
  %50 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @speex_mode_list, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %50, i64 %53
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %9, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %57 = icmp eq %struct.TYPE_22__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %3, align 4
  br label %201

60:                                               ; preds = %49
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.TYPE_20__*, i8*, ...) @msg_Err(%struct.TYPE_20__* %66, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %71, i32* %3, align 4
  br label %201

72:                                               ; preds = %60
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = call i32 (%struct.TYPE_20__*, i8*, ...) @msg_Err(%struct.TYPE_20__* %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %83, i32* %3, align 4
  br label %201

84:                                               ; preds = %72
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = call i32 (%struct.TYPE_20__*, i8*, ...) @msg_Err(%struct.TYPE_20__* %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %95, i32* %3, align 4
  br label %201

96:                                               ; preds = %84
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %116 = call i32 @msg_Dbg(%struct.TYPE_20__* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 %103, i8* %109, i8* %115)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 3
  %119 = call i32 @speex_bits_init(i32* %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %121 = call i8* @speex_decoder_init(%struct.TYPE_22__* %120)
  store i8* %121, i8** %7, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %96
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %128 = call i32 (%struct.TYPE_20__*, i8*, ...) @msg_Err(%struct.TYPE_20__* %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %129 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %129, i32* %3, align 4
  br label %201

130:                                              ; preds = %96
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load i32, i32* @SPEEX_STEREO_STATE_INIT, align 4
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @SPEEX_INBAND_STEREO, align 4
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* @speex_std_stereo_request_handler, align 4
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store i32 %142, i32* %143, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i32* %145, i32** %146, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* @SPEEX_SET_HANDLER, align 4
  %149 = call i32 @speex_decoder_ctl(i8* %147, i32 %148, %struct.TYPE_24__* %10)
  br label %150

150:                                              ; preds = %135, %130
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 5
  br i1 %159, label %160, label %167

160:                                              ; preds = %155, %150
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (%struct.TYPE_20__*, i8*, ...) @msg_Err(%struct.TYPE_20__* %161, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %166, i32* %3, align 4
  br label %201

167:                                              ; preds = %155
  %168 = load i32*, i32** @vlc_chan_maps, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  store i64 %182, i64* %186, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  store i32 %189, i32* %193, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @date_Init(i32* %195, i32 %198, i32 1)
  %200 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %167, %160, %126, %92, %80, %65, %58, %42, %27
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.TYPE_23__* @speex_packet_to_header(i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_20__*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @speex_bits_init(i32*) #1

declare dso_local i8* @speex_decoder_init(%struct.TYPE_22__*) #1

declare dso_local i32 @speex_decoder_ctl(i8*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
