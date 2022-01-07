; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__*, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__, i32*, %struct.TYPE_23__, i32*, i32*, i64, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i64, i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i8, i32, float }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__, %struct.TYPE_22__, i32* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"MythTVVideo\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"NuppelVideo\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unsupported 'D' frame (c=%c)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"stream is not seekable, skipping seektable\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Seektable is broken, seek won't be accurate\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"VLC doesn't support NUV without extended chunks (please upload samples)\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MPGA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"text not yet supported (upload samples)\00", align 1
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"cannot load Nuv file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_25__, align 4
  %8 = alloca %struct.TYPE_26__, align 8
  %9 = alloca %struct.TYPE_26__, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %11, %struct.TYPE_27__** %4, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @vlc_stream_Peek(i32 %14, i8** %6, i32 12)
  %16 = icmp ne i32 %15, 12
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %1
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %318

27:                                               ; preds = %21, %17
  %28 = call i8* @malloc(i32 120)
  %29 = bitcast i8* %28 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %5, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %31 = icmp eq %struct.TYPE_28__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %318

34:                                               ; preds = %27
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %36 = call i32 @memset(%struct.TYPE_28__* %35, i32 0, i32 120)
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 9
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 7
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 10
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 2
  store i32 -1, i32* %48, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 3
  store i32 -1, i32* %50, align 4
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 12
  %53 = call i32 @demux_IndexInit(i32* %52)
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  store %struct.TYPE_28__* %54, %struct.TYPE_28__** %56, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 11
  %63 = call i32 @vlc_stream_Control(i32 %59, i32 %60, i64* %62)
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 6
  %67 = call i64 @HeaderLoad(%struct.TYPE_27__* %64, %struct.TYPE_21__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %34
  br label %310

70:                                               ; preds = %34
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %72 = call i64 @FrameHeaderLoad(%struct.TYPE_27__* %71, %struct.TYPE_25__* %7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %76 = load i8, i8* %75, align 4
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 68
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %70
  br label %310

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %140

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 2
  %86 = load float, float* %85, align 4
  %87 = fcmp oeq float %86, 7.000000e+01
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 2
  %90 = load float, float* %89, align 4
  %91 = fcmp oeq float %90, 8.200000e+01
  br i1 %91, label %92, label %122

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @malloc(i32 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 10
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 10
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %120, label %107

107:                                              ; preds = %92
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 10
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @vlc_stream_Read(i32 %110, i32* %113, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %107, %92
  br label %310

121:                                              ; preds = %107
  br label %139

122:                                              ; preds = %88
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 2
  %125 = load float, float* %124, align 4
  %126 = fpext float %125 to double
  %127 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Warn(%struct.TYPE_27__* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), double %126)
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @vlc_stream_Read(i32 %130, i32* null, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %122
  br label %310

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %138, %121
  br label %140

140:                                              ; preds = %139, %80
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @vlc_stream_Peek(i32 %143, i8** %6, i32 1)
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %310

147:                                              ; preds = %140
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 88
  br i1 %152, label %153, label %190

153:                                              ; preds = %147
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %155 = call i64 @FrameHeaderLoad(%struct.TYPE_27__* %154, %struct.TYPE_25__* %7)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %310

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 512
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %310

163:                                              ; preds = %158
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 8
  %167 = call i64 @ExtendedHeaderLoad(%struct.TYPE_27__* %164, %struct.TYPE_23__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %310

170:                                              ; preds = %163
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 11
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %177 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Warn(%struct.TYPE_27__* %176, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %189

178:                                              ; preds = %170
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %181 = call i64 @SeekTableLoad(%struct.TYPE_27__* %179, %struct.TYPE_28__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %187 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Warn(%struct.TYPE_27__* %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %188

188:                                              ; preds = %183, %178
  br label %189

189:                                              ; preds = %188, %175
  br label %193

190:                                              ; preds = %147
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %192 = call i32 @msg_Err(%struct.TYPE_27__* %191, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  br label %310

193:                                              ; preds = %189
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %258

199:                                              ; preds = %193
  %200 = load i32, i32* @VIDEO_ES, align 4
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @es_format_Init(%struct.TYPE_26__* %8, i32 %200, i32 %204)
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  store i32 %230, i32* %231, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 10
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 3
  store i32* %234, i32** %235, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %239, %242
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 4
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @es_out_Add(i32 %253, %struct.TYPE_26__* %8)
  %255 = bitcast i8* %254 to i32*
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 9
  store i32* %255, i32** %257, align 8
  br label %258

258:                                              ; preds = %199, %193
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %287

264:                                              ; preds = %258
  %265 = load i32, i32* @AUDIO_ES, align 4
  %266 = load i32, i32* @VLC_CODEC_MPGA, align 4
  %267 = call i32 @es_format_Init(%struct.TYPE_26__* %9, i32 %265, i32 %266)
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 4
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = call i8* @es_out_Add(i32 %282, %struct.TYPE_26__* %9)
  %284 = bitcast i8* %283 to i32*
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 7
  store i32* %284, i32** %286, align 8
  br label %287

287:                                              ; preds = %264, %258
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 6
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %287
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %295 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Warn(%struct.TYPE_27__* %294, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %296

296:                                              ; preds = %293, %287
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @vlc_stream_Tell(i32 %299)
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 5
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @Demux, align 4
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 2
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* @Control, align 4
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %307, i32 0, i32 1
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %309, i32* %2, align 4
  br label %318

310:                                              ; preds = %190, %169, %162, %157, %146, %137, %120, %79, %69
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %312 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Warn(%struct.TYPE_27__* %311, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %313 = load i32*, i32** %3, align 8
  %314 = call i32 @Close(i32* %313)
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 0
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %316, align 8
  %317 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %310, %296, %32, %25
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local i32 @vlc_stream_Peek(i32, i8**, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @demux_IndexInit(i32*) #1

declare dso_local i32 @vlc_stream_Control(i32, i32, i64*) #1

declare dso_local i64 @HeaderLoad(%struct.TYPE_27__*, %struct.TYPE_21__*) #1

declare dso_local i64 @FrameHeaderLoad(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_27__*, i8*, ...) #1

declare dso_local i64 @ExtendedHeaderLoad(%struct.TYPE_27__*, %struct.TYPE_23__*) #1

declare dso_local i64 @SeekTableLoad(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i8* @es_out_Add(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @vlc_stream_Tell(i32) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
