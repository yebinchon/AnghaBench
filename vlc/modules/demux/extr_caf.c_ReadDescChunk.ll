; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_caf.c_ReadDescChunk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_caf.c_ReadDescChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_CODEC_DVD_LPCM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"Absurd LPCM parameters (frames_per_packet: %u, channels_per_frame: %u).\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_F32B = common dso_local global i64 0, align 8
@VLC_CODEC_F32L = common dso_local global i64 0, align 8
@VLC_CODEC_F64B = common dso_local global i64 0, align 8
@VLC_CODEC_F64L = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [107 x i8] c"The only documented format flag for aac is 2 (kMP4Audio_AAC_LC_ObjectType), but is %i. Continuing anyways.\00", align 1
@VLC_CODEC_MP4A = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"could not determine codec\00", align 1
@UINT_MAX = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Sample rate must be non-zero\00", align 1
@VLC_CODEC_OPUS = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ReadDescChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDescChunk(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @vlc_stream_Peek(i32 %23, i32** %5, i32 32)
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %2, align 4
  br label %256

28:                                               ; preds = %1
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = call i64 @ReadFOURCC(i32* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 12
  %34 = call i32 @GetDWBE(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 28
  %37 = call i32 @GetDWBE(i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 16
  %40 = call i32 @GetDWBE(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 20
  %43 = call i32 @GetDWBE(i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 24
  %46 = call i32 @GetDWBE(i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @VLC_CODEC_DVD_LPCM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %136

50:                                               ; preds = %28
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %2, align 4
  br label %256

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sdiv i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = sdiv i32 %65, %66
  %68 = mul nsw i32 %67, 8
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 2
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i64 @VLC_FOURCC(i8 signext 116, i8 signext 119, i8 signext 111, i8 signext 115)
  br label %89

87:                                               ; preds = %82
  %88 = call i64 @VLC_FOURCC(i8 signext 115, i8 signext 111, i8 signext 119, i8 signext 116)
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  store i64 %90, i64* %15, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* @AUDIO_ES, align 4
  %94 = load i64, i64* %15, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @vlc_fourcc_GetCodecAudio(i64 %94, i32 %95)
  %97 = call i32 @es_format_Init(%struct.TYPE_11__* %92, i32 %93, i32 %96)
  br label %135

98:                                               ; preds = %62
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i64, i64* @VLC_CODEC_F32B, align 8
  br label %108

106:                                              ; preds = %101
  %107 = load i64, i64* @VLC_CODEC_F32L, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i64 [ %105, %104 ], [ %107, %106 ]
  store i64 %109, i64* %15, align 8
  br label %123

110:                                              ; preds = %98
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 64
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* @VLC_CODEC_F64B, align 8
  br label %120

118:                                              ; preds = %113
  %119 = load i64, i64* @VLC_CODEC_F64L, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i64 [ %117, %116 ], [ %119, %118 ]
  store i64 %121, i64* %15, align 8
  br label %122

122:                                              ; preds = %120, %110
  br label %123

123:                                              ; preds = %122, %108
  %124 = load i64, i64* %15, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* @AUDIO_ES, align 4
  %130 = load i64, i64* %15, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @vlc_fourcc_GetCodecAudio(i64 %130, i32 %131)
  %133 = call i32 @es_format_Init(%struct.TYPE_11__* %128, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %126, %123
  br label %135

135:                                              ; preds = %134, %89
  br label %162

136:                                              ; preds = %28
  %137 = load i64, i64* %6, align 8
  %138 = call i64 @VLC_FOURCC(i8 signext 97, i8 signext 97, i8 signext 99, i8 signext 32)
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  store i32 2, i32* %16, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 2
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @msg_Warn(%struct.TYPE_9__* %144, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32, i32* @AUDIO_ES, align 4
  %151 = load i64, i64* @VLC_CODEC_MP4A, align 8
  %152 = call i32 @vlc_fourcc_GetCodecAudio(i64 %151, i32 0)
  %153 = call i32 @es_format_Init(%struct.TYPE_11__* %149, i32 %150, i32 %152)
  br label %161

154:                                              ; preds = %136
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i32, i32* @AUDIO_ES, align 4
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @vlc_fourcc_GetCodecAudio(i64 %158, i32 0)
  %160 = call i32 @es_format_Init(%struct.TYPE_11__* %156, i32 %157, i32 %159)
  br label %161

161:                                              ; preds = %154, %147
  br label %162

162:                                              ; preds = %161, %135
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %162
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %171 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %171, i32* %2, align 4
  br label %256

172:                                              ; preds = %162
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @GetDBLBE(i32* %173)
  %175 = call double @round(i32 %174)
  store double %175, double* %17, align 8
  %176 = load double, double* %17, align 8
  %177 = fcmp ole double %176, 0.000000e+00
  br i1 %177, label %182, label %178

178:                                              ; preds = %172
  %179 = load double, double* %17, align 8
  %180 = load double, double* @UINT_MAX, align 8
  %181 = fcmp ogt double %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178, %172
  %183 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %183, i32* %2, align 4
  br label %256

184:                                              ; preds = %178
  %185 = load double, double* %17, align 8
  %186 = call i64 @lround(double %185) #3
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 %187, i32* %191, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %184
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %201, i32* %2, align 4
  br label %256

202:                                              ; preds = %184
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  store i32 %203, i32* %207, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  store i32 %208, i32* %212, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 3
  store i32 %213, i32* %217, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 4
  store i32 %218, i32* %222, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 5
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = mul i32 %228, %233
  %235 = load i32, i32* %11, align 4
  %236 = mul i32 %234, %235
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  store i32 %236, i32* %239, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @VLC_CODEC_OPUS, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %202
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store i32 1, i32* %248, align 8
  br label %254

249:                                              ; preds = %202
  %250 = load double, double* @UINT_MAX, align 8
  %251 = fptosi double %250 to i32
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %249, %246
  %255 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %254, %198, %182, %168, %56, %26
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @ReadFOURCC(i32*) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @vlc_fourcc_GetCodecAudio(i64, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local double @round(i32) #1

declare dso_local i32 @GetDBLBE(i32*) #1

; Function Attrs: nounwind
declare dso_local i64 @lround(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
